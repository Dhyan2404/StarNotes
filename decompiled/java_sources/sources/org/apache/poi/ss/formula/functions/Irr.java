package org.apache.poi.ss.formula.functions;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.AggregateFunction;

/* loaded from: classes13.dex */
public final class Irr implements Function {
    private static final double ABSOLUTE_ACCURACY = 1.0E-7d;
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) Irr.class);
    private static final int MAX_ITERATION_COUNT = 1000;

    public static double irr(double[] dArr) {
        return irr(dArr, 0.1d);
    }

    @Override // org.apache.poi.ss.formula.functions.Function
    public ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length == 0 || valueEvalArr.length > 2) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            double irr = irr(AggregateFunction.ValueCollector.collectValues(valueEvalArr[0]), valueEvalArr.length == 2 ? NumericFunction.singleOperandEvaluate(valueEvalArr[1], i, i2) : 0.1d);
            NumericFunction.checkValue(irr);
            return new NumberEval(irr);
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    public static double irr(double[] dArr, double d) {
        char c = 0;
        double d2 = d;
        int i = 0;
        while (i < 1000) {
            double d3 = 1.0d + d2;
            if (d3 == 0.0d) {
                LOGGER.atWarn().log("Returning NaN because IRR has found an denominator of 0");
                return Double.NaN;
            }
            double d4 = dArr[c];
            double d5 = d3;
            double d6 = 0.0d;
            for (int i2 = 1; i2 < dArr.length; i2++) {
                double d7 = dArr[i2];
                d4 += d7 / d5;
                d5 *= d3;
                d6 -= (i2 * d7) / d5;
            }
            if (d6 == 0.0d) {
                LOGGER.atWarn().log("Returning NaN because IRR has found an fDerivative of 0");
                return Double.NaN;
            }
            double d8 = d2 - (d4 / d6);
            if (Math.abs(d8 - d2) <= ABSOLUTE_ACCURACY) {
                return d8;
            }
            i++;
            d2 = d8;
            c = 0;
        }
        LOGGER.atWarn().log("Returning NaN because IRR has reached max number of iterations allowed: {}", (Object) 1000);
        return Double.NaN;
    }
}
