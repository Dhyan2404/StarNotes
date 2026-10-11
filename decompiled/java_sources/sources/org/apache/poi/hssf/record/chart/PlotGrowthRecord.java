package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.PlotGrowthRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class PlotGrowthRecord extends StandardRecord {
    public static final short sid = 4196;
    private int field_1_horizontalScale;
    private int field_2_verticalScale;

    public PlotGrowthRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 8;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("horizontalScale", new Supplier() { // from class: com.sunia.HTREnginev2.w4l
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(PlotGrowthRecord.this.getHorizontalScale());
            }
        }, "verticalScale", new Supplier() { // from class: com.sunia.HTREnginev2.x4l
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(PlotGrowthRecord.this.getVerticalScale());
            }
        });
    }

    public int getHorizontalScale() {
        return this.field_1_horizontalScale;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public int getVerticalScale() {
        return this.field_2_verticalScale;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(this.field_1_horizontalScale);
        littleEndianOutput.writeInt(this.field_2_verticalScale);
    }

    public void setHorizontalScale(int i) {
        this.field_1_horizontalScale = i;
    }

    public void setVerticalScale(int i) {
        this.field_2_verticalScale = i;
    }

    public PlotGrowthRecord(PlotGrowthRecord plotGrowthRecord) {
        this.field_1_horizontalScale = plotGrowthRecord.field_1_horizontalScale;
        this.field_2_verticalScale = plotGrowthRecord.field_2_verticalScale;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.PLOT_GROWTH;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public PlotGrowthRecord copy() {
        return new PlotGrowthRecord(this);
    }

    public PlotGrowthRecord(RecordInputStream recordInputStream) {
        this.field_1_horizontalScale = recordInputStream.readInt();
        this.field_2_verticalScale = recordInputStream.readInt();
    }
}
