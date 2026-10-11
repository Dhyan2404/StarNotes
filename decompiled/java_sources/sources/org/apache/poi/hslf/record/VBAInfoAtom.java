package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.VBAInfoAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class VBAInfoAtom extends RecordAtom {
    private static final long _type = RecordTypes.VBAInfoAtom.typeID;
    private byte[] _header;
    private boolean hasMacros;
    private long persistIdRef;
    private long version;

    private VBAInfoAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putUInt(bArr, 0, _type);
        this.persistIdRef = 0L;
        this.hasMacros = true;
        this.version = 2L;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("persistIdRef", new Supplier() { // from class: com.sunia.HTREnginev2.lzn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(VBAInfoAtom.this.getPersistIdRef());
            }
        }, "hasMacros", new Supplier() { // from class: com.sunia.HTREnginev2.mzn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(VBAInfoAtom.this.isHasMacros());
            }
        }, "version", new Supplier() { // from class: com.sunia.HTREnginev2.nzn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(VBAInfoAtom.this.getVersion());
            }
        });
    }

    public long getPersistIdRef() {
        return this.persistIdRef;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public long getVersion() {
        return this.version;
    }

    public boolean isHasMacros() {
        return this.hasMacros;
    }

    public void setHasMacros(boolean z) {
        this.hasMacros = z;
    }

    public void setPersistIdRef(long j) {
        this.persistIdRef = j;
    }

    public void setVersion(long j) {
        this.version = j;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        LittleEndian.putUInt(this.persistIdRef, outputStream);
        LittleEndian.putUInt(this.hasMacros ? 1L : 0L, outputStream);
        LittleEndian.putUInt(this.version, outputStream);
    }

    public VBAInfoAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this.persistIdRef = LittleEndian.getUInt(bArr, i3);
        this.hasMacros = LittleEndian.getUInt(bArr, i + 12) == 1;
        this.version = LittleEndian.getUInt(bArr, i + 16);
    }
}
