package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.RefreshAllRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class RefreshAllRecord extends StandardRecord {
    private static final BitField refreshFlag = BitFieldFactory.getInstance(1);
    public static final short sid = 439;
    private int _options;

    private RefreshAllRecord(int i) {
        this._options = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this._options);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("options", new Supplier() { // from class: com.sunia.HTREnginev2.fjl
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = RefreshAllRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "refreshAll", new Supplier() { // from class: com.sunia.HTREnginev2.gjl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(RefreshAllRecord.this.getRefreshAll());
            }
        });
    }

    public boolean getRefreshAll() {
        return refreshFlag.isSet(this._options);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._options);
    }

    public void setRefreshAll(boolean z) {
        this._options = refreshFlag.setBoolean(this._options, z);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.REFRESH_ALL;
    }

    private RefreshAllRecord(RefreshAllRecord refreshAllRecord) {
        super(refreshAllRecord);
        this._options = refreshAllRecord._options;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public RefreshAllRecord copy() {
        return new RefreshAllRecord(this);
    }

    public RefreshAllRecord(RecordInputStream recordInputStream) {
        this(recordInputStream.readUShort());
    }

    public RefreshAllRecord(boolean z) {
        this(0);
        setRefreshAll(z);
    }
}
