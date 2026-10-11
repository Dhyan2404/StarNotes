package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.model.io.HWPFFileSystem;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public class SectionTable {
    private static final Logger LOG = LogManager.getLogger((Class<?>) SectionTable.class);
    private static final int SED_SIZE = 12;
    protected List<SEPX> _sections = new ArrayList();
    protected List<TextPiece> _text;

    public SectionTable() {
    }

    public void adjustForInsert(int i, int i2) {
        int size = this._sections.size();
        SEPX sepx = this._sections.get(i);
        sepx.setEnd(sepx.getEnd() + i2);
        while (true) {
            i++;
            if (i >= size) {
                return;
            }
            SEPX sepx2 = this._sections.get(i);
            sepx2.setStart(sepx2.getStart() + i2);
            sepx2.setEnd(sepx2.getEnd() + i2);
        }
    }

    public List<SEPX> getSections() {
        return this._sections;
    }

    @Deprecated
    public void writeTo(HWPFFileSystem hWPFFileSystem, int i) throws IOException {
        writeTo(hWPFFileSystem.getStream("WordDocument"), hWPFFileSystem.getStream("1Table"));
    }

    public SectionTable(byte[] bArr, byte[] bArr2, int i, int i2, int i3, TextPieceTable textPieceTable, int i4) {
        PlexOfCps plexOfCps = new PlexOfCps(bArr2, i, i2, 12);
        this._text = textPieceTable.getTextPieces();
        int length = plexOfCps.length();
        for (int i5 = 0; i5 < length; i5++) {
            GenericPropertyNode property = plexOfCps.getProperty(i5);
            SectionDescriptor sectionDescriptor = new SectionDescriptor(property.getBytes(), 0);
            int fc = sectionDescriptor.getFc();
            int start = property.getStart();
            int end = property.getEnd();
            if (fc == -1) {
                this._sections.add(new SEPX(sectionDescriptor, start, end, new byte[0]));
            } else {
                this._sections.add(new SEPX(sectionDescriptor, start, end, IOUtils.safelyClone(bArr, fc + 2, LittleEndian.getShort(bArr, fc), HWPFDocument.getMaxRecordLength())));
            }
        }
        boolean z = false;
        boolean z2 = false;
        for (SEPX sepx : this._sections) {
            if (sepx.getEnd() == i4) {
                z = true;
            } else if (sepx.getEnd() == i4 || sepx.getEnd() == i4 - 1) {
                z2 = true;
            }
        }
        if (!z && z2) {
            LOG.atWarn().log("Your document seemed to be mostly unicode, but the section definition was in bytes! Trying anyway, but things may well go wrong!");
            for (int i6 = 0; i6 < this._sections.size(); i6++) {
                SEPX sepx2 = this._sections.get(i6);
                GenericPropertyNode property2 = plexOfCps.getProperty(i6);
                int start2 = property2.getStart();
                int end2 = property2.getEnd();
                sepx2.setStart(start2);
                sepx2.setEnd(end2);
            }
        }
        this._sections.sort(PropertyNode.StartComparator);
    }

    public void writeTo(ByteArrayOutputStream byteArrayOutputStream, ByteArrayOutputStream byteArrayOutputStream2) throws IOException {
        int size = byteArrayOutputStream.size();
        PlexOfCps plexOfCps = new PlexOfCps(12);
        for (SEPX sepx : this._sections) {
            byte[] grpprl = sepx.getGrpprl();
            byte[] bArr = new byte[2];
            LittleEndian.putShort(bArr, 0, (short) grpprl.length);
            byteArrayOutputStream.write(bArr);
            byteArrayOutputStream.write(grpprl);
            SectionDescriptor sectionDescriptor = sepx.getSectionDescriptor();
            sectionDescriptor.setFc(size);
            plexOfCps.addProperty(new GenericPropertyNode(sepx.getStart(), sepx.getEnd(), sectionDescriptor.toByteArray()));
            size = byteArrayOutputStream.size();
        }
        byteArrayOutputStream2.write(plexOfCps.toByteArray());
    }
}
