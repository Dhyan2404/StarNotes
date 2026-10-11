package org.apache.poi.hssf.record;

import com.sunia.HTREnginev2.w6g;
import java.util.Map;
import java.util.function.Supplier;
import kotlin.jvm.internal.ShortCompanionObject;
import org.apache.poi.hssf.record.ExternalNameRecord;
import org.apache.poi.ss.formula.Formula;
import org.apache.poi.ss.formula.constant.ConstantValueParser;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class ExternalNameRecord extends StandardRecord {
    private static final int[] OPTION_FLAGS = {1, 2, 4, 8, 16, 32768};
    private static final String[] OPTION_NAMES = {"BUILTIN_NAME", "AUTOMATIC_LINK", "PICTURE_LINK", "STD_DOCUMENT_NAME", "OLE_LINK", "ICONIFIED_PICTURE_LINK"};
    private static final int OPT_AUTOMATIC_LINK = 2;
    private static final int OPT_BUILTIN_NAME = 1;
    private static final int OPT_ICONIFIED_PICTURE_LINK = 32768;
    private static final int OPT_OLE_LINK = 16;
    private static final int OPT_PICTURE_LINK = 4;
    private static final int OPT_STD_DOCUMENT_NAME = 8;
    public static final short sid = 35;
    private Object[] _ddeValues;
    private int _nColumns;
    private int _nRows;
    private short field_1_option_flag;
    private short field_2_ixals;
    private short field_3_not_used;
    private String field_4_name;
    private Formula field_5_name_definition;

    public ExternalNameRecord() {
        this.field_2_ixals = (short) 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getGenericProperties$0() {
        return Short.valueOf(this.field_1_option_flag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$getGenericProperties$1() {
        return null;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        int encodedSize;
        int encodedSize2 = (StringUtil.getEncodedSize(this.field_4_name) - 1) + 6;
        if (isOLELink() || isStdDocumentNameIdentifier()) {
            return encodedSize2;
        }
        if (isAutomaticLink()) {
            Object[] objArr = this._ddeValues;
            if (objArr == null) {
                return encodedSize2;
            }
            encodedSize2 += 3;
            encodedSize = ConstantValueParser.getEncodedSize(objArr);
        } else {
            encodedSize = this.field_5_name_definition.getEncodedSize();
        }
        return encodedSize2 + encodedSize;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.sunia.HTREnginev2.v6g] */
    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        w6g w6gVar;
        Supplier<GenericRecordUtil.AnnotatedFlag> bitsAsString = GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.s6g
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = ExternalNameRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, OPTION_FLAGS, OPTION_NAMES);
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.t6g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExternalNameRecord.this.getIx());
            }
        };
        Supplier supplier2 = new Supplier() { // from class: com.sunia.HTREnginev2.u6g
            @Override // java.util.function.Supplier
            public final Object get() {
                return ExternalNameRecord.this.getText();
            }
        };
        Formula formula = this.field_5_name_definition;
        if (formula == null) {
            w6gVar = new Supplier() { // from class: com.sunia.HTREnginev2.v6g
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = ExternalNameRecord.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            };
        } else {
            formula.getClass();
            w6gVar = new w6g(formula);
        }
        return GenericRecordUtil.getGenericProperties("options", bitsAsString, "ix", supplier, "name", supplier2, "nameDefinition", w6gVar);
    }

    public short getIx() {
        return this.field_2_ixals;
    }

    public Ptg[] getParsedExpression() {
        return Formula.getTokens(this.field_5_name_definition);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 35;
    }

    public String getText() {
        return this.field_4_name;
    }

    public boolean isAutomaticLink() {
        return (this.field_1_option_flag & 2) != 0;
    }

    public boolean isBuiltInName() {
        return (this.field_1_option_flag & 1) != 0;
    }

    public boolean isIconifiedPictureLink() {
        return (this.field_1_option_flag & ShortCompanionObject.MIN_VALUE) != 0;
    }

    public boolean isOLELink() {
        return (this.field_1_option_flag & 16) != 0;
    }

    public boolean isPicureLink() {
        return (this.field_1_option_flag & 4) != 0;
    }

    public boolean isStdDocumentNameIdentifier() {
        return (this.field_1_option_flag & 8) != 0;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_option_flag);
        littleEndianOutput.writeShort(this.field_2_ixals);
        littleEndianOutput.writeShort(this.field_3_not_used);
        littleEndianOutput.writeByte(this.field_4_name.length());
        StringUtil.writeUnicodeStringFlagAndData(littleEndianOutput, this.field_4_name);
        if (isOLELink() || isStdDocumentNameIdentifier()) {
            return;
        }
        if (!isAutomaticLink()) {
            this.field_5_name_definition.serialize(littleEndianOutput);
        } else if (this._ddeValues != null) {
            littleEndianOutput.writeByte(this._nColumns - 1);
            littleEndianOutput.writeShort(this._nRows - 1);
            ConstantValueParser.encode(littleEndianOutput, this._ddeValues);
        }
    }

    public void setIx(short s) {
        this.field_2_ixals = s;
    }

    public void setParsedExpression(Ptg[] ptgArr) {
        this.field_5_name_definition = Formula.create(ptgArr);
    }

    public void setText(String str) {
        this.field_4_name = str;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.EXTERNAL_NAME;
    }

    public ExternalNameRecord(ExternalNameRecord externalNameRecord) {
        super(externalNameRecord);
        this.field_1_option_flag = externalNameRecord.field_1_option_flag;
        this.field_2_ixals = externalNameRecord.field_2_ixals;
        this.field_3_not_used = externalNameRecord.field_3_not_used;
        this.field_4_name = externalNameRecord.field_4_name;
        Formula formula = externalNameRecord.field_5_name_definition;
        this.field_5_name_definition = formula == null ? null : formula.copy();
        Object[] objArr = externalNameRecord._ddeValues;
        this._ddeValues = objArr != null ? (Object[]) objArr.clone() : null;
        this._nColumns = externalNameRecord._nColumns;
        this._nRows = externalNameRecord._nRows;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ExternalNameRecord copy() {
        return new ExternalNameRecord(this);
    }

    public ExternalNameRecord(RecordInputStream recordInputStream) {
        this.field_1_option_flag = recordInputStream.readShort();
        this.field_2_ixals = recordInputStream.readShort();
        this.field_3_not_used = recordInputStream.readShort();
        this.field_4_name = StringUtil.readUnicodeString(recordInputStream, recordInputStream.readUByte());
        if (isOLELink() || isStdDocumentNameIdentifier()) {
            return;
        }
        if (isAutomaticLink()) {
            if (recordInputStream.available() > 0) {
                int readUByte = recordInputStream.readUByte() + 1;
                int readShort = recordInputStream.readShort() + 1;
                this._ddeValues = ConstantValueParser.parse(recordInputStream, readShort * readUByte);
                this._nColumns = readUByte;
                this._nRows = readShort;
                return;
            }
            return;
        }
        this.field_5_name_definition = Formula.read(recordInputStream.readUShort(), recordInputStream);
    }
}
