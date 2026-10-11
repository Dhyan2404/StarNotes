package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;
import java.util.Objects;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.model.types.LSTFAbstractType;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class ListTables {
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) ListTables.class);
    private final LinkedHashMap<Integer, ListData> _listMap = new LinkedHashMap<>();
    private PlfLfo _plfLfo;

    public ListTables() {
    }

    public int addList(ListData listData, LFO lfo, LFOData lFOData) {
        int lsid = listData.getLsid();
        while (this._listMap.containsKey(Integer.valueOf(lsid))) {
            lsid = listData.resetListID();
            lfo.setLsid(lsid);
        }
        this._listMap.put(Integer.valueOf(lsid), listData);
        if (lfo == null && lFOData != null) {
            throw new IllegalArgumentException("LFO and LFOData should be specified both or noone");
        }
        if (lfo != null) {
            this._plfLfo.add(lfo, lFOData);
        }
        return lsid;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ListTables.class != obj.getClass()) {
            return false;
        }
        ListTables listTables = (ListTables) obj;
        if (this._listMap.equals(listTables._listMap)) {
            return Objects.equals(this._plfLfo, listTables._plfLfo);
        }
        return false;
    }

    public ListLevel getLevel(int i, int i2) {
        ListData listData = this._listMap.get(Integer.valueOf(i));
        if (listData == null) {
            LOGGER.atWarn().log("ListData for {} was null.", Unbox.box(i));
            return null;
        }
        if (i2 < listData.numLevels()) {
            return listData.getLevels()[i2];
        }
        LOGGER.atWarn().log("Requested level {} which was greater than the maximum defined ({})", Unbox.box(i2), Unbox.box(listData.numLevels()));
        return null;
    }

    public LFO getLfo(int i) throws NoSuchElementException {
        return this._plfLfo.getLfo(i);
    }

    public LFOData getLfoData(int i) throws NoSuchElementException {
        return this._plfLfo.getLfoData(i);
    }

    public ListData getListData(int i) {
        return this._listMap.get(Integer.valueOf(i));
    }

    public int getOverrideIndexFromListID(int i) throws NoSuchElementException {
        return this._plfLfo.getIlfoByLsid(i);
    }

    public int hashCode() {
        return Objects.hash(this._listMap, this._plfLfo);
    }

    public void writeListDataTo(FileInformationBlock fileInformationBlock, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        int size = byteArrayOutputStream.size();
        fileInformationBlock.setFcPlfLst(size);
        int size2 = this._listMap.size();
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        byte[] bArr = new byte[2];
        LittleEndian.putShort(bArr, 0, (short) size2);
        byteArrayOutputStream.write(bArr);
        for (ListData listData : this._listMap.values()) {
            byteArrayOutputStream.write(listData.toByteArray());
            for (ListLevel listLevel : listData.getLevels()) {
                byteArrayOutputStream2.write(listLevel.toByteArray());
            }
        }
        fileInformationBlock.setLcbPlfLst(byteArrayOutputStream.size() - size);
        byteArrayOutputStream.write(byteArrayOutputStream2.toByteArray());
    }

    public void writeListOverridesTo(FileInformationBlock fileInformationBlock, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        this._plfLfo.writeTo(fileInformationBlock, byteArrayOutputStream);
    }

    public ListTables(byte[] bArr, int i, int i2, int i3) {
        short s = LittleEndian.getShort(bArr, i);
        int i4 = i + 2;
        int size = (LSTFAbstractType.getSize() * s) + i4;
        for (int i5 = 0; i5 < s; i5++) {
            ListData listData = new ListData(bArr, i4);
            this._listMap.put(Integer.valueOf(listData.getLsid()), listData);
            i4 += LSTFAbstractType.getSize();
            int numLevels = listData.numLevels();
            for (int i6 = 0; i6 < numLevels; i6++) {
                ListLevel listLevel = new ListLevel();
                size += listLevel.read(bArr, size);
                listData.setLevel(i6, listLevel);
            }
        }
        this._plfLfo = new PlfLfo(bArr, i2, i3);
    }
}
