package org.apache.poi.ddf;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ddf.EscherSpgrRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public class EscherSpgrRecord extends EscherRecord {
    public static final short RECORD_ID = EscherRecordTypes.SPGR.typeID;
    private int field_1_rectX1;
    private int field_2_rectY1;
    private int field_3_rectX2;
    private int field_4_rectY2;

    public EscherSpgrRecord() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int readHeader = readHeader(bArr, i);
        int i2 = i + 8;
        this.field_1_rectX1 = LittleEndian.getInt(bArr, i2 + 0);
        this.field_2_rectY1 = LittleEndian.getInt(bArr, i2 + 4);
        this.field_3_rectX2 = LittleEndian.getInt(bArr, i2 + 8);
        this.field_4_rectY2 = LittleEndian.getInt(bArr, i2 + 12);
        int i3 = readHeader - 16;
        if (i3 == 0) {
            return 24 + i3;
        }
        throw new RecordFormatException("Expected no remaining bytes but got " + i3);
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.ewf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = EscherSpgrRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "rectX1", new Supplier() { // from class: com.sunia.HTREnginev2.fwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherSpgrRecord.this.getRectX1());
            }
        }, "rectY1", new Supplier() { // from class: com.sunia.HTREnginev2.gwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherSpgrRecord.this.getRectY1());
            }
        }, "rectX2", new Supplier() { // from class: com.sunia.HTREnginev2.hwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherSpgrRecord.this.getRectX2());
            }
        }, "rectY2", new Supplier() { // from class: com.sunia.HTREnginev2.iwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherSpgrRecord.this.getRectY2());
            }
        });
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        return EscherRecordTypes.SPGR;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public short getRecordId() {
        return RECORD_ID;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        return EscherRecordTypes.SPGR.recordName;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        return 24;
    }

    public int getRectX1() {
        return this.field_1_rectX1;
    }

    public int getRectX2() {
        return this.field_3_rectX2;
    }

    public int getRectY1() {
        return this.field_2_rectY1;
    }

    public int getRectY2() {
        return this.field_4_rectY2;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        LittleEndian.putShort(bArr, i + 2, getRecordId());
        LittleEndian.putInt(bArr, i + 4, 16);
        LittleEndian.putInt(bArr, i + 8, this.field_1_rectX1);
        LittleEndian.putInt(bArr, i + 12, this.field_2_rectY1);
        LittleEndian.putInt(bArr, i + 16, this.field_3_rectX2);
        LittleEndian.putInt(bArr, i + 20, this.field_4_rectY2);
        escherSerializationListener.afterRecordSerialize(getRecordSize() + i, getRecordId(), i + getRecordSize(), this);
        return 24;
    }

    public void setRectX1(int i) {
        this.field_1_rectX1 = i;
    }

    public void setRectX2(int i) {
        this.field_3_rectX2 = i;
    }

    public void setRectY1(int i) {
        this.field_2_rectY1 = i;
    }

    public void setRectY2(int i) {
        this.field_4_rectY2 = i;
    }

    public EscherSpgrRecord(EscherSpgrRecord escherSpgrRecord) {
        super(escherSpgrRecord);
        this.field_1_rectX1 = escherSpgrRecord.field_1_rectX1;
        this.field_2_rectY1 = escherSpgrRecord.field_2_rectY1;
        this.field_3_rectX2 = escherSpgrRecord.field_3_rectX2;
        this.field_4_rectY2 = escherSpgrRecord.field_4_rectY2;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherSpgrRecord copy() {
        return new EscherSpgrRecord(this);
    }
}
