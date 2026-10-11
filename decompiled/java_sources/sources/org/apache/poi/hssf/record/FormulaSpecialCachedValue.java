package org.apache.poi.hssf.record;

import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.FormulaSpecialCachedValue;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;

@Internal
/* loaded from: classes12.dex */
public final class FormulaSpecialCachedValue implements GenericRecord {
    private static final long BIT_MARKER = -281474976710656L;
    public static final int BOOLEAN = 1;
    private static final int DATA_INDEX = 2;
    public static final int EMPTY = 3;
    public static final int ERROR_CODE = 2;
    public static final int STRING = 0;
    private static final int VARIABLE_DATA_LENGTH = 6;
    private final byte[] _variableData;

    public FormulaSpecialCachedValue(FormulaSpecialCachedValue formulaSpecialCachedValue) {
        byte[] bArr = formulaSpecialCachedValue._variableData;
        this._variableData = bArr == null ? null : (byte[]) bArr.clone();
    }

    public static FormulaSpecialCachedValue create(long j) {
        if ((j & BIT_MARKER) != BIT_MARKER) {
            return null;
        }
        byte[] bArr = new byte[6];
        for (int i = 0; i < 6; i++) {
            bArr[i] = (byte) j;
            j >>= 8;
        }
        byte b = bArr[0];
        if (b != 0 && b != 1 && b != 2 && b != 3) {
            throw new RecordFormatException("Bad special value code (" + ((int) bArr[0]) + MotionUtils.f31762d);
        }
        return new FormulaSpecialCachedValue(bArr);
    }

    public static FormulaSpecialCachedValue createCachedBoolean(boolean z) {
        return create(1, z ? 1 : 0);
    }

    public static FormulaSpecialCachedValue createCachedEmptyValue() {
        return create(3, 0);
    }

    public static FormulaSpecialCachedValue createCachedErrorCode(int i) {
        return create(2, i);
    }

    public static FormulaSpecialCachedValue createForString() {
        return create(0, 0);
    }

    private String formatValue() {
        int typeCode = getTypeCode();
        if (typeCode == 0) {
            return "<string>";
        }
        if (typeCode == 1) {
            return getDataValue() == 0 ? "FALSE" : "TRUE";
        }
        if (typeCode == 2) {
            return ErrorEval.getText(getDataValue());
        }
        if (typeCode == 3) {
            return "<empty>";
        }
        return "#error(type=" + typeCode + ")#";
    }

    private int getDataValue() {
        return this._variableData[2];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object getGenericValue() {
        int typeCode = getTypeCode();
        if (typeCode == 0) {
            return "string";
        }
        if (typeCode == 1) {
            return Boolean.valueOf(getBooleanValue());
        }
        if (typeCode == 2) {
            return Integer.valueOf(getErrorValue());
        }
        if (typeCode == 3) {
            return null;
        }
        throw new IllegalStateException("Unexpected type id (" + typeCode + MotionUtils.f31762d);
    }

    public String formatDebugString() {
        return formatValue() + ' ' + HexDump.toHex(this._variableData);
    }

    public boolean getBooleanValue() {
        if (getTypeCode() == 1) {
            return getDataValue() != 0;
        }
        throw new IllegalStateException("Not a boolean cached value - " + formatValue());
    }

    public int getErrorValue() {
        if (getTypeCode() == 2) {
            return getDataValue();
        }
        throw new IllegalStateException("Not an error cached value - " + formatValue());
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("value", new Supplier() { // from class: com.sunia.HTREnginev2.vtg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object genericValue;
                genericValue = FormulaSpecialCachedValue.this.getGenericValue();
                return genericValue;
            }
        }, "typeCode", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.wtg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(FormulaSpecialCachedValue.this.getTypeCode());
            }
        }, new int[]{0, 1, 2, 3}, new String[]{"STRING", "BOOLEAN", "ERROR_CODE", "EMPTY"}));
    }

    public int getTypeCode() {
        return this._variableData[0];
    }

    @Deprecated
    public int getValueType() {
        int typeCode = getTypeCode();
        if (typeCode != 0) {
            if (typeCode == 1) {
                return CellType.BOOLEAN.getCode();
            }
            if (typeCode == 2) {
                return CellType.ERROR.getCode();
            }
            if (typeCode != 3) {
                throw new IllegalStateException("Unexpected type id (" + typeCode + MotionUtils.f31762d);
            }
        }
        return CellType.STRING.getCode();
    }

    public CellType getValueTypeEnum() {
        int typeCode = getTypeCode();
        if (typeCode != 0) {
            if (typeCode == 1) {
                return CellType.BOOLEAN;
            }
            if (typeCode == 2) {
                return CellType.ERROR;
            }
            if (typeCode != 3) {
                throw new IllegalStateException("Unexpected type id (" + typeCode + MotionUtils.f31762d);
            }
        }
        return CellType.STRING;
    }

    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.write(this._variableData);
        littleEndianOutput.writeShort(65535);
    }

    public String toString() {
        return FormulaSpecialCachedValue.class.getName() + '[' + formatValue() + ']';
    }

    private FormulaSpecialCachedValue(byte[] bArr) {
        this._variableData = bArr;
    }

    private static FormulaSpecialCachedValue create(int i, int i2) {
        return new FormulaSpecialCachedValue(new byte[]{(byte) i, 0, (byte) i2, 0, 0, 0});
    }
}
