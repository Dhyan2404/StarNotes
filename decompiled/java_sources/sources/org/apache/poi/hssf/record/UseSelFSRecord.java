package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.UseSelFSRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class UseSelFSRecord extends StandardRecord {
    public static final short sid = 352;
    private static final BitField useNaturalLanguageFormulasFlag = BitFieldFactory.getInstance(1);
    private int _options;

    private UseSelFSRecord(UseSelFSRecord useSelFSRecord) {
        super(useSelFSRecord);
        this._options = useSelFSRecord._options;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getGenericProperties$0() {
        return Integer.valueOf(this._options);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("options", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.dyn
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = UseSelFSRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, new BitField[]{useNaturalLanguageFormulasFlag}, new String[]{"USE_NATURAL_LANGUAGE_FORMULAS_FLAG"}));
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._options);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.USE_SEL_FS;
    }

    private UseSelFSRecord(int i) {
        this._options = i;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public UseSelFSRecord copy() {
        return new UseSelFSRecord(this);
    }

    public UseSelFSRecord(RecordInputStream recordInputStream) {
        this(recordInputStream.readUShort());
    }

    public UseSelFSRecord(boolean z) {
        this(0);
        this._options = useNaturalLanguageFormulasFlag.setBoolean(this._options, z);
    }
}
