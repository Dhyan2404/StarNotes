package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.SeriesChartGroupIndexRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class SeriesChartGroupIndexRecord extends StandardRecord {
    public static final short sid = 4165;
    private short field_1_chartGroupIndex;

    public SeriesChartGroupIndexRecord() {
    }

    public short getChartGroupIndex() {
        return this.field_1_chartGroupIndex;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("chartGroupIndex", new Supplier() { // from class: com.sunia.HTREnginev2.ghm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SeriesChartGroupIndexRecord.this.getChartGroupIndex());
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_chartGroupIndex);
    }

    public void setChartGroupIndex(short s) {
        this.field_1_chartGroupIndex = s;
    }

    public SeriesChartGroupIndexRecord(SeriesChartGroupIndexRecord seriesChartGroupIndexRecord) {
        super(seriesChartGroupIndexRecord);
        this.field_1_chartGroupIndex = seriesChartGroupIndexRecord.field_1_chartGroupIndex;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.SERIES_CHART_GROUP_INDEX;
    }

    public SeriesChartGroupIndexRecord(RecordInputStream recordInputStream) {
        this.field_1_chartGroupIndex = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public SeriesChartGroupIndexRecord copy() {
        return new SeriesChartGroupIndexRecord(this);
    }
}
