package org.apache.poi.ss.formula.ptg;

import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class ParenthesisPtg extends ControlPtg {
    private static final int SIZE = 1;
    public static final ParenthesisPtg instance = new ParenthesisPtg();
    public static final byte sid = 21;

    private ParenthesisPtg() {
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return null;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 21;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        return 1;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        return "()";
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getPtgClass() + 21);
    }

    public String toFormulaString(String[] strArr) {
        return MotionUtils.f31761c + strArr[0] + MotionUtils.f31762d;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public ParenthesisPtg copy() {
        return instance;
    }
}
