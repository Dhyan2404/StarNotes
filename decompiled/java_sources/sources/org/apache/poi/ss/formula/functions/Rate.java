package org.apache.poi.ss.formula.functions;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public class Rate implements Function {
    private static final Logger LOG = LogManager.getLogger((Class<?>) Rate.class);

    private static double _g_div_gp(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d + 1.0d;
        double pow = Math.pow(d7, d2);
        double pow2 = Math.pow(d7, d2 - 1.0d);
        double d8 = d5 + (pow * d4);
        double d9 = (pow - 1.0d) * d3;
        double d10 = (d * d6) + 1.0d;
        double d11 = d9 * d10;
        return (d8 + (d11 / d)) / (((d2 * pow2) * d4) - (d11 / ((Math.pow(d, 2.0d) + ((((d2 * d3) * pow2) * d10) / d)) + ((d9 * d6) / d))));
    }

    public static double calculateRate(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d6;
        boolean z = false;
        int i = 0;
        while (i < 100.0d && !z) {
            double _g_div_gp = d7 - _g_div_gp(d7, d, d2, d3, d4, d5);
            boolean z2 = Math.abs(_g_div_gp - d7) < 1.0E-8d;
            i++;
            d7 = _g_div_gp;
            z = z2;
        }
        if (z) {
            return d7;
        }
        return Double.NaN;
    }

    public static void checkValue(double d) throws EvaluationException {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new EvaluationException(ErrorEval.NUM_ERROR);
        }
    }

    @Override // org.apache.poi.ss.formula.functions.Function
    public ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length < 3) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            double calculateRate = calculateRate(OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEvalArr[0], i, i2)), OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEvalArr[1], i, i2)), OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEvalArr[2], i, i2)), valueEvalArr.length >= 4 ? OperandResolver.coerceValueToDouble(valueEvalArr.length >= 4 ? OperandResolver.getSingleValue(valueEvalArr[3], i, i2) : null) : 0.0d, valueEvalArr.length >= 5 ? OperandResolver.coerceValueToDouble(valueEvalArr.length >= 5 ? OperandResolver.getSingleValue(valueEvalArr[4], i, i2) : null) : 0.0d, valueEvalArr.length >= 6 ? OperandResolver.coerceValueToDouble(valueEvalArr.length >= 6 ? OperandResolver.getSingleValue(valueEvalArr[5], i, i2) : null) : 0.1d);
            checkValue(calculateRate);
            return new NumberEval(calculateRate);
        } catch (EvaluationException e) {
            LOG.atError().withThrowable(e).log("Can't evaluate rate function");
            return e.getErrorEval();
        }
    }
}
