package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.GutsRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class GutsRecord extends StandardRecord {
    public static final short sid = 128;
    private short field_1_left_row_gutter;
    private short field_2_top_col_gutter;
    private short field_3_row_level_max;
    private short field_4_col_level_max;

    public GutsRecord() {
    }

    public short getColLevelMax() {
        return this.field_4_col_level_max;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 8;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("leftGutter", new Supplier() { // from class: com.sunia.HTREnginev2.o6h
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(GutsRecord.this.getLeftRowGutter());
            }
        }, "topGutter", new Supplier() { // from class: com.sunia.HTREnginev2.p6h
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(GutsRecord.this.getTopColGutter());
            }
        }, "rowLevelMax", new Supplier() { // from class: com.sunia.HTREnginev2.q6h
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(GutsRecord.this.getRowLevelMax());
            }
        }, "colLevelMax", new Supplier() { // from class: com.sunia.HTREnginev2.r6h
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(GutsRecord.this.getColLevelMax());
            }
        });
    }

    public short getLeftRowGutter() {
        return this.field_1_left_row_gutter;
    }

    public short getRowLevelMax() {
        return this.field_3_row_level_max;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 128;
    }

    public short getTopColGutter() {
        return this.field_2_top_col_gutter;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getLeftRowGutter());
        littleEndianOutput.writeShort(getTopColGutter());
        littleEndianOutput.writeShort(getRowLevelMax());
        littleEndianOutput.writeShort(getColLevelMax());
    }

    public void setColLevelMax(short s) {
        this.field_4_col_level_max = s;
    }

    public void setLeftRowGutter(short s) {
        this.field_1_left_row_gutter = s;
    }

    public void setRowLevelMax(short s) {
        this.field_3_row_level_max = s;
    }

    public void setTopColGutter(short s) {
        this.field_2_top_col_gutter = s;
    }

    public GutsRecord(GutsRecord gutsRecord) {
        super(gutsRecord);
        this.field_1_left_row_gutter = gutsRecord.field_1_left_row_gutter;
        this.field_2_top_col_gutter = gutsRecord.field_2_top_col_gutter;
        this.field_3_row_level_max = gutsRecord.field_3_row_level_max;
        this.field_4_col_level_max = gutsRecord.field_4_col_level_max;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.GUTS;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public GutsRecord copy() {
        return new GutsRecord(this);
    }

    public GutsRecord(RecordInputStream recordInputStream) {
        this.field_1_left_row_gutter = recordInputStream.readShort();
        this.field_2_top_col_gutter = recordInputStream.readShort();
        this.field_3_row_level_max = recordInputStream.readShort();
        this.field_4_col_level_max = recordInputStream.readShort();
    }
}
