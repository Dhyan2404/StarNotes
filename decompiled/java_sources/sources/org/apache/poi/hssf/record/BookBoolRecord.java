package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.BookBoolRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class BookBoolRecord extends StandardRecord {
    public static final short sid = 218;
    private short field_1_save_link_values;

    public BookBoolRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("saveLinkValues", new Supplier() { // from class: com.sunia.HTREnginev2.dt
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(BookBoolRecord.this.getSaveLinkValues());
            }
        });
    }

    public short getSaveLinkValues() {
        return this.field_1_save_link_values;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 218;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_save_link_values);
    }

    public void setSaveLinkValues(short s) {
        this.field_1_save_link_values = s;
    }

    public BookBoolRecord(BookBoolRecord bookBoolRecord) {
        super(bookBoolRecord);
        this.field_1_save_link_values = bookBoolRecord.field_1_save_link_values;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.BOOK_BOOL;
    }

    public BookBoolRecord(RecordInputStream recordInputStream) {
        this.field_1_save_link_values = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public BookBoolRecord copy() {
        return new BookBoolRecord(this);
    }
}
