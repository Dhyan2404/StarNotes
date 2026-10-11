package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.model.types.BKFAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class BookmarksTables {
    private static final Logger LOG = LogManager.getLogger((Class<?>) BookmarksTables.class);
    private PlexOfCps descriptorsFirst = new PlexOfCps(4);
    private PlexOfCps descriptorsLim = new PlexOfCps(0);
    private List<String> names = new ArrayList(0);

    public BookmarksTables(byte[] bArr, FileInformationBlock fileInformationBlock) {
        read(bArr, fileInformationBlock);
    }

    private void read(byte[] bArr, FileInformationBlock fileInformationBlock) {
        int fcSttbfbkmk = fileInformationBlock.getFcSttbfbkmk();
        int lcbSttbfbkmk = fileInformationBlock.getLcbSttbfbkmk();
        if (fcSttbfbkmk != 0 && lcbSttbfbkmk != 0) {
            this.names = new ArrayList(Arrays.asList(SttbUtils.readSttbfBkmk(bArr, fcSttbfbkmk)));
        }
        int fcPlcfbkf = fileInformationBlock.getFcPlcfbkf();
        int lcbPlcfbkf = fileInformationBlock.getLcbPlcfbkf();
        if (fcPlcfbkf != 0 && lcbPlcfbkf != 0) {
            this.descriptorsFirst = new PlexOfCps(bArr, fcPlcfbkf, lcbPlcfbkf, BKFAbstractType.getSize());
        }
        int fcPlcfbkl = fileInformationBlock.getFcPlcfbkl();
        int lcbPlcfbkl = fileInformationBlock.getLcbPlcfbkl();
        if (fcPlcfbkl == 0 || lcbPlcfbkl == 0) {
            return;
        }
        this.descriptorsLim = new PlexOfCps(bArr, fcPlcfbkl, lcbPlcfbkl, 0);
    }

    public void afterDelete(int i, int i2) {
        int i3 = -i2;
        this.descriptorsFirst.adjust(i, i3);
        this.descriptorsLim.adjust(i, i3);
        int i4 = 0;
        while (i4 < this.descriptorsFirst.length()) {
            if (this.descriptorsFirst.getProperty(i4).getStart() == this.descriptorsLim.getProperty(i4).getStart()) {
                LOG.atDebug().log("Removing bookmark #{}...", Unbox.box(i4));
                remove(i4);
                i4--;
            }
            i4++;
        }
    }

    public void afterInsert(int i, int i2) {
        this.descriptorsFirst.adjust(i, i2);
        this.descriptorsLim.adjust(i - 1, i2);
    }

    public int getBookmarksCount() {
        return this.descriptorsFirst.length();
    }

    public GenericPropertyNode getDescriptorFirst(int i) throws IndexOutOfBoundsException {
        return this.descriptorsFirst.getProperty(i);
    }

    public int getDescriptorFirstIndex(GenericPropertyNode genericPropertyNode) {
        return Arrays.asList(this.descriptorsFirst.toPropertiesArray()).indexOf(genericPropertyNode);
    }

    public GenericPropertyNode getDescriptorLim(int i) throws IndexOutOfBoundsException {
        return this.descriptorsLim.getProperty(i);
    }

    public int getDescriptorsFirstCount() {
        return this.descriptorsFirst.length();
    }

    public int getDescriptorsLimCount() {
        return this.descriptorsLim.length();
    }

    public String getName(int i) {
        return this.names.get(i);
    }

    public int getNamesCount() {
        return this.names.size();
    }

    public void remove(int i) {
        this.descriptorsFirst.remove(i);
        this.descriptorsLim.remove(i);
        this.names.remove(i);
    }

    public void setName(int i, String str) {
        this.names.set(i, str);
    }

    public void writePlcfBkmkf(FileInformationBlock fileInformationBlock, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        PlexOfCps plexOfCps = this.descriptorsFirst;
        if (plexOfCps == null || plexOfCps.length() == 0) {
            fileInformationBlock.setFcPlcfbkf(0);
            fileInformationBlock.setLcbPlcfbkf(0);
            return;
        }
        int size = byteArrayOutputStream.size();
        byteArrayOutputStream.write(this.descriptorsFirst.toByteArray());
        int size2 = byteArrayOutputStream.size();
        fileInformationBlock.setFcPlcfbkf(size);
        fileInformationBlock.setLcbPlcfbkf(size2 - size);
    }

    public void writePlcfBkmkl(FileInformationBlock fileInformationBlock, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        PlexOfCps plexOfCps = this.descriptorsLim;
        if (plexOfCps == null || plexOfCps.length() == 0) {
            fileInformationBlock.setFcPlcfbkl(0);
            fileInformationBlock.setLcbPlcfbkl(0);
            return;
        }
        int size = byteArrayOutputStream.size();
        byteArrayOutputStream.write(this.descriptorsLim.toByteArray());
        int size2 = byteArrayOutputStream.size();
        fileInformationBlock.setFcPlcfbkl(size);
        fileInformationBlock.setLcbPlcfbkl(size2 - size);
    }

    public void writeSttbfBkmk(FileInformationBlock fileInformationBlock, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        List<String> list = this.names;
        if (list == null || list.isEmpty()) {
            fileInformationBlock.setFcSttbfbkmk(0);
            fileInformationBlock.setLcbSttbfbkmk(0);
            return;
        }
        int size = byteArrayOutputStream.size();
        SttbUtils.writeSttbfBkmk((String[]) this.names.toArray(new String[0]), byteArrayOutputStream);
        int size2 = byteArrayOutputStream.size();
        fileInformationBlock.setFcSttbfbkmk(size);
        fileInformationBlock.setLcbSttbfbkmk(size2 - size);
    }
}
