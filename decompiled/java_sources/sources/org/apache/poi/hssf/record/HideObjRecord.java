package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HideObjRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class HideObjRecord extends StandardRecord {
    public static final short HIDE_ALL = 2;
    public static final short SHOW_ALL = 0;
    public static final short SHOW_PLACEHOLDERS = 1;
    public static final short sid = 141;
    private short field_1_hide_obj;

    public HideObjRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("hideObj", new Supplier() { // from class: com.sunia.HTREnginev2.dzh
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(HideObjRecord.this.getHideObj());
            }
        });
    }

    public short getHideObj() {
        return this.field_1_hide_obj;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 141;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getHideObj());
    }

    public void setHideObj(short s) {
        this.field_1_hide_obj = s;
    }

    public HideObjRecord(HideObjRecord hideObjRecord) {
        super(hideObjRecord);
        this.field_1_hide_obj = hideObjRecord.field_1_hide_obj;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.HIDE_OBJ;
    }

    public HideObjRecord(RecordInputStream recordInputStream) {
        this.field_1_hide_obj = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public HideObjRecord copy() {
        return new HideObjRecord(this);
    }
}
