package org.apache.poi.ss.formula.ptg;

import com.google.android.material.motion.MotionUtils;
import java.util.Locale;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.function.FunctionMetadata;
import org.apache.poi.ss.formula.function.FunctionMetadataRegistry;
import org.apache.poi.ss.formula.ptg.AbstractFunctionPtg;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes13.dex */
public abstract class AbstractFunctionPtg extends OperationPtg {
    private static final short FUNCTION_INDEX_EXTERNAL = 255;
    public static final String FUNCTION_NAME_IF = "IF";
    private final short _functionIndex;
    private final int _numberOfArgs;
    private final byte[] paramClass;
    private final byte returnClass;

    public AbstractFunctionPtg(int i, int i2, byte[] bArr, int i3) {
        this._numberOfArgs = i3;
        if (i < -32768 || i > 32767) {
            throw new IllegalStateException("functionIndex " + i + " cannot be cast to short");
        }
        this._functionIndex = (short) i;
        if (i2 >= -128 && i2 <= 127) {
            this.returnClass = (byte) i2;
            this.paramClass = bArr;
        } else {
            throw new IllegalStateException("pReturnClass " + i2 + " cannot be cast to byte");
        }
    }

    private static void appendArgs(StringBuilder sb, int i, String[] strArr) {
        sb.append('(');
        for (int i2 = i; i2 < strArr.length; i2++) {
            if (i2 > i) {
                sb.append(',');
            }
            sb.append(strArr[i2]);
        }
        sb.append(MotionUtils.f31762d);
    }

    public static boolean isBuiltInFunctionName(String str) {
        return FunctionMetadataRegistry.lookupIndexByName(str.toUpperCase(Locale.ROOT)) >= 0;
    }

    public static short lookupIndex(String str) {
        short lookupIndexByName = FunctionMetadataRegistry.lookupIndexByName(str.toUpperCase(Locale.ROOT));
        if (lookupIndexByName < 0) {
            return (short) 255;
        }
        return lookupIndexByName;
    }

    @Override // org.apache.poi.ss.formula.ptg.OperationPtg, org.apache.poi.ss.formula.ptg.Ptg
    public byte getDefaultOperandClass() {
        return this.returnClass;
    }

    public final short getFunctionIndex() {
        return this._functionIndex;
    }

    @Override // org.apache.poi.ss.formula.ptg.OperationPtg, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("functionIndex", new Supplier() { // from class: com.sunia.HTREnginev2.m3
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AbstractFunctionPtg.this.getFunctionIndex());
            }
        }, "functionName", new Supplier() { // from class: com.sunia.HTREnginev2.n3
            @Override // java.util.function.Supplier
            public final Object get() {
                return AbstractFunctionPtg.this.getName();
            }
        }, "numberOfOperands", new Supplier() { // from class: com.sunia.HTREnginev2.o3
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AbstractFunctionPtg.this.getNumberOfOperands());
            }
        }, "externalFunction", new Supplier() { // from class: com.sunia.HTREnginev2.p3
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(AbstractFunctionPtg.this.isExternalFunction());
            }
        }, "defaultOperandClass", new Supplier() { // from class: com.sunia.HTREnginev2.q3
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(AbstractFunctionPtg.this.getDefaultOperandClass());
            }
        });
    }

    public final String getName() {
        return lookupName(this._functionIndex);
    }

    @Override // org.apache.poi.ss.formula.ptg.OperationPtg
    public final int getNumberOfOperands() {
        return this._numberOfArgs;
    }

    public final byte getParameterClass(int i) {
        byte[] bArr = this.paramClass;
        return i >= bArr.length ? bArr[bArr.length - 1] : bArr[i];
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public abstract int getSize();

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public final boolean isBaseToken() {
        return false;
    }

    public final boolean isExternalFunction() {
        return this._functionIndex == 255;
    }

    public String lookupName(short s) {
        return lookupName(s, false);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public final String toFormulaString() {
        return getName();
    }

    public final String lookupName(short s, boolean z) {
        FunctionMetadata functionByIndex;
        if (s == 255) {
            return "#external#";
        }
        if (z) {
            functionByIndex = FunctionMetadataRegistry.getCetabFunctionByIndex(s);
        } else {
            functionByIndex = FunctionMetadataRegistry.getFunctionByIndex(s);
        }
        if (functionByIndex != null) {
            return functionByIndex.getName();
        }
        throw new IllegalStateException("bad function index (" + ((int) s) + ", " + z + MotionUtils.f31762d);
    }

    @Override // org.apache.poi.ss.formula.ptg.OperationPtg
    public String toFormulaString(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        if (isExternalFunction()) {
            sb.append(strArr[0]);
            appendArgs(sb, 1, strArr);
        } else {
            sb.append(getName());
            appendArgs(sb, 0, strArr);
        }
        return sb.toString();
    }
}
