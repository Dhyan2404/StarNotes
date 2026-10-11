package org.apache.poi.ss.formula.functions;

import java.util.Arrays;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;

/* loaded from: classes13.dex */
public class Mirr extends MultiOperandNumericFunction {
    public Mirr() {
        super(false, false);
    }

    private static double mirr(double[] dArr, double d, double d2) {
        double d3 = 1.0d;
        double length = dArr.length - 1.0d;
        int length2 = dArr.length;
        double d4 = 0.0d;
        int i = 0;
        double d5 = 0.0d;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length2) {
            double d6 = dArr[i2];
            if (d6 < d4) {
                d5 += d6 / Math.pow((d + d3) + d2, i3);
                i3++;
            }
            i2++;
            d3 = 1.0d;
            d4 = 0.0d;
        }
        int length3 = dArr.length;
        double d7 = 0.0d;
        while (i < length3) {
            double d8 = dArr[i];
            double d9 = d5;
            if (d8 > 0.0d) {
                d7 += d8 * Math.pow(d + 1.0d, length - i3);
                i3++;
            }
            i++;
            d5 = d9;
        }
        double d10 = d5;
        if (d7 == 0.0d || d10 == 0.0d) {
            return 0.0d;
        }
        return Math.pow((-d7) / d10, 1.0d / length) - 1.0d;
    }

    @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
    public double evaluate(double[] dArr) throws EvaluationException {
        double d = dArr[dArr.length - 1];
        double d2 = dArr[dArr.length - 2];
        double[] copyOf = Arrays.copyOf(dArr, dArr.length - 2);
        boolean z = true;
        for (double d3 : copyOf) {
            z &= d3 < 0.0d;
        }
        if (z) {
            return -1.0d;
        }
        boolean z2 = true;
        for (double d4 : copyOf) {
            z2 &= d4 > 0.0d;
        }
        if (z2) {
            throw new EvaluationException(ErrorEval.DIV_ZERO);
        }
        return mirr(copyOf, d, d2);
    }

    @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
    public int getMaxNumOperands() {
        return 3;
    }
}
