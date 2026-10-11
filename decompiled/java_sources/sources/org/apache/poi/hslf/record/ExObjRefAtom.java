package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.ExObjRefAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class ExObjRefAtom extends RecordAtom {
    private byte[] _header;
    private int exObjIdRef;

    public ExObjRefAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putUShort(bArr, 0, 0);
        LittleEndian.putUShort(this._header, 2, (int) getRecordType());
        LittleEndian.putInt(this._header, 4, 4);
        this.exObjIdRef = 0;
    }

    public int getExObjIdRef() {
        return this.exObjIdRef;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("exObjIdRef", new Supplier() { // from class: com.sunia.HTREnginev2.txf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExObjRefAtom.this.getExObjIdRef());
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.ExObjRefAtom.typeID;
    }

    public void setExObjIdRef(int i) {
        this.exObjIdRef = i;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        byte[] bArr = new byte[4];
        LittleEndian.putUInt(bArr, 0, this.exObjIdRef);
        outputStream.write(bArr);
    }

    public ExObjRefAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this.exObjIdRef = (int) LittleEndian.getUInt(bArr, i3);
    }
}
