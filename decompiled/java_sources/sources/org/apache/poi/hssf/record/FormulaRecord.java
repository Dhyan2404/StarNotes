package org.apache.poi.hssf.record;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.FormulaRecord;
import org.apache.poi.ss.formula.Formula;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.Removal;

/* loaded from: classes12.dex */
public final class FormulaRecord extends CellRecord {
    private static final int FIXED_SIZE = 14;
    private static final BitField alwaysCalc = BitFieldFactory.getInstance(1);
    private static final BitField calcOnLoad = BitFieldFactory.getInstance(2);
    private static final BitField sharedFormula = BitFieldFactory.getInstance(8);
    public static final short sid = 6;
    private double field_4_value;
    private short field_5_options;
    private int field_6_zero;
    private Formula field_8_parsed_expr;
    private FormulaSpecialCachedValue specialCachedValue;

    public FormulaRecord() {
        this.field_8_parsed_expr = Formula.create(Ptg.EMPTY_PTG_ARRAY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.field_6_zero);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        FormulaSpecialCachedValue formulaSpecialCachedValue = this.specialCachedValue;
        return formulaSpecialCachedValue == null ? Double.valueOf(this.field_4_value) : formulaSpecialCachedValue;
    }

    public boolean getCachedBooleanValue() {
        return this.specialCachedValue.getBooleanValue();
    }

    public int getCachedErrorValue() {
        return this.specialCachedValue.getErrorValue();
    }

    @Removal(version = "6.0.0")
    @Deprecated
    public int getCachedResultType() {
        FormulaSpecialCachedValue formulaSpecialCachedValue = this.specialCachedValue;
        return formulaSpecialCachedValue == null ? CellType.NUMERIC.getCode() : formulaSpecialCachedValue.getValueType();
    }

    public CellType getCachedResultTypeEnum() {
        FormulaSpecialCachedValue formulaSpecialCachedValue = this.specialCachedValue;
        return formulaSpecialCachedValue == null ? CellType.NUMERIC : formulaSpecialCachedValue.getValueTypeEnum();
    }

    public Formula getFormula() {
        return this.field_8_parsed_expr;
    }

    @Override // org.apache.poi.hssf.record.CellRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.ntg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = FormulaRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "options", new Supplier() { // from class: com.sunia.HTREnginev2.otg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FormulaRecord.this.getOptions());
            }
        }, "alwaysCalc", new Supplier() { // from class: com.sunia.HTREnginev2.ptg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(FormulaRecord.this.isAlwaysCalc());
            }
        }, "calcOnLoad", new Supplier() { // from class: com.sunia.HTREnginev2.qtg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(FormulaRecord.this.isCalcOnLoad());
            }
        }, "shared", new Supplier() { // from class: com.sunia.HTREnginev2.rtg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(FormulaRecord.this.isSharedFormula());
            }
        }, "zero", new Supplier() { // from class: com.sunia.HTREnginev2.stg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = FormulaRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "value", new Supplier() { // from class: com.sunia.HTREnginev2.ttg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = FormulaRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "formula", new Supplier() { // from class: com.sunia.HTREnginev2.utg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FormulaRecord.this.getFormula();
            }
        });
    }

    public short getOptions() {
        return this.field_5_options;
    }

    public Ptg[] getParsedExpression() {
        return this.field_8_parsed_expr.getTokens();
    }

    @Override // org.apache.poi.hssf.record.CellRecord
    public String getRecordName() {
        return "FORMULA";
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 6;
    }

    public double getValue() {
        return this.field_4_value;
    }

    @Override // org.apache.poi.hssf.record.CellRecord
    public int getValueDataSize() {
        return this.field_8_parsed_expr.getEncodedSize() + 14;
    }

    public boolean hasCachedResultString() {
        FormulaSpecialCachedValue formulaSpecialCachedValue = this.specialCachedValue;
        return formulaSpecialCachedValue != null && formulaSpecialCachedValue.getTypeCode() == 0;
    }

    public boolean isAlwaysCalc() {
        return alwaysCalc.isSet(this.field_5_options);
    }

    public boolean isCalcOnLoad() {
        return calcOnLoad.isSet(this.field_5_options);
    }

    public boolean isSharedFormula() {
        return sharedFormula.isSet(this.field_5_options);
    }

    @Override // org.apache.poi.hssf.record.CellRecord
    public void serializeValue(LittleEndianOutput littleEndianOutput) {
        FormulaSpecialCachedValue formulaSpecialCachedValue = this.specialCachedValue;
        if (formulaSpecialCachedValue == null) {
            littleEndianOutput.writeDouble(this.field_4_value);
        } else {
            formulaSpecialCachedValue.serialize(littleEndianOutput);
        }
        littleEndianOutput.writeShort(getOptions());
        littleEndianOutput.writeInt(this.field_6_zero);
        this.field_8_parsed_expr.serialize(littleEndianOutput);
    }

    public void setAlwaysCalc(boolean z) {
        this.field_5_options = alwaysCalc.setShortBoolean(this.field_5_options, z);
    }

    public void setCachedResultBoolean(boolean z) {
        this.specialCachedValue = FormulaSpecialCachedValue.createCachedBoolean(z);
    }

    public void setCachedResultErrorCode(int i) {
        this.specialCachedValue = FormulaSpecialCachedValue.createCachedErrorCode(i);
    }

    public void setCachedResultTypeEmptyString() {
        this.specialCachedValue = FormulaSpecialCachedValue.createCachedEmptyValue();
    }

    public void setCachedResultTypeString() {
        this.specialCachedValue = FormulaSpecialCachedValue.createForString();
    }

    public void setCalcOnLoad(boolean z) {
        this.field_5_options = calcOnLoad.setShortBoolean(this.field_5_options, z);
    }

    public void setOptions(short s) {
        this.field_5_options = s;
    }

    public void setParsedExpression(Ptg[] ptgArr) {
        this.field_8_parsed_expr = Formula.create(ptgArr);
    }

    public void setSharedFormula(boolean z) {
        this.field_5_options = sharedFormula.setShortBoolean(this.field_5_options, z);
    }

    public void setValue(double d) {
        this.field_4_value = d;
        this.specialCachedValue = null;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.FORMULA;
    }

    public FormulaRecord(FormulaRecord formulaRecord) {
        super(formulaRecord);
        this.field_4_value = formulaRecord.field_4_value;
        this.field_5_options = formulaRecord.field_5_options;
        this.field_6_zero = formulaRecord.field_6_zero;
        this.field_8_parsed_expr = formulaRecord.field_8_parsed_expr == null ? null : new Formula(formulaRecord.field_8_parsed_expr);
        FormulaSpecialCachedValue formulaSpecialCachedValue = formulaRecord.specialCachedValue;
        this.specialCachedValue = formulaSpecialCachedValue != null ? new FormulaSpecialCachedValue(formulaSpecialCachedValue) : null;
    }

    @Override // org.apache.poi.hssf.record.CellRecord, org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public FormulaRecord copy() {
        return new FormulaRecord(this);
    }

    public FormulaRecord(RecordInputStream recordInputStream) {
        super(recordInputStream);
        long readLong = recordInputStream.readLong();
        this.field_5_options = recordInputStream.readShort();
        FormulaSpecialCachedValue create = FormulaSpecialCachedValue.create(readLong);
        this.specialCachedValue = create;
        if (create == null) {
            this.field_4_value = Double.longBitsToDouble(readLong);
        }
        this.field_6_zero = recordInputStream.readInt();
        this.field_8_parsed_expr = Formula.read(recordInputStream.readShort(), recordInputStream, recordInputStream.available());
    }
}
