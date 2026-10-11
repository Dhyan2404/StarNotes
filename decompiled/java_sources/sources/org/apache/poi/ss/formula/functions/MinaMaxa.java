package org.apache.poi.ss.formula.functions;

/* loaded from: classes13.dex */
public abstract class MinaMaxa extends MultiOperandNumericFunction {
    public static final Function MAXA = new MinaMaxa() { // from class: org.apache.poi.ss.formula.functions.MinaMaxa.1
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) {
            if (dArr.length > 0) {
                return MathX.max(dArr);
            }
            return 0.0d;
        }
    };
    public static final Function MINA = new MinaMaxa() { // from class: org.apache.poi.ss.formula.functions.MinaMaxa.2
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) {
            if (dArr.length > 0) {
                return MathX.min(dArr);
            }
            return 0.0d;
        }
    };

    public MinaMaxa() {
        super(true, true);
    }
}
