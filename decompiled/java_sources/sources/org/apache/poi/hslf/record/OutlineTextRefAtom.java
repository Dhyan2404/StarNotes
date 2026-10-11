package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.OutlineTextRefAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class OutlineTextRefAtom extends RecordAtom {
    private byte[] _header;
    private int _index;

    public OutlineTextRefAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._index = LittleEndian.getInt(bArr, i3);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("textIndex", new Supplier() { // from class: com.sunia.HTREnginev2.ajk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(OutlineTextRefAtom.this.getTextIndex());
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.OutlineTextRefAtom.typeID;
    }

    public int getTextIndex() {
        return this._index;
    }

    public void setTextIndex(int i) {
        this._index = i;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        byte[] bArr = new byte[4];
        LittleEndian.putInt(bArr, 0, this._index);
        outputStream.write(bArr);
    }

    public OutlineTextRefAtom() {
        this._index = 0;
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putUShort(bArr, 0, 0);
        LittleEndian.putUShort(this._header, 2, (int) getRecordType());
        LittleEndian.putInt(this._header, 4, 4);
    }
}
