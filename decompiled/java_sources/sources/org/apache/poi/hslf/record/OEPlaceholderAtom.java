package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.OEPlaceholderAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class OEPlaceholderAtom extends RecordAtom {
    public static final int PLACEHOLDER_FULLSIZE = 0;
    public static final int PLACEHOLDER_HALFSIZE = 1;
    public static final int PLACEHOLDER_QUARTSIZE = 2;
    private final byte[] _header;
    private int placeholderId;
    private int placeholderSize;
    private int placementId;
    private short unusedShort;

    public OEPlaceholderAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putUShort(bArr, 0, 0);
        LittleEndian.putUShort(bArr, 2, (int) getRecordType());
        LittleEndian.putInt(bArr, 4, 8);
        this.placementId = 0;
        this.placeholderId = 0;
        this.placeholderSize = 0;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("placementId", new Supplier() { // from class: com.sunia.HTREnginev2.o6k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(OEPlaceholderAtom.this.getPlacementId());
            }
        }, "placeholderId", new Supplier() { // from class: com.sunia.HTREnginev2.p6k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(OEPlaceholderAtom.this.getPlaceholderId());
            }
        }, "placeholderSize", new Supplier() { // from class: com.sunia.HTREnginev2.q6k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(OEPlaceholderAtom.this.getPlaceholderSize());
            }
        });
    }

    public int getPlaceholderId() {
        return this.placeholderId;
    }

    public int getPlaceholderSize() {
        return this.placeholderSize;
    }

    public int getPlacementId() {
        return this.placementId;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.OEPlaceholderAtom.typeID;
    }

    public void setPlaceholderId(byte b) {
        this.placeholderId = b;
    }

    public void setPlaceholderSize(byte b) {
        this.placeholderSize = b;
    }

    public void setPlacementId(int i) {
        this.placementId = i;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        byte[] bArr = new byte[8];
        LittleEndian.putInt(bArr, 0, this.placementId);
        bArr[4] = (byte) this.placeholderId;
        bArr[5] = (byte) this.placeholderSize;
        LittleEndian.putShort(bArr, 6, this.unusedShort);
        outputStream.write(bArr);
    }

    public OEPlaceholderAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this.placementId = LittleEndian.getInt(bArr, i3);
        int i4 = i3 + 4;
        this.placeholderId = LittleEndian.getUByte(bArr, i4);
        int i5 = i4 + 1;
        this.placeholderSize = LittleEndian.getUByte(bArr, i5);
        this.unusedShort = LittleEndian.getShort(bArr, i5 + 1);
    }
}
