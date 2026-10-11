package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.SeriesListRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class SeriesListRecord extends StandardRecord {
    public static final short sid = 4118;
    private short[] field_1_seriesNumbers;

    public SeriesListRecord(SeriesListRecord seriesListRecord) {
        super(seriesListRecord);
        short[] sArr = seriesListRecord.field_1_seriesNumbers;
        this.field_1_seriesNumbers = sArr == null ? null : (short[]) sArr.clone();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this.field_1_seriesNumbers.length * 2) + 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("seriesNumbers", new Supplier() { // from class: com.sunia.HTREnginev2.jhm
            @Override // java.util.function.Supplier
            public final Object get() {
                return SeriesListRecord.this.getSeriesNumbers();
            }
        });
    }

    public short[] getSeriesNumbers() {
        return this.field_1_seriesNumbers;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_seriesNumbers.length);
        for (short s : this.field_1_seriesNumbers) {
            littleEndianOutput.writeShort(s);
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.SERIES_LIST;
    }

    public SeriesListRecord(short[] sArr) {
        this.field_1_seriesNumbers = sArr == null ? null : (short[]) sArr.clone();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public SeriesListRecord copy() {
        return new SeriesListRecord(this);
    }

    public SeriesListRecord(RecordInputStream recordInputStream) {
        int readUShort = recordInputStream.readUShort();
        short[] sArr = new short[readUShort];
        for (int i = 0; i < readUShort; i++) {
            sArr[i] = recordInputStream.readShort();
        }
        this.field_1_seriesNumbers = sArr;
    }
}
