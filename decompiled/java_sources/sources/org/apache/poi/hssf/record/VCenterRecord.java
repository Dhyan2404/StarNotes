package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.VCenterRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class VCenterRecord extends StandardRecord {
    public static final short sid = 132;
    private int field_1_vcenter;

    public VCenterRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("vcenter", new Supplier() { // from class: com.sunia.HTREnginev2.ozn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(VCenterRecord.this.getVCenter());
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 132;
    }

    public boolean getVCenter() {
        return this.field_1_vcenter == 1;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_vcenter);
    }

    public void setVCenter(boolean z) {
        this.field_1_vcenter = z ? 1 : 0;
    }

    public VCenterRecord(VCenterRecord vCenterRecord) {
        super(vCenterRecord);
        this.field_1_vcenter = vCenterRecord.field_1_vcenter;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.V_CENTER;
    }

    public VCenterRecord(RecordInputStream recordInputStream) {
        this.field_1_vcenter = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public VCenterRecord copy() {
        return new VCenterRecord(this);
    }
}
