package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.PrecisionRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class PrecisionRecord extends StandardRecord {
    public static final short sid = 14;
    private short field_1_precision;

    public PrecisionRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    public boolean getFullPrecision() {
        return this.field_1_precision == 1;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("precision", new Supplier() { // from class: com.sunia.HTREnginev2.r5l
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(PrecisionRecord.this.getFullPrecision());
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 14;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_precision);
    }

    public void setFullPrecision(boolean z) {
        this.field_1_precision = z ? (short) 1 : (short) 0;
    }

    public PrecisionRecord(PrecisionRecord precisionRecord) {
        super(precisionRecord);
        this.field_1_precision = precisionRecord.field_1_precision;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.PRECISION;
    }

    public PrecisionRecord(RecordInputStream recordInputStream) {
        this.field_1_precision = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public PrecisionRecord copy() {
        return new PrecisionRecord(this);
    }
}
