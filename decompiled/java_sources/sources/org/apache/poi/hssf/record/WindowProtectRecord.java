package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.WindowProtectRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class WindowProtectRecord extends StandardRecord {
    private static final BitField settingsProtectedFlag = BitFieldFactory.getInstance(1);
    public static final short sid = 25;
    private int _options;

    public WindowProtectRecord(int i) {
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
        return GenericRecordUtil.getGenericProperties("options", new Supplier() { // from class: com.sunia.HTREnginev2.r9o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = WindowProtectRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "protect", new Supplier() { // from class: com.sunia.HTREnginev2.s9o
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(WindowProtectRecord.this.getProtect());
            }
        });
    }

    public boolean getProtect() {
        return settingsProtectedFlag.isSet(this._options);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 25;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._options);
    }

    public void setProtect(boolean z) {
        this._options = settingsProtectedFlag.setBoolean(this._options, z);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.WINDOW_PROTECT;
    }

    public WindowProtectRecord(WindowProtectRecord windowProtectRecord) {
        super(windowProtectRecord);
        this._options = windowProtectRecord._options;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public WindowProtectRecord copy() {
        return new WindowProtectRecord(this);
    }

    public WindowProtectRecord(RecordInputStream recordInputStream) {
        this(recordInputStream.readUShort());
    }

    public WindowProtectRecord(boolean z) {
        this(0);
        setProtect(z);
    }
}
