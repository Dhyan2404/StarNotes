package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.ExHyperlinkAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class ExHyperlinkAtom extends RecordAtom {
    private byte[] _data;
    private byte[] _header;

    public ExHyperlinkAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._data = new byte[4];
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(this._header, 4, this._data.length);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("number", new Supplier() { // from class: com.sunia.HTREnginev2.pxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExHyperlinkAtom.this.getNumber());
            }
        });
    }

    public int getNumber() {
        return LittleEndian.getInt(this._data, 0);
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.ExHyperlinkAtom.typeID;
    }

    public void setNumber(int i) {
        LittleEndian.putInt(this._data, 0, i);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._data);
    }

    public ExHyperlinkAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        byte[] safelyClone = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
        this._data = safelyClone;
        if (safelyClone.length >= 4) {
            return;
        }
        throw new IllegalArgumentException("The length of the data for a ExHyperlinkAtom must be at least 4 bytes, but was only " + this._data.length);
    }
}
