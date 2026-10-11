package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.TxInteractiveInfoAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class TxInteractiveInfoAtom extends RecordAtom {
    private byte[] _data;
    private byte[] _header;

    public TxInteractiveInfoAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._data = new byte[8];
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(this._header, 4, this._data.length);
    }

    public int getEndIndex() {
        return LittleEndian.getInt(this._data, 4);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("startIndex", new Supplier() { // from class: com.sunia.HTREnginev2.oon
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TxInteractiveInfoAtom.this.getStartIndex());
            }
        }, "endIndex", new Supplier() { // from class: com.sunia.HTREnginev2.pon
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TxInteractiveInfoAtom.this.getEndIndex());
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.TxInteractiveInfoAtom.typeID;
    }

    public int getStartIndex() {
        return LittleEndian.getInt(this._data, 0);
    }

    public void setEndIndex(int i) {
        LittleEndian.putInt(this._data, 4, i);
    }

    public void setStartIndex(int i) {
        LittleEndian.putInt(this._data, 0, i);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._data);
    }

    public TxInteractiveInfoAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._data = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
    }
}
