package org.apache.poi.ss.formula.ptg;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.lang.reflect.Array;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.constant.ConstantValueParser;
import org.apache.poi.ss.formula.constant.ErrorConstant;
import org.apache.poi.ss.formula.ptg.ArrayPtg;
import org.apache.poi.ss.util.NumberToTextConverter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class ArrayPtg extends Ptg {
    public static final int PLAIN_TOKEN_SIZE = 8;
    private static final int RESERVED_FIELD_LEN = 7;
    public static final byte sid = 32;
    private final Object[] _arrayValues;
    private final int _nColumns;
    private final int _nRows;
    private final int _reserved0Int;
    private final int _reserved1Short;
    private final int _reserved2Byte;

    public ArrayPtg(int i, int i2, int i3, int i4, int i5, Object[] objArr) {
        this._reserved0Int = i;
        this._reserved1Short = i2;
        this._reserved2Byte = i3;
        this._nColumns = i4;
        this._nRows = i5;
        this._arrayValues = (Object[]) objArr.clone();
    }

    private static String getConstantText(Object obj) {
        if (obj == null) {
            throw new IllegalStateException("Array item cannot be null");
        }
        if (obj instanceof String) {
            return "\"" + obj + "\"";
        }
        if (obj instanceof Double) {
            return NumberToTextConverter.toText(((Double) obj).doubleValue());
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue() ? "TRUE" : "FALSE";
        }
        if (obj instanceof ErrorConstant) {
            return ((ErrorConstant) obj).getText();
        }
        throw new IllegalArgumentException("Unexpected constant class (" + obj.getClass().getName() + MotionUtils.f31762d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this._reserved0Int);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this._reserved1Short);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Integer.valueOf(this._reserved2Byte);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return this._arrayValues == null ? "#values#uninitialised#" : toFormulaString();
    }

    public int getColumnCount() {
        return this._nColumns;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getDefaultOperandClass() {
        return (byte) 64;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("reserved0", new Supplier() { // from class: com.sunia.HTREnginev2.ff
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = ArrayPtg.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "reserved1", new Supplier() { // from class: com.sunia.HTREnginev2.gf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = ArrayPtg.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "reserved2", new Supplier() { // from class: com.sunia.HTREnginev2.hf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = ArrayPtg.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "columnCount", new Supplier() { // from class: com.sunia.HTREnginev2.if
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ArrayPtg.this.getColumnCount());
            }
        }, "rowCount", new Supplier() { // from class: com.sunia.HTREnginev2.jf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ArrayPtg.this.getRowCount());
            }
        }, "arrayValues", new Supplier() { // from class: com.sunia.HTREnginev2.kf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = ArrayPtg.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        });
    }

    public int getRowCount() {
        return this._nRows;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 32;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return ConstantValueParser.getEncodedSize(this._arrayValues) + 11;
    }

    public Object[][] getTokenArrayValues() {
        if (this._arrayValues == null) {
            throw new IllegalStateException("array values not read yet");
        }
        Object[][] objArr = (Object[][]) Array.newInstance((Class<?>) Object.class, this._nRows, this._nColumns);
        for (int i = 0; i < this._nRows; i++) {
            Object[] objArr2 = objArr[i];
            for (int i2 = 0; i2 < this._nColumns; i2++) {
                objArr2[i2] = this._arrayValues[getValueIndex(i2, i)];
            }
        }
        return objArr;
    }

    public int getValueIndex(int i, int i2) {
        int i3;
        if (i < 0 || i >= (i3 = this._nColumns)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Specified colIx (");
            sb.append(i);
            sb.append(") is outside the allowed range (0..");
            sb.append(this._nColumns - 1);
            sb.append(MotionUtils.f31762d);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 >= 0 && i2 < this._nRows) {
            return (i2 * i3) + i;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Specified rowIx (");
        sb2.append(i2);
        sb2.append(") is outside the allowed range (0..");
        sb2.append(this._nRows - 1);
        sb2.append(MotionUtils.f31762d);
        throw new IllegalArgumentException(sb2.toString());
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public boolean isBaseToken() {
        return false;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        for (int i = 0; i < this._nRows; i++) {
            if (i > 0) {
                sb.append(AndroidTreeView.f47214k);
            }
            for (int i2 = 0; i2 < this._nColumns; i2++) {
                if (i2 > 0) {
                    sb.append(",");
                }
                sb.append(getConstantText(this._arrayValues[getValueIndex(i2, i)]));
            }
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getPtgClass() + 32);
        littleEndianOutput.writeInt(this._reserved0Int);
        littleEndianOutput.writeShort(this._reserved1Short);
        littleEndianOutput.writeByte(this._reserved2Byte);
    }

    public int writeTokenValueBytes(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(this._nColumns - 1);
        littleEndianOutput.writeShort(this._nRows - 1);
        ConstantValueParser.encode(littleEndianOutput, this._arrayValues);
        return ConstantValueParser.getEncodedSize(this._arrayValues) + 3;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public ArrayPtg copy() {
        return new ArrayPtg(this);
    }

    public ArrayPtg(ArrayPtg arrayPtg) {
        this._reserved0Int = arrayPtg._reserved0Int;
        this._reserved1Short = arrayPtg._reserved1Short;
        this._reserved2Byte = arrayPtg._reserved2Byte;
        this._nColumns = arrayPtg._nColumns;
        this._nRows = arrayPtg._nRows;
        Object[] objArr = arrayPtg._arrayValues;
        this._arrayValues = objArr == null ? null : (Object[]) objArr.clone();
    }

    public ArrayPtg(Object[][] objArr) {
        int length = objArr[0].length;
        int length2 = objArr.length;
        short s = (short) length;
        this._nColumns = s;
        short s2 = (short) length2;
        this._nRows = s2;
        Object[] objArr2 = new Object[s * s2];
        for (int i = 0; i < length2; i++) {
            Object[] objArr3 = objArr[i];
            for (int i2 = 0; i2 < length; i2++) {
                objArr2[getValueIndex(i2, i)] = objArr3[i2];
            }
        }
        this._arrayValues = objArr2;
        this._reserved0Int = 0;
        this._reserved1Short = 0;
        this._reserved2Byte = 0;
    }
}
