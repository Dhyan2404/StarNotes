package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hssf.record.LabelRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class LabelRecord extends Record implements CellValueRecordInterface {
    private static final Logger LOG = LogManager.getLogger((Class<?>) LabelRecord.class);
    public static final short sid = 516;
    private int field_1_row;
    private short field_2_column;
    private short field_3_xf_index;
    private short field_4_string_len;
    private byte field_5_unicode_flag;
    private String field_6_value;

    public LabelRecord() {
    }

    @Override // org.apache.poi.hssf.record.CellValueRecordInterface
    public short getColumn() {
        return this.field_2_column;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("row", new Supplier() { // from class: com.sunia.HTREnginev2.sui
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(LabelRecord.this.getRow());
            }
        }, "column", new Supplier() { // from class: com.sunia.HTREnginev2.tui
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(LabelRecord.this.getColumn());
            }
        }, "xfIndex", new Supplier() { // from class: com.sunia.HTREnginev2.uui
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(LabelRecord.this.getXFIndex());
            }
        }, "stringLen", new Supplier() { // from class: com.sunia.HTREnginev2.vui
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(LabelRecord.this.getStringLength());
            }
        }, "unCompressedUnicode", new Supplier() { // from class: com.sunia.HTREnginev2.wui
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(LabelRecord.this.isUnCompressedUnicode());
            }
        }, "value", new Supplier() { // from class: com.sunia.HTREnginev2.xui
            @Override // java.util.function.Supplier
            public final Object get() {
                return LabelRecord.this.getValue();
            }
        });
    }

    @Override // org.apache.poi.hssf.record.RecordBase
    public int getRecordSize() {
        throw new RecordFormatException("Label Records are supported READ ONLY...convert to LabelSST");
    }

    @Override // org.apache.poi.hssf.record.CellValueRecordInterface
    public int getRow() {
        return this.field_1_row;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 516;
    }

    public short getStringLength() {
        return this.field_4_string_len;
    }

    public String getValue() {
        return this.field_6_value;
    }

    @Override // org.apache.poi.hssf.record.CellValueRecordInterface
    public short getXFIndex() {
        return this.field_3_xf_index;
    }

    public boolean isUnCompressedUnicode() {
        return (this.field_5_unicode_flag & 1) != 0;
    }

    @Override // org.apache.poi.hssf.record.RecordBase
    public int serialize(int i, byte[] bArr) {
        throw new RecordFormatException("Label Records are supported READ ONLY...convert to LabelSST");
    }

    @Override // org.apache.poi.hssf.record.CellValueRecordInterface
    public void setColumn(short s) {
    }

    @Override // org.apache.poi.hssf.record.CellValueRecordInterface
    public void setRow(int i) {
    }

    @Override // org.apache.poi.hssf.record.CellValueRecordInterface
    public void setXFIndex(short s) {
    }

    public LabelRecord(LabelRecord labelRecord) {
        super(labelRecord);
        this.field_1_row = labelRecord.field_1_row;
        this.field_2_column = labelRecord.field_2_column;
        this.field_3_xf_index = labelRecord.field_3_xf_index;
        this.field_4_string_len = labelRecord.field_4_string_len;
        this.field_5_unicode_flag = labelRecord.field_5_unicode_flag;
        this.field_6_value = labelRecord.field_6_value;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.LABEL;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public LabelRecord copy() {
        return new LabelRecord(this);
    }

    public LabelRecord(RecordInputStream recordInputStream) {
        this.field_1_row = recordInputStream.readUShort();
        this.field_2_column = recordInputStream.readShort();
        this.field_3_xf_index = recordInputStream.readShort();
        this.field_4_string_len = recordInputStream.readShort();
        this.field_5_unicode_flag = recordInputStream.readByte();
        if (this.field_4_string_len > 0) {
            if (isUnCompressedUnicode()) {
                this.field_6_value = recordInputStream.readUnicodeLEString(this.field_4_string_len);
            } else {
                this.field_6_value = recordInputStream.readCompressedUnicode(this.field_4_string_len);
            }
        } else {
            this.field_6_value = "";
        }
        if (recordInputStream.remaining() > 0) {
            LOG.atInfo().log("LabelRecord data remains: {} : {}", Unbox.box(recordInputStream.remaining()), HexDump.toHex(recordInputStream.readRemainder()));
        }
    }
}
