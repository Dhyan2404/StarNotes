package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.functions.Sumxmy2;
import org.apache.poi.ss.formula.functions.XYNumericFunction;

/* loaded from: classes13.dex */
public final class Sumxmy2 extends XYNumericFunction {
    private static final XYNumericFunction.Accumulator XMinusYSquaredAccumulator = new XYNumericFunction.Accumulator() { // from class: com.sunia.HTREnginev2.v5n
        @Override // org.apache.poi.ss.formula.functions.XYNumericFunction.Accumulator
        public final double accumulate(double d, double d2) {
            double lambda$static$0;
            lambda$static$0 = Sumxmy2.lambda$static$0(d, d2);
            return lambda$static$0;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double lambda$static$0(double d, double d2) {
        double d3 = d - d2;
        return d3 * d3;
    }

    @Override // org.apache.poi.ss.formula.functions.XYNumericFunction
    public XYNumericFunction.Accumulator createAccumulator() {
        return XMinusYSquaredAccumulator;
    }
}
