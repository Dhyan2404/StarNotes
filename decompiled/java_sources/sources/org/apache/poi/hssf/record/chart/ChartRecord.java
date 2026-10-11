package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.ChartRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ChartRecord extends StandardRecord {
    public static final short sid = 4098;
    private int field_1_x;
    private int field_2_y;
    private int field_3_width;
    private int field_4_height;

    public ChartRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 16;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("x", new Supplier() { // from class: com.sunia.HTREnginev2.lsd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ChartRecord.this.getX());
            }
        }, "y", new Supplier() { // from class: com.sunia.HTREnginev2.msd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ChartRecord.this.getY());
            }
        }, "width", new Supplier() { // from class: com.sunia.HTREnginev2.nsd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ChartRecord.this.getWidth());
            }
        }, "height", new Supplier() { // from class: com.sunia.HTREnginev2.osd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ChartRecord.this.getHeight());
            }
        });
    }

    public int getHeight() {
        return this.field_4_height;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public int getWidth() {
        return this.field_3_width;
    }

    public int getX() {
        return this.field_1_x;
    }

    public int getY() {
        return this.field_2_y;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(this.field_1_x);
        littleEndianOutput.writeInt(this.field_2_y);
        littleEndianOutput.writeInt(this.field_3_width);
        littleEndianOutput.writeInt(this.field_4_height);
    }

    public void setHeight(int i) {
        this.field_4_height = i;
    }

    public void setWidth(int i) {
        this.field_3_width = i;
    }

    public void setX(int i) {
        this.field_1_x = i;
    }

    public void setY(int i) {
        this.field_2_y = i;
    }

    public ChartRecord(ChartRecord chartRecord) {
        super(chartRecord);
        this.field_1_x = chartRecord.field_1_x;
        this.field_2_y = chartRecord.field_2_y;
        this.field_3_width = chartRecord.field_3_width;
        this.field_4_height = chartRecord.field_4_height;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.CHART;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ChartRecord copy() {
        return new ChartRecord(this);
    }

    public ChartRecord(RecordInputStream recordInputStream) {
        this.field_1_x = recordInputStream.readInt();
        this.field_2_y = recordInputStream.readInt();
        this.field_3_width = recordInputStream.readInt();
        this.field_4_height = recordInputStream.readInt();
    }
}
