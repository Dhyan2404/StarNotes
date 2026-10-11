package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.CodepageRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class CodepageRecord extends StandardRecord {
    public static final short CODEPAGE = 1200;
    public static final short sid = 66;
    private short field_1_codepage;

    public CodepageRecord() {
    }

    public short getCodepage() {
        return this.field_1_codepage;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("codepage", new Supplier() { // from class: com.sunia.HTREnginev2.pwd
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(CodepageRecord.this.getCodepage());
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 66;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getCodepage());
    }

    public void setCodepage(short s) {
        this.field_1_codepage = s;
    }

    public CodepageRecord(CodepageRecord codepageRecord) {
        super(codepageRecord);
        this.field_1_codepage = codepageRecord.field_1_codepage;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.CODEPAGE;
    }

    public CodepageRecord(RecordInputStream recordInputStream) {
        this.field_1_codepage = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public CodepageRecord copy() {
        return new CodepageRecord(this);
    }
}
