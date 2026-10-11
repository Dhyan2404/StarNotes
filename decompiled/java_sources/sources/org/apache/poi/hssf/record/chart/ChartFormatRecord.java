package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.ChartFormatRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ChartFormatRecord extends StandardRecord {
    public static final short sid = 4116;
    private static final BitField varyDisplayPattern = BitFieldFactory.getInstance(1);
    private int field1_x_position;
    private int field2_y_position;
    private int field3_width;
    private int field4_height;
    private int field5_grbit;
    private int field6_unknown;

    public ChartFormatRecord() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.field5_grbit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.field6_unknown);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 20;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("x", new Supplier() { // from class: com.sunia.HTREnginev2.esd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ChartFormatRecord.this.getXPosition());
            }
        }, "y", new Supplier() { // from class: com.sunia.HTREnginev2.fsd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ChartFormatRecord.this.getYPosition());
            }
        }, "width", new Supplier() { // from class: com.sunia.HTREnginev2.gsd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ChartFormatRecord.this.getWidth());
            }
        }, "height", new Supplier() { // from class: com.sunia.HTREnginev2.hsd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ChartFormatRecord.this.getHeight());
            }
        }, "grbit", new Supplier() { // from class: com.sunia.HTREnginev2.isd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = ChartFormatRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "varyDisplayPattern", new Supplier() { // from class: com.sunia.HTREnginev2.jsd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(ChartFormatRecord.this.getVaryDisplayPattern());
            }
        }, "unknown", new Supplier() { // from class: com.sunia.HTREnginev2.ksd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = ChartFormatRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    public int getHeight() {
        return this.field4_height;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public boolean getVaryDisplayPattern() {
        return varyDisplayPattern.isSet(this.field5_grbit);
    }

    public int getWidth() {
        return this.field3_width;
    }

    public int getXPosition() {
        return this.field1_x_position;
    }

    public int getYPosition() {
        return this.field2_y_position;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(getXPosition());
        littleEndianOutput.writeInt(getYPosition());
        littleEndianOutput.writeInt(getWidth());
        littleEndianOutput.writeInt(getHeight());
        littleEndianOutput.writeShort(this.field5_grbit);
        littleEndianOutput.writeShort(this.field6_unknown);
    }

    public void setHeight(int i) {
        this.field4_height = i;
    }

    public void setVaryDisplayPattern(boolean z) {
        this.field5_grbit = varyDisplayPattern.setBoolean(this.field5_grbit, z);
    }

    public void setWidth(int i) {
        this.field3_width = i;
    }

    public void setXPosition(int i) {
        this.field1_x_position = i;
    }

    public void setYPosition(int i) {
        this.field2_y_position = i;
    }

    public ChartFormatRecord(ChartFormatRecord chartFormatRecord) {
        super(chartFormatRecord);
        this.field1_x_position = chartFormatRecord.field1_x_position;
        this.field2_y_position = chartFormatRecord.field2_y_position;
        this.field3_width = chartFormatRecord.field3_width;
        this.field4_height = chartFormatRecord.field4_height;
        this.field5_grbit = chartFormatRecord.field5_grbit;
        this.field6_unknown = chartFormatRecord.field6_unknown;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.CHART_FORMAT;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ChartFormatRecord copy() {
        return new ChartFormatRecord(this);
    }

    public ChartFormatRecord(RecordInputStream recordInputStream) {
        this.field1_x_position = recordInputStream.readInt();
        this.field2_y_position = recordInputStream.readInt();
        this.field3_width = recordInputStream.readInt();
        this.field4_height = recordInputStream.readInt();
        this.field5_grbit = recordInputStream.readUShort();
        this.field6_unknown = recordInputStream.readUShort();
    }
}
