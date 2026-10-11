package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.functions.Sumx2my2;
import org.apache.poi.ss.formula.functions.XYNumericFunction;

/* loaded from: classes13.dex */
public final class Sumx2my2 extends XYNumericFunction {
    private static final XYNumericFunction.Accumulator XSquaredMinusYSquaredAccumulator = new XYNumericFunction.Accumulator() { // from class: com.sunia.HTREnginev2.t5n
        @Override // org.apache.poi.ss.formula.functions.XYNumericFunction.Accumulator
        public final double accumulate(double d, double d2) {
            double lambda$static$0;
            lambda$static$0 = Sumx2my2.lambda$static$0(d, d2);
            return lambda$static$0;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double lambda$static$0(double d, double d2) {
        return (d * d) - (d2 * d2);
    }

    @Override // org.apache.poi.ss.formula.functions.XYNumericFunction
    public XYNumericFunction.Accumulator createAccumulator() {
        return XSquaredMinusYSquaredAccumulator;
    }
}
