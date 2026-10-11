package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.AreaRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class AreaRecord extends StandardRecord {
    public static final short sid = 4122;
    private short field_1_formatFlags;
    private static final BitField stacked = BitFieldFactory.getInstance(1);
    private static final BitField displayAsPercentage = BitFieldFactory.getInstance(2);
    private static final BitField shadow = BitFieldFactory.getInstance(4);

    public AreaRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    public short getFormatFlags() {
        return this.field_1_formatFlags;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("formatFlags", new Supplier() { // from class: com.sunia.HTREnginev2.ve
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AreaRecord.this.getFormatFlags());
            }
        }, "stacked", new Supplier() { // from class: com.sunia.HTREnginev2.we
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(AreaRecord.this.isStacked());
            }
        }, "displayAsPercentage", new Supplier() { // from class: com.sunia.HTREnginev2.xe
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(AreaRecord.this.isDisplayAsPercentage());
            }
        }, "shadow", new Supplier() { // from class: com.sunia.HTREnginev2.ye
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(AreaRecord.this.isShadow());
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public boolean isDisplayAsPercentage() {
        return displayAsPercentage.isSet(this.field_1_formatFlags);
    }

    public boolean isShadow() {
        return shadow.isSet(this.field_1_formatFlags);
    }

    public boolean isStacked() {
        return stacked.isSet(this.field_1_formatFlags);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_formatFlags);
    }

    public void setDisplayAsPercentage(boolean z) {
        this.field_1_formatFlags = displayAsPercentage.setShortBoolean(this.field_1_formatFlags, z);
    }

    public void setFormatFlags(short s) {
        this.field_1_formatFlags = s;
    }

    public void setShadow(boolean z) {
        this.field_1_formatFlags = shadow.setShortBoolean(this.field_1_formatFlags, z);
    }

    public void setStacked(boolean z) {
        this.field_1_formatFlags = stacked.setShortBoolean(this.field_1_formatFlags, z);
    }

    public AreaRecord(AreaRecord areaRecord) {
        super(areaRecord);
        this.field_1_formatFlags = areaRecord.field_1_formatFlags;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.AREA;
    }

    public AreaRecord(RecordInputStream recordInputStream) {
        this.field_1_formatFlags = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public AreaRecord copy() {
        return new AreaRecord(this);
    }
}
