package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.ExObjListAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class ExObjListAtom extends RecordAtom {
    private byte[] _data;
    private byte[] _header;

    public ExObjListAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._data = new byte[4];
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(this._header, 4, this._data.length);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("objectIDSeed", new Supplier() { // from class: com.sunia.HTREnginev2.sxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(ExObjListAtom.this.getObjectIDSeed());
            }
        });
    }

    public long getObjectIDSeed() {
        return LittleEndian.getUInt(this._data, 0);
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.ExObjListAtom.typeID;
    }

    public void setObjectIDSeed(int i) {
        LittleEndian.putInt(this._data, 0, i);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._data);
    }

    public ExObjListAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        byte[] safelyClone = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
        this._data = safelyClone;
        if (safelyClone.length >= 4) {
            return;
        }
        throw new IllegalArgumentException("The length of the data for a ExObjListAtom must be at least 4 bytes, but was only " + this._data.length);
    }
}
