package org.apache.poi.ss.formula.ptg;

/* loaded from: classes13.dex */
public final class UnaryMinusPtg extends ValueOperatorPtg {
    private static final String MINUS = "-";
    public static final UnaryMinusPtg instance = new UnaryMinusPtg();
    public static final byte sid = 19;

    private UnaryMinusPtg() {
    }

    @Override // org.apache.poi.ss.formula.ptg.OperationPtg
    public int getNumberOfOperands() {
        return 1;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 19;
    }

    @Override // org.apache.poi.ss.formula.ptg.OperationPtg
    public String toFormulaString(String[] strArr) {
        return "-" + strArr[0];
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public UnaryMinusPtg copy() {
        return instance;
    }
}
