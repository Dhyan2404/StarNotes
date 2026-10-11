package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.DefaultRowHeightRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class DefaultRowHeightRecord extends StandardRecord {
    public static final short DEFAULT_ROW_HEIGHT = 255;
    public static final short sid = 549;
    private short field_1_option_flags;
    private short field_2_row_height;

    public DefaultRowHeightRecord() {
        this.field_1_option_flags = (short) 0;
        this.field_2_row_height = (short) 255;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 4;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("optionFlags", new Supplier() { // from class: com.sunia.HTREnginev2.d0f
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(DefaultRowHeightRecord.this.getOptionFlags());
            }
        }, "rowHeight", new Supplier() { // from class: com.sunia.HTREnginev2.e0f
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(DefaultRowHeightRecord.this.getRowHeight());
            }
        });
    }

    public short getOptionFlags() {
        return this.field_1_option_flags;
    }

    public short getRowHeight() {
        return this.field_2_row_height;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getOptionFlags());
        littleEndianOutput.writeShort(getRowHeight());
    }

    public void setOptionFlags(short s) {
        this.field_1_option_flags = s;
    }

    public void setRowHeight(short s) {
        this.field_2_row_height = s;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.DEFAULT_ROW_HEIGHT;
    }

    public DefaultRowHeightRecord(DefaultRowHeightRecord defaultRowHeightRecord) {
        super(defaultRowHeightRecord);
        this.field_1_option_flags = defaultRowHeightRecord.field_1_option_flags;
        this.field_2_row_height = defaultRowHeightRecord.field_2_row_height;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public DefaultRowHeightRecord copy() {
        return new DefaultRowHeightRecord(this);
    }

    public DefaultRowHeightRecord(RecordInputStream recordInputStream) {
        this.field_1_option_flags = recordInputStream.readShort();
        this.field_2_row_height = recordInputStream.readShort();
    }
}
