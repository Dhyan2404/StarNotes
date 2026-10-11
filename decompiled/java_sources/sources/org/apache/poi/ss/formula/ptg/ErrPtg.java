package org.apache.poi.ss.formula.ptg;

import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.ptg.ErrPtg;
import org.apache.poi.ss.usermodel.FormulaError;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class ErrPtg extends ScalarConstantPtg {
    private static final int SIZE = 2;
    public static final short sid = 28;
    private final int field_1_error_code;
    public static final ErrPtg NULL_INTERSECTION = new ErrPtg(FormulaError.NULL.getCode());
    public static final ErrPtg DIV_ZERO = new ErrPtg(FormulaError.DIV0.getCode());
    public static final ErrPtg VALUE_INVALID = new ErrPtg(FormulaError.VALUE.getCode());
    public static final ErrPtg REF_INVALID = new ErrPtg(FormulaError.REF.getCode());
    public static final ErrPtg NAME_INVALID = new ErrPtg(FormulaError.NAME.getCode());
    public static final ErrPtg NUM_ERROR = new ErrPtg(FormulaError.NUM.getCode());
    public static final ErrPtg N_A = new ErrPtg(FormulaError.NA.getCode());

    /* renamed from: org.apache.poi.ss.formula.ptg.ErrPtg$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198161 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$FormulaError;

        static {
            int[] iArr = new int[FormulaError.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$FormulaError = iArr;
            try {
                iArr[FormulaError.DIV0.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$FormulaError[FormulaError.NA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$FormulaError[FormulaError.NAME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$FormulaError[FormulaError.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$FormulaError[FormulaError.NUM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$FormulaError[FormulaError.REF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$FormulaError[FormulaError.VALUE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private ErrPtg(int i) {
        if (FormulaError.isValidCode(i)) {
            this.field_1_error_code = i;
            return;
        }
        throw new IllegalArgumentException("Invalid error code (" + i + MotionUtils.f31762d);
    }

    public static ErrPtg read(LittleEndianInput littleEndianInput) {
        return valueOf(littleEndianInput.readByte());
    }

    public static ErrPtg valueOf(int i) {
        switch (C198161.$SwitchMap$org$apache$poi$ss$usermodel$FormulaError[FormulaError.forInt(i).ordinal()]) {
            case 1:
                return DIV_ZERO;
            case 2:
                return N_A;
            case 3:
                return NAME_INVALID;
            case 4:
                return NULL_INTERSECTION;
            case 5:
                return NUM_ERROR;
            case 6:
                return REF_INVALID;
            case 7:
                return VALUE_INVALID;
            default:
                throw new IllegalStateException("Unexpected error code (" + i + MotionUtils.f31762d);
        }
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public ErrPtg copy() {
        return this;
    }

    public int getErrorCode() {
        return this.field_1_error_code;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("errorCode", new Supplier() { // from class: com.sunia.HTREnginev2.trf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ErrPtg.this.getErrorCode());
            }
        });
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 28;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return 2;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        return FormulaError.forInt(this.field_1_error_code).getString();
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getPtgClass() + 28);
        littleEndianOutput.writeByte(this.field_1_error_code);
    }
}
