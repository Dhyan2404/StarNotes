package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.IterationRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class IterationRecord extends StandardRecord {
    private static final BitField iterationOn = BitFieldFactory.getInstance(1);
    public static final short sid = 17;
    private int _flags;

    public IterationRecord(IterationRecord iterationRecord) {
        super(iterationRecord);
        this._flags = iterationRecord._flags;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this._flags);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("flags", new Supplier() { // from class: com.sunia.HTREnginev2.lqi
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = IterationRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "iteration", new Supplier() { // from class: com.sunia.HTREnginev2.mqi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(IterationRecord.this.getIteration());
            }
        });
    }

    public boolean getIteration() {
        return iterationOn.isSet(this._flags);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 17;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._flags);
    }

    public void setIteration(boolean z) {
        this._flags = iterationOn.setBoolean(this._flags, z);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.ITERATION;
    }

    public IterationRecord(boolean z) {
        this._flags = iterationOn.setBoolean(0, z);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public IterationRecord copy() {
        return new IterationRecord(this);
    }

    public IterationRecord(RecordInputStream recordInputStream) {
        this._flags = recordInputStream.readShort();
    }
}
