package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.LinkedDataRecord;
import org.apache.poi.ss.formula.Formula;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class LinkedDataRecord extends StandardRecord {
    public static final byte LINK_TYPE_CATEGORIES = 2;
    public static final byte LINK_TYPE_SECONDARY_CATEGORIES = 3;
    public static final byte LINK_TYPE_TITLE_OR_TEXT = 0;
    public static final byte LINK_TYPE_VALUES = 1;
    public static final byte REFERENCE_TYPE_DEFAULT_CATEGORIES = 0;
    public static final byte REFERENCE_TYPE_DIRECT = 1;
    public static final byte REFERENCE_TYPE_ERROR_REPORTED = 4;
    public static final byte REFERENCE_TYPE_NOT_USED = 3;
    public static final byte REFERENCE_TYPE_WORKSHEET = 2;
    private static final BitField customNumberFormat = BitFieldFactory.getInstance(1);
    public static final short sid = 4177;
    private byte field_1_linkType;
    private byte field_2_referenceType;
    private short field_3_options;
    private short field_4_indexNumberFmtRecord;
    private Formula field_5_formulaOfLink;

    public LinkedDataRecord() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this.field_5_formulaOfLink;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return this.field_5_formulaOfLink.getEncodedSize() + 6;
    }

    public Ptg[] getFormulaOfLink() {
        return this.field_5_formulaOfLink.getTokens();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("linkType", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.jzi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(LinkedDataRecord.this.getLinkType());
            }
        }, new int[]{0, 1, 2, 3}, new String[]{"TITLE_OR_TEXT", "VALUES", "CATEGORIES", "SECONDARY_CATEGORIES"}), "referenceType", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.kzi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(LinkedDataRecord.this.getReferenceType());
            }
        }, new int[]{0, 1, 2, 3, 4}, new String[]{"DEFAULT_CATEGORIES", "DIRECT", "WORKSHEET", "NOT_USED", "ERROR_REPORTED"}), "options", new Supplier() { // from class: com.sunia.HTREnginev2.lzi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(LinkedDataRecord.this.getOptions());
            }
        }, "customNumberFormat", new Supplier() { // from class: com.sunia.HTREnginev2.mzi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(LinkedDataRecord.this.isCustomNumberFormat());
            }
        }, "indexNumberFmtRecord", new Supplier() { // from class: com.sunia.HTREnginev2.nzi
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(LinkedDataRecord.this.getIndexNumberFmtRecord());
            }
        }, "formulaOfLink", new Supplier() { // from class: com.sunia.HTREnginev2.ozi
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = LinkedDataRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    public short getIndexNumberFmtRecord() {
        return this.field_4_indexNumberFmtRecord;
    }

    public byte getLinkType() {
        return this.field_1_linkType;
    }

    public short getOptions() {
        return this.field_3_options;
    }

    public byte getReferenceType() {
        return this.field_2_referenceType;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public boolean isCustomNumberFormat() {
        return customNumberFormat.isSet(this.field_3_options);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(this.field_1_linkType);
        littleEndianOutput.writeByte(this.field_2_referenceType);
        littleEndianOutput.writeShort(this.field_3_options);
        littleEndianOutput.writeShort(this.field_4_indexNumberFmtRecord);
        this.field_5_formulaOfLink.serialize(littleEndianOutput);
    }

    public void setCustomNumberFormat(boolean z) {
        this.field_3_options = customNumberFormat.setShortBoolean(this.field_3_options, z);
    }

    public void setFormulaOfLink(Ptg[] ptgArr) {
        this.field_5_formulaOfLink = Formula.create(ptgArr);
    }

    public void setIndexNumberFmtRecord(short s) {
        this.field_4_indexNumberFmtRecord = s;
    }

    public void setLinkType(byte b) {
        this.field_1_linkType = b;
    }

    public void setOptions(short s) {
        this.field_3_options = s;
    }

    public void setReferenceType(byte b) {
        this.field_2_referenceType = b;
    }

    public LinkedDataRecord(LinkedDataRecord linkedDataRecord) {
        super(linkedDataRecord);
        this.field_1_linkType = linkedDataRecord.field_1_linkType;
        this.field_2_referenceType = linkedDataRecord.field_2_referenceType;
        this.field_3_options = linkedDataRecord.field_3_options;
        this.field_4_indexNumberFmtRecord = linkedDataRecord.field_4_indexNumberFmtRecord;
        Formula formula = linkedDataRecord.field_5_formulaOfLink;
        this.field_5_formulaOfLink = formula == null ? null : formula.copy();
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.LINKED_DATA;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public LinkedDataRecord copy() {
        return new LinkedDataRecord(this);
    }

    public LinkedDataRecord(RecordInputStream recordInputStream) {
        this.field_1_linkType = recordInputStream.readByte();
        this.field_2_referenceType = recordInputStream.readByte();
        this.field_3_options = recordInputStream.readShort();
        this.field_4_indexNumberFmtRecord = recordInputStream.readShort();
        this.field_5_formulaOfLink = Formula.read(recordInputStream.readUShort(), recordInputStream);
    }
}
