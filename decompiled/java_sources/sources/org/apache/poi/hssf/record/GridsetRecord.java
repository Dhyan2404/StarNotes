package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.GridsetRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class GridsetRecord extends StandardRecord {
    public static final short sid = 130;
    private short field_1_gridset_flag;

    public GridsetRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("gridset", new Supplier() { // from class: com.sunia.HTREnginev2.a5h
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(GridsetRecord.this.getGridset());
            }
        });
    }

    public boolean getGridset() {
        return this.field_1_gridset_flag == 1;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 130;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_gridset_flag);
    }

    public void setGridset(boolean z) {
        if (z) {
            this.field_1_gridset_flag = (short) 1;
        } else {
            this.field_1_gridset_flag = (short) 0;
        }
    }

    public GridsetRecord(GridsetRecord gridsetRecord) {
        super(gridsetRecord);
        this.field_1_gridset_flag = gridsetRecord.field_1_gridset_flag;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.GRIDSET;
    }

    public GridsetRecord(RecordInputStream recordInputStream) {
        this.field_1_gridset_flag = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public GridsetRecord copy() {
        return new GridsetRecord(this);
    }
}
