package org.apache.poi.hssf.record;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.RKRecord;
import org.apache.poi.hssf.util.RKUtil;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class RKRecord extends CellRecord {
    public static final short RK_IEEE_NUMBER = 0;
    public static final short RK_IEEE_NUMBER_TIMES_100 = 1;
    public static final short RK_INTEGER = 2;
    public static final short RK_INTEGER_TIMES_100 = 3;
    public static final short sid = 638;
    private final int field_4_rk_number;

    public RKRecord(RKRecord rKRecord) {
        super(rKRecord);
        this.field_4_rk_number = rKRecord.field_4_rk_number;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    @Override // org.apache.poi.hssf.record.CellRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.bcl
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = RKRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "rkNumber", new Supplier() { // from class: com.sunia.HTREnginev2.ccl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Double.valueOf(RKRecord.this.getRKNumber());
            }
        });
    }

    public double getRKNumber() {
        return RKUtil.decodeNumber(this.field_4_rk_number);
    }

    @Override // org.apache.poi.hssf.record.CellRecord
    public String getRecordName() {
        return "RK";
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.CellRecord
    public int getValueDataSize() {
        return 4;
    }

    @Override // org.apache.poi.hssf.record.CellRecord
    public void serializeValue(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(this.field_4_rk_number);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.RK;
    }

    public RKRecord(RecordInputStream recordInputStream) {
        super(recordInputStream);
        this.field_4_rk_number = recordInputStream.readInt();
    }

    @Override // org.apache.poi.hssf.record.CellRecord, org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public RKRecord copy() {
        return new RKRecord(this);
    }
}
