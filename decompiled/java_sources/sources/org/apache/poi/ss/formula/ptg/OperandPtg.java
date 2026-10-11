package org.apache.poi.ss.formula.ptg;

/* loaded from: classes13.dex */
public abstract class OperandPtg extends Ptg {
    public OperandPtg() {
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public abstract OperandPtg copy();

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public final boolean isBaseToken() {
        return false;
    }

    public OperandPtg(OperandPtg operandPtg) {
        super(operandPtg);
    }
}
