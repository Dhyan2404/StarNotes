package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.ProtectionRev4Record;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ProtectionRev4Record extends StandardRecord {
    private static final BitField protectedFlag = BitFieldFactory.getInstance(1);
    public static final short sid = 431;
    private int _options;

    private ProtectionRev4Record(int i) {
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
        return GenericRecordUtil.getGenericProperties("options", new Supplier() { // from class: com.sunia.HTREnginev2.b9l
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = ProtectionRev4Record.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "protect", new Supplier() { // from class: com.sunia.HTREnginev2.c9l
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(ProtectionRev4Record.this.getProtect());
            }
        });
    }

    public boolean getProtect() {
        return protectedFlag.isSet(this._options);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._options);
    }

    public void setProtect(boolean z) {
        this._options = protectedFlag.setBoolean(this._options, z);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.PROTECTION_REV_4;
    }

    private ProtectionRev4Record(ProtectionRev4Record protectionRev4Record) {
        super(protectionRev4Record);
        this._options = protectionRev4Record._options;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ProtectionRev4Record copy() {
        return new ProtectionRev4Record(this);
    }

    public ProtectionRev4Record(boolean z) {
        this(0);
        setProtect(z);
    }

    public ProtectionRev4Record(RecordInputStream recordInputStream) {
        this(recordInputStream.readUShort());
    }
}
