package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.CategorySeriesAxisRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class CategorySeriesAxisRecord extends StandardRecord {
    public static final short sid = 4128;
    private short field_1_crossingPoint;
    private short field_2_labelFrequency;
    private short field_3_tickMarkFrequency;
    private short field_4_options;
    private static final BitField valueAxisCrossing = BitFieldFactory.getInstance(1);
    private static final BitField crossesFarRight = BitFieldFactory.getInstance(2);
    private static final BitField reversed = BitFieldFactory.getInstance(4);

    public CategorySeriesAxisRecord() {
    }

    public short getCrossingPoint() {
        return this.field_1_crossingPoint;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 8;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("crossingPoint", new Supplier() { // from class: com.sunia.HTREnginev2.iod
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(CategorySeriesAxisRecord.this.getCrossingPoint());
            }
        }, "labelFrequency", new Supplier() { // from class: com.sunia.HTREnginev2.jod
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(CategorySeriesAxisRecord.this.getLabelFrequency());
            }
        }, "tickMarkFrequency", new Supplier() { // from class: com.sunia.HTREnginev2.kod
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(CategorySeriesAxisRecord.this.getTickMarkFrequency());
            }
        }, "options", new Supplier() { // from class: com.sunia.HTREnginev2.lod
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(CategorySeriesAxisRecord.this.getOptions());
            }
        }, "valueAxisCrossing", new Supplier() { // from class: com.sunia.HTREnginev2.mod
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CategorySeriesAxisRecord.this.isValueAxisCrossing());
            }
        }, "crossesFarRight", new Supplier() { // from class: com.sunia.HTREnginev2.nod
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CategorySeriesAxisRecord.this.isCrossesFarRight());
            }
        }, "reversed", new Supplier() { // from class: com.sunia.HTREnginev2.ood
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CategorySeriesAxisRecord.this.isReversed());
            }
        });
    }

    public short getLabelFrequency() {
        return this.field_2_labelFrequency;
    }

    public short getOptions() {
        return this.field_4_options;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public short getTickMarkFrequency() {
        return this.field_3_tickMarkFrequency;
    }

    public boolean isCrossesFarRight() {
        return crossesFarRight.isSet(this.field_4_options);
    }

    public boolean isReversed() {
        return reversed.isSet(this.field_4_options);
    }

    public boolean isValueAxisCrossing() {
        return valueAxisCrossing.isSet(this.field_4_options);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_crossingPoint);
        littleEndianOutput.writeShort(this.field_2_labelFrequency);
        littleEndianOutput.writeShort(this.field_3_tickMarkFrequency);
        littleEndianOutput.writeShort(this.field_4_options);
    }

    public void setCrossesFarRight(boolean z) {
        this.field_4_options = crossesFarRight.setShortBoolean(this.field_4_options, z);
    }

    public void setCrossingPoint(short s) {
        this.field_1_crossingPoint = s;
    }

    public void setLabelFrequency(short s) {
        this.field_2_labelFrequency = s;
    }

    public void setOptions(short s) {
        this.field_4_options = s;
    }

    public void setReversed(boolean z) {
        this.field_4_options = reversed.setShortBoolean(this.field_4_options, z);
    }

    public void setTickMarkFrequency(short s) {
        this.field_3_tickMarkFrequency = s;
    }

    public void setValueAxisCrossing(boolean z) {
        this.field_4_options = valueAxisCrossing.setShortBoolean(this.field_4_options, z);
    }

    public CategorySeriesAxisRecord(CategorySeriesAxisRecord categorySeriesAxisRecord) {
        super(categorySeriesAxisRecord);
        this.field_1_crossingPoint = categorySeriesAxisRecord.field_1_crossingPoint;
        this.field_2_labelFrequency = categorySeriesAxisRecord.field_2_labelFrequency;
        this.field_3_tickMarkFrequency = categorySeriesAxisRecord.field_3_tickMarkFrequency;
        this.field_4_options = categorySeriesAxisRecord.field_4_options;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.CATEGORY_SERIES_AXIS;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public CategorySeriesAxisRecord copy() {
        return new CategorySeriesAxisRecord(this);
    }

    public CategorySeriesAxisRecord(RecordInputStream recordInputStream) {
        this.field_1_crossingPoint = recordInputStream.readShort();
        this.field_2_labelFrequency = recordInputStream.readShort();
        this.field_3_tickMarkFrequency = recordInputStream.readShort();
        this.field_4_options = recordInputStream.readShort();
    }
}
