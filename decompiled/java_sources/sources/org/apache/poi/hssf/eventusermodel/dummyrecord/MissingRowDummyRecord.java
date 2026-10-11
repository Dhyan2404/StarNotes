package org.apache.poi.hssf.eventusermodel.dummyrecord;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.eventusermodel.dummyrecord.MissingRowDummyRecord;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public final class MissingRowDummyRecord extends DummyRecordBase {
    private final int rowNumber;

    public MissingRowDummyRecord(int i) {
        this.rowNumber = i;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public MissingRowDummyRecord copy() {
        return this;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("rowNumber", new Supplier() { // from class: com.sunia.HTREnginev2.boj
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(MissingRowDummyRecord.this.getRowNumber());
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return null;
    }

    public int getRowNumber() {
        return this.rowNumber;
    }

    @Override // org.apache.poi.hssf.eventusermodel.dummyrecord.DummyRecordBase, org.apache.poi.hssf.record.RecordBase
    public /* bridge */ /* synthetic */ int serialize(int i, byte[] bArr) {
        return super.serialize(i, bArr);
    }
}
