package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.NumberFormatIndexRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class NumberFormatIndexRecord extends StandardRecord {
    public static final short sid = 4174;
    private short field_1_formatIndex;

    public NumberFormatIndexRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    public short getFormatIndex() {
        return this.field_1_formatIndex;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("formatIndex", new Supplier() { // from class: com.sunia.HTREnginev2.s5k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(NumberFormatIndexRecord.this.getFormatIndex());
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_formatIndex);
    }

    public void setFormatIndex(short s) {
        this.field_1_formatIndex = s;
    }

    public NumberFormatIndexRecord(NumberFormatIndexRecord numberFormatIndexRecord) {
        super(numberFormatIndexRecord);
        this.field_1_formatIndex = numberFormatIndexRecord.field_1_formatIndex;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.NUMBER_FORMAT_INDEX;
    }

    public NumberFormatIndexRecord(RecordInputStream recordInputStream) {
        this.field_1_formatIndex = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public NumberFormatIndexRecord copy() {
        return new NumberFormatIndexRecord(this);
    }
}
