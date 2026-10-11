package org.apache.poi.hssf.eventusermodel.dummyrecord;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.eventusermodel.dummyrecord.LastCellOfRowDummyRecord;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public final class LastCellOfRowDummyRecord extends DummyRecordBase {
    private final int lastColumnNumber;
    private final int row;

    public LastCellOfRowDummyRecord(int i, int i2) {
        this.row = i;
        this.lastColumnNumber = i2;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public LastCellOfRowDummyRecord copy() {
        return this;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("row", new Supplier() { // from class: com.sunia.HTREnginev2.jvi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(LastCellOfRowDummyRecord.this.getRow());
            }
        }, "lastColumnNumber", new Supplier() { // from class: com.sunia.HTREnginev2.kvi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(LastCellOfRowDummyRecord.this.getLastColumnNumber());
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return null;
    }

    public int getLastColumnNumber() {
        return this.lastColumnNumber;
    }

    public int getRow() {
        return this.row;
    }

    @Override // org.apache.poi.hssf.eventusermodel.dummyrecord.DummyRecordBase, org.apache.poi.hssf.record.RecordBase
    public /* bridge */ /* synthetic */ int serialize(int i, byte[] bArr) {
        return super.serialize(i, bArr);
    }
}
