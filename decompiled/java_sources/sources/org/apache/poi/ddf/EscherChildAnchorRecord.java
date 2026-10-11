package org.apache.poi.ddf;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ddf.EscherChildAnchorRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class EscherChildAnchorRecord extends EscherRecord {
    public static final short RECORD_ID = EscherRecordTypes.CHILD_ANCHOR.typeID;
    private int field_1_dx1;
    private int field_2_dy1;
    private int field_3_dx2;
    private int field_4_dy2;

    public EscherChildAnchorRecord() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int i2;
        int readHeader = readHeader(bArr, i);
        int i3 = i + 8;
        if (readHeader != 8) {
            i2 = 16;
            if (readHeader != 16) {
                throw new IllegalStateException("Invalid EscherChildAnchorRecord - neither 8 nor 16 bytes.");
            }
            this.field_1_dx1 = LittleEndian.getInt(bArr, i3 + 0);
            this.field_2_dy1 = LittleEndian.getInt(bArr, i3 + 4);
            this.field_3_dx2 = LittleEndian.getInt(bArr, i3 + 8);
            this.field_4_dy2 = LittleEndian.getInt(bArr, i3 + 12);
        } else {
            this.field_1_dx1 = LittleEndian.getShort(bArr, i3 + 0);
            this.field_2_dy1 = LittleEndian.getShort(bArr, i3 + 2);
            this.field_3_dx2 = LittleEndian.getShort(bArr, i3 + 4);
            this.field_4_dy2 = LittleEndian.getShort(bArr, i3 + 6);
            i2 = 8;
        }
        return i2 + 8;
    }

    public int getDx1() {
        return this.field_1_dx1;
    }

    public int getDx2() {
        return this.field_3_dx2;
    }

    public int getDy1() {
        return this.field_2_dy1;
    }

    public int getDy2() {
        return this.field_4_dy2;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.vsf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = EscherChildAnchorRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "x1", new Supplier() { // from class: com.sunia.HTREnginev2.wsf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherChildAnchorRecord.this.getDx1());
            }
        }, "y1", new Supplier() { // from class: com.sunia.HTREnginev2.xsf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherChildAnchorRecord.this.getDy1());
            }
        }, "x2", new Supplier() { // from class: com.sunia.HTREnginev2.ysf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherChildAnchorRecord.this.getDx2());
            }
        }, "y2", new Supplier() { // from class: com.sunia.HTREnginev2.zsf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherChildAnchorRecord.this.getDy2());
            }
        });
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        return EscherRecordTypes.CHILD_ANCHOR;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public short getRecordId() {
        return RECORD_ID;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        return EscherRecordTypes.CHILD_ANCHOR.recordName;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        return 24;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        int i2 = i + 2;
        LittleEndian.putShort(bArr, i2, getRecordId());
        int i3 = i2 + 2;
        LittleEndian.putInt(bArr, i3, getRecordSize() - 8);
        int i4 = i3 + 4;
        LittleEndian.putInt(bArr, i4, this.field_1_dx1);
        int i5 = i4 + 4;
        LittleEndian.putInt(bArr, i5, this.field_2_dy1);
        int i6 = i5 + 4;
        LittleEndian.putInt(bArr, i6, this.field_3_dx2);
        int i7 = i6 + 4;
        LittleEndian.putInt(bArr, i7, this.field_4_dy2);
        int i8 = i7 + 4;
        int i9 = i8 - i;
        escherSerializationListener.afterRecordSerialize(i8, getRecordId(), i9, this);
        return i9;
    }

    public void setDx1(int i) {
        this.field_1_dx1 = i;
    }

    public void setDx2(int i) {
        this.field_3_dx2 = i;
    }

    public void setDy1(int i) {
        this.field_2_dy1 = i;
    }

    public void setDy2(int i) {
        this.field_4_dy2 = i;
    }

    public EscherChildAnchorRecord(EscherChildAnchorRecord escherChildAnchorRecord) {
        super(escherChildAnchorRecord);
        this.field_1_dx1 = escherChildAnchorRecord.field_1_dx1;
        this.field_2_dy1 = escherChildAnchorRecord.field_2_dy1;
        this.field_3_dx2 = escherChildAnchorRecord.field_3_dx2;
        this.field_4_dy2 = escherChildAnchorRecord.field_4_dy2;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherChildAnchorRecord copy() {
        return new EscherChildAnchorRecord(this);
    }
}
