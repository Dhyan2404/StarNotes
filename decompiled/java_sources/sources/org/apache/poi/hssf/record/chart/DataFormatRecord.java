package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.DataFormatRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class DataFormatRecord extends StandardRecord {
    public static final short sid = 4102;
    private static final BitField useExcel4Colors = BitFieldFactory.getInstance(1);
    private short field_1_pointNumber;
    private short field_2_seriesIndex;
    private short field_3_seriesNumber;
    private short field_4_formatFlags;

    public DataFormatRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 8;
    }

    public short getFormatFlags() {
        return this.field_4_formatFlags;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("pointNumber", new Supplier() { // from class: com.sunia.HTREnginev2.xse
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(DataFormatRecord.this.getPointNumber());
            }
        }, "seriesIndex", new Supplier() { // from class: com.sunia.HTREnginev2.yse
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(DataFormatRecord.this.getSeriesIndex());
            }
        }, "seriesNumber", new Supplier() { // from class: com.sunia.HTREnginev2.zse
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(DataFormatRecord.this.getSeriesNumber());
            }
        }, "formatFlags", new Supplier() { // from class: com.sunia.HTREnginev2.ate
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(DataFormatRecord.this.getFormatFlags());
            }
        }, "useExcel4Colors", new Supplier() { // from class: com.sunia.HTREnginev2.bte
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(DataFormatRecord.this.isUseExcel4Colors());
            }
        });
    }

    public short getPointNumber() {
        return this.field_1_pointNumber;
    }

    public short getSeriesIndex() {
        return this.field_2_seriesIndex;
    }

    public short getSeriesNumber() {
        return this.field_3_seriesNumber;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public boolean isUseExcel4Colors() {
        return useExcel4Colors.isSet(this.field_4_formatFlags);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_pointNumber);
        littleEndianOutput.writeShort(this.field_2_seriesIndex);
        littleEndianOutput.writeShort(this.field_3_seriesNumber);
        littleEndianOutput.writeShort(this.field_4_formatFlags);
    }

    public void setFormatFlags(short s) {
        this.field_4_formatFlags = s;
    }

    public void setPointNumber(short s) {
        this.field_1_pointNumber = s;
    }

    public void setSeriesIndex(short s) {
        this.field_2_seriesIndex = s;
    }

    public void setSeriesNumber(short s) {
        this.field_3_seriesNumber = s;
    }

    public void setUseExcel4Colors(boolean z) {
        this.field_4_formatFlags = useExcel4Colors.setShortBoolean(this.field_4_formatFlags, z);
    }

    public DataFormatRecord(DataFormatRecord dataFormatRecord) {
        super(dataFormatRecord);
        this.field_1_pointNumber = dataFormatRecord.field_1_pointNumber;
        this.field_2_seriesIndex = dataFormatRecord.field_2_seriesIndex;
        this.field_3_seriesNumber = dataFormatRecord.field_3_seriesNumber;
        this.field_4_formatFlags = dataFormatRecord.field_4_formatFlags;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.DATA_FORMAT;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public DataFormatRecord copy() {
        return new DataFormatRecord(this);
    }

    public DataFormatRecord(RecordInputStream recordInputStream) {
        this.field_1_pointNumber = recordInputStream.readShort();
        this.field_2_seriesIndex = recordInputStream.readShort();
        this.field_3_seriesNumber = recordInputStream.readShort();
        this.field_4_formatFlags = recordInputStream.readShort();
    }
}
