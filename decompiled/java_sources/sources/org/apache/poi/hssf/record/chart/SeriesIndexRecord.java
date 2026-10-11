package org.apache.poi.hssf.record.chart;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.SeriesIndexRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class SeriesIndexRecord extends StandardRecord {
    public static final short sid = 4197;
    private short field_1_index;

    public SeriesIndexRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(FirebaseAnalytics.Param.INDEX, new Supplier() { // from class: com.sunia.HTREnginev2.hhm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(SeriesIndexRecord.this.getIndex());
            }
        });
    }

    public short getIndex() {
        return this.field_1_index;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_index);
    }

    public void setIndex(short s) {
        this.field_1_index = s;
    }

    public SeriesIndexRecord(SeriesIndexRecord seriesIndexRecord) {
        super(seriesIndexRecord);
        this.field_1_index = seriesIndexRecord.field_1_index;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.SERIES_INDEX;
    }

    public SeriesIndexRecord(RecordInputStream recordInputStream) {
        this.field_1_index = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public SeriesIndexRecord copy() {
        return new SeriesIndexRecord(this);
    }
}
