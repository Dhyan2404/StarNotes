package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.SeriesRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class SeriesRecord extends StandardRecord {
    public static final short BUBBLE_SERIES_TYPE_DATES = 0;
    public static final short BUBBLE_SERIES_TYPE_NUMERIC = 1;
    public static final short BUBBLE_SERIES_TYPE_SEQUENCE = 2;
    public static final short BUBBLE_SERIES_TYPE_TEXT = 3;
    public static final short CATEGORY_DATA_TYPE_DATES = 0;
    public static final short CATEGORY_DATA_TYPE_NUMERIC = 1;
    public static final short CATEGORY_DATA_TYPE_SEQUENCE = 2;
    public static final short CATEGORY_DATA_TYPE_TEXT = 3;
    public static final short VALUES_DATA_TYPE_DATES = 0;
    public static final short VALUES_DATA_TYPE_NUMERIC = 1;
    public static final short VALUES_DATA_TYPE_SEQUENCE = 2;
    public static final short VALUES_DATA_TYPE_TEXT = 3;
    public static final short sid = 4099;
    private short field_1_categoryDataType;
    private short field_2_valuesDataType;
    private short field_3_numCategories;
    private short field_4_numValues;
    private short field_5_bubbleSeriesType;
    private short field_6_numBubbleValues;

    public SeriesRecord() {
    }

    public short getBubbleSeriesType() {
        return this.field_5_bubbleSeriesType;
    }

    public short getCategoryDataType() {
        return this.field_1_categoryDataType;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 12;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("categoryDataType", new Supplier() { // from class: com.sunia.HTREnginev2.khm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SeriesRecord.this.getCategoryDataType());
            }
        }, "valuesDataType", new Supplier() { // from class: com.sunia.HTREnginev2.lhm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SeriesRecord.this.getValuesDataType());
            }
        }, "numCategories", new Supplier() { // from class: com.sunia.HTREnginev2.mhm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SeriesRecord.this.getNumCategories());
            }
        }, "numValues", new Supplier() { // from class: com.sunia.HTREnginev2.nhm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SeriesRecord.this.getNumValues());
            }
        }, "bubbleSeriesType", new Supplier() { // from class: com.sunia.HTREnginev2.ohm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SeriesRecord.this.getBubbleSeriesType());
            }
        }, "numBubbleValues", new Supplier() { // from class: com.sunia.HTREnginev2.phm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SeriesRecord.this.getNumBubbleValues());
            }
        });
    }

    public short getNumBubbleValues() {
        return this.field_6_numBubbleValues;
    }

    public short getNumCategories() {
        return this.field_3_numCategories;
    }

    public short getNumValues() {
        return this.field_4_numValues;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public short getValuesDataType() {
        return this.field_2_valuesDataType;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_categoryDataType);
        littleEndianOutput.writeShort(this.field_2_valuesDataType);
        littleEndianOutput.writeShort(this.field_3_numCategories);
        littleEndianOutput.writeShort(this.field_4_numValues);
        littleEndianOutput.writeShort(this.field_5_bubbleSeriesType);
        littleEndianOutput.writeShort(this.field_6_numBubbleValues);
    }

    public void setBubbleSeriesType(short s) {
        this.field_5_bubbleSeriesType = s;
    }

    public void setCategoryDataType(short s) {
        this.field_1_categoryDataType = s;
    }

    public void setNumBubbleValues(short s) {
        this.field_6_numBubbleValues = s;
    }

    public void setNumCategories(short s) {
        this.field_3_numCategories = s;
    }

    public void setNumValues(short s) {
        this.field_4_numValues = s;
    }

    public void setValuesDataType(short s) {
        this.field_2_valuesDataType = s;
    }

    public SeriesRecord(SeriesRecord seriesRecord) {
        super(seriesRecord);
        this.field_1_categoryDataType = seriesRecord.field_1_categoryDataType;
        this.field_2_valuesDataType = seriesRecord.field_2_valuesDataType;
        this.field_3_numCategories = seriesRecord.field_3_numCategories;
        this.field_4_numValues = seriesRecord.field_4_numValues;
        this.field_5_bubbleSeriesType = seriesRecord.field_5_bubbleSeriesType;
        this.field_6_numBubbleValues = seriesRecord.field_6_numBubbleValues;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.SERIES;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public SeriesRecord copy() {
        return new SeriesRecord(this);
    }

    public SeriesRecord(RecordInputStream recordInputStream) {
        this.field_1_categoryDataType = recordInputStream.readShort();
        this.field_2_valuesDataType = recordInputStream.readShort();
        this.field_3_numCategories = recordInputStream.readShort();
        this.field_4_numValues = recordInputStream.readShort();
        this.field_5_bubbleSeriesType = recordInputStream.readShort();
        this.field_6_numBubbleValues = recordInputStream.readShort();
    }
}
