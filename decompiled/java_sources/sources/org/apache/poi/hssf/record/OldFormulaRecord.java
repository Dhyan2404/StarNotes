package org.apache.poi.hssf.record;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.OldFormulaRecord;
import org.apache.poi.ss.formula.Formula;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public final class OldFormulaRecord extends OldCellRecord {
    public static final short biff2_sid = 6;
    public static final short biff3_sid = 518;
    public static final short biff4_sid = 1030;
    public static final short biff5_sid = 6;
    private double field_4_value;
    private short field_5_options;
    private Formula field_6_parsed_expr;
    private FormulaSpecialCachedValue specialCachedValue;

    public OldFormulaRecord(RecordInputStream recordInputStream) {
        super(recordInputStream, recordInputStream.getSid() == 6);
        if (isBiff2()) {
            this.field_4_value = recordInputStream.readDouble();
        } else {
            long readLong = recordInputStream.readLong();
            FormulaSpecialCachedValue create = FormulaSpecialCachedValue.create(readLong);
            this.specialCachedValue = create;
            if (create == null) {
                this.field_4_value = Double.longBitsToDouble(readLong);
            }
        }
        if (isBiff2()) {
            this.field_5_options = (short) recordInputStream.readUByte();
        } else {
            this.field_5_options = recordInputStream.readShort();
        }
        this.field_6_parsed_expr = Formula.read(recordInputStream.readShort(), recordInputStream, recordInputStream.available());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    public boolean getCachedBooleanValue() {
        return this.specialCachedValue.getBooleanValue();
    }

    public int getCachedErrorValue() {
        return this.specialCachedValue.getErrorValue();
    }

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
        return this.field_6_parsed_expr;
    }

    @Override // org.apache.poi.hssf.record.OldCellRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.tfk
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = OldFormulaRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "options", new Supplier() { // from class: com.sunia.HTREnginev2.ufk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(OldFormulaRecord.this.getOptions());
            }
        }, "formula", new Supplier() { // from class: com.sunia.HTREnginev2.vfk
            @Override // java.util.function.Supplier
            public final Object get() {
                return OldFormulaRecord.this.getFormula();
            }
        }, "value", new Supplier() { // from class: com.sunia.HTREnginev2.wfk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Double.valueOf(OldFormulaRecord.this.getValue());
            }
        });
    }

    public short getOptions() {
        return this.field_5_options;
    }

    public Ptg[] getParsedExpression() {
        return this.field_6_parsed_expr.getTokens();
    }

    public double getValue() {
        return this.field_4_value;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.FORMULA;
    }
}
