package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.CalcCountRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class CalcCountRecord extends StandardRecord {
    public static final short sid = 12;
    private short field_1_iterations;

    public CalcCountRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("iterations", new Supplier() { // from class: com.sunia.HTREnginev2.qmd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(CalcCountRecord.this.getIterations());
            }
        });
    }

    public short getIterations() {
        return this.field_1_iterations;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 12;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getIterations());
    }

    public void setIterations(short s) {
        this.field_1_iterations = s;
    }

    public CalcCountRecord(CalcCountRecord calcCountRecord) {
        super(calcCountRecord);
        this.field_1_iterations = calcCountRecord.field_1_iterations;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.CALC_COUNT;
    }

    public CalcCountRecord(RecordInputStream recordInputStream) {
        this.field_1_iterations = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public CalcCountRecord copy() {
        return new CalcCountRecord(this);
    }
}
