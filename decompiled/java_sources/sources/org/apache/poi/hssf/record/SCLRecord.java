package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.SCLRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class SCLRecord extends StandardRecord {
    public static final short sid = 160;
    private short field_1_numerator;
    private short field_2_denominator;

    public SCLRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 4;
    }

    public short getDenominator() {
        return this.field_2_denominator;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("numerator", new Supplier() { // from class: com.sunia.HTREnginev2.fyl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SCLRecord.this.getNumerator());
            }
        }, "denominator", new Supplier() { // from class: com.sunia.HTREnginev2.gyl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SCLRecord.this.getDenominator());
            }
        });
    }

    public short getNumerator() {
        return this.field_1_numerator;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 160;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_numerator);
        littleEndianOutput.writeShort(this.field_2_denominator);
    }

    public void setDenominator(short s) {
        this.field_2_denominator = s;
    }

    public void setNumerator(short s) {
        this.field_1_numerator = s;
    }

    public SCLRecord(SCLRecord sCLRecord) {
        super(sCLRecord);
        this.field_1_numerator = sCLRecord.field_1_numerator;
        this.field_2_denominator = sCLRecord.field_2_denominator;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.SCL;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public SCLRecord copy() {
        return new SCLRecord(this);
    }

    public SCLRecord(RecordInputStream recordInputStream) {
        this.field_1_numerator = recordInputStream.readShort();
        this.field_2_denominator = recordInputStream.readShort();
    }
}
