package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.ExControlAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class ExControlAtom extends RecordAtom {
    private byte[] _header;
    private int _id;

    public ExControlAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(this._header, 4, 4);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("slideId", new Supplier() { // from class: com.sunia.HTREnginev2.kxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExControlAtom.this.getSlideId());
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.ExControlAtom.typeID;
    }

    public int getSlideId() {
        return this._id;
    }

    public void setSlideId(int i) {
        this._id = i;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        byte[] bArr = new byte[4];
        LittleEndian.putInt(bArr, 0, this._id);
        outputStream.write(bArr);
    }

    public ExControlAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._id = LittleEndian.getInt(bArr, i3);
    }
}
