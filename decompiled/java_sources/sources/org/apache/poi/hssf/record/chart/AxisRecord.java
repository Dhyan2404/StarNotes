package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.AxisRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class AxisRecord extends StandardRecord {
    public static final short AXIS_TYPE_CATEGORY_OR_X_AXIS = 0;
    public static final short AXIS_TYPE_SERIES_AXIS = 2;
    public static final short AXIS_TYPE_VALUE_AXIS = 1;
    public static final short sid = 4125;
    private short field_1_axisType;
    private int field_2_reserved1;
    private int field_3_reserved2;
    private int field_4_reserved3;
    private int field_5_reserved4;

    public AxisRecord() {
    }

    public short getAxisType() {
        return this.field_1_axisType;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 18;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("axisType", new Supplier() { // from class: com.sunia.HTREnginev2.gl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AxisRecord.this.getAxisType());
            }
        }, "reserved1", new Supplier() { // from class: com.sunia.HTREnginev2.hl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AxisRecord.this.getReserved1());
            }
        }, "reserved2", new Supplier() { // from class: com.sunia.HTREnginev2.il
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AxisRecord.this.getReserved2());
            }
        }, "reserved3", new Supplier() { // from class: com.sunia.HTREnginev2.jl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AxisRecord.this.getReserved3());
            }
        }, "reserved4", new Supplier() { // from class: com.sunia.HTREnginev2.kl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AxisRecord.this.getReserved4());
            }
        });
    }

    public int getReserved1() {
        return this.field_2_reserved1;
    }

    public int getReserved2() {
        return this.field_3_reserved2;
    }

    public int getReserved3() {
        return this.field_4_reserved3;
    }

    public int getReserved4() {
        return this.field_5_reserved4;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_axisType);
        littleEndianOutput.writeInt(this.field_2_reserved1);
        littleEndianOutput.writeInt(this.field_3_reserved2);
        littleEndianOutput.writeInt(this.field_4_reserved3);
        littleEndianOutput.writeInt(this.field_5_reserved4);
    }

    public void setAxisType(short s) {
        this.field_1_axisType = s;
    }

    public void setReserved1(int i) {
        this.field_2_reserved1 = i;
    }

    public void setReserved2(int i) {
        this.field_3_reserved2 = i;
    }

    public void setReserved3(int i) {
        this.field_4_reserved3 = i;
    }

    public void setReserved4(int i) {
        this.field_5_reserved4 = i;
    }

    public AxisRecord(AxisRecord axisRecord) {
        super(axisRecord);
        this.field_1_axisType = axisRecord.field_1_axisType;
        this.field_2_reserved1 = axisRecord.field_2_reserved1;
        this.field_3_reserved2 = axisRecord.field_3_reserved2;
        this.field_4_reserved3 = axisRecord.field_4_reserved3;
        this.field_5_reserved4 = axisRecord.field_5_reserved4;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.AXIS;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public AxisRecord copy() {
        return new AxisRecord(this);
    }

    public AxisRecord(RecordInputStream recordInputStream) {
        this.field_1_axisType = recordInputStream.readShort();
        this.field_2_reserved1 = recordInputStream.readInt();
        this.field_3_reserved2 = recordInputStream.readInt();
        this.field_4_reserved3 = recordInputStream.readInt();
        this.field_5_reserved4 = recordInputStream.readInt();
    }
}
