package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Date;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.Comment2000Atom;
import org.apache.poi.hslf.util.SystemTimeUtils;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class Comment2000Atom extends RecordAtom {
    private byte[] _data;
    private byte[] _header;

    public Comment2000Atom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._data = new byte[28];
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(this._header, 4, this._data.length);
    }

    public Date getDate() {
        return SystemTimeUtils.getDate(this._data, 4);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("number", new Supplier() { // from class: com.sunia.HTREnginev2.z3e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(Comment2000Atom.this.getNumber());
            }
        }, "date", new Supplier() { // from class: com.sunia.HTREnginev2.a4e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Comment2000Atom.this.getDate();
            }
        }, "xOffset", new Supplier() { // from class: com.sunia.HTREnginev2.b4e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(Comment2000Atom.this.getXOffset());
            }
        }, "yOffset", new Supplier() { // from class: com.sunia.HTREnginev2.c4e
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(Comment2000Atom.this.getYOffset());
            }
        });
    }

    public int getNumber() {
        return LittleEndian.getInt(this._data, 0);
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.Comment2000Atom.typeID;
    }

    public int getXOffset() {
        return LittleEndian.getInt(this._data, 20);
    }

    public int getYOffset() {
        return LittleEndian.getInt(this._data, 24);
    }

    public void setDate(Date date) {
        SystemTimeUtils.storeDate(date, this._data, 4);
    }

    public void setNumber(int i) {
        LittleEndian.putInt(this._data, 0, i);
    }

    public void setXOffset(int i) {
        LittleEndian.putInt(this._data, 20, i);
    }

    public void setYOffset(int i) {
        LittleEndian.putInt(this._data, 24, i);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._data);
    }

    public Comment2000Atom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._data = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
    }
}
