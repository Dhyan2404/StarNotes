package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.ObjectProtectRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ObjectProtectRecord extends StandardRecord {
    public static final short sid = 99;
    private short field_1_protect;

    public ObjectProtectRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("protect", new Supplier() { // from class: com.sunia.HTREnginev2.f7k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(ObjectProtectRecord.this.getProtect());
            }
        });
    }

    public boolean getProtect() {
        return this.field_1_protect == 1;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 99;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_protect);
    }

    public void setProtect(boolean z) {
        this.field_1_protect = z ? (short) 1 : (short) 0;
    }

    public ObjectProtectRecord(ObjectProtectRecord objectProtectRecord) {
        super(objectProtectRecord);
        this.field_1_protect = objectProtectRecord.field_1_protect;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.OBJECT_PROTECT;
    }

    public ObjectProtectRecord(RecordInputStream recordInputStream) {
        this.field_1_protect = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ObjectProtectRecord copy() {
        return new ObjectProtectRecord(this);
    }
}
