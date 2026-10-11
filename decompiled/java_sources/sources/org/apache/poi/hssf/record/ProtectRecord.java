package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.ProtectRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ProtectRecord extends StandardRecord {
    private static final BitField protectFlag = BitFieldFactory.getInstance(1);
    public static final short sid = 18;
    private int _options;

    private ProtectRecord(int i) {
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
        return GenericRecordUtil.getGenericProperties("options", new Supplier() { // from class: com.sunia.HTREnginev2.z8l
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = ProtectRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "protect", new Supplier() { // from class: com.sunia.HTREnginev2.a9l
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(ProtectRecord.this.getProtect());
            }
        });
    }

    public boolean getProtect() {
        return protectFlag.isSet(this._options);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 18;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._options);
    }

    public void setProtect(boolean z) {
        this._options = protectFlag.setBoolean(this._options, z);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.PROTECT;
    }

    private ProtectRecord(ProtectRecord protectRecord) {
        super(protectRecord);
        this._options = protectRecord._options;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ProtectRecord copy() {
        return new ProtectRecord(this);
    }

    public ProtectRecord(boolean z) {
        this(0);
        setProtect(z);
    }

    public ProtectRecord(RecordInputStream recordInputStream) {
        this(recordInputStream.readShort());
    }
}
