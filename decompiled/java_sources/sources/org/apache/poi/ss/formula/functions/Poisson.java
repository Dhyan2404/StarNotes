package org.apache.poi.ss.formula.functions;

import org.apache.commons.math3.distribution.PoissonDistribution;
import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.BoolEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public class Poisson implements FreeRefFunction {
    private static final double DEFAULT_RETURN_RESULT = 1.0d;
    public static final Poisson instance = new Poisson();

    private static void checkArgument(double d) throws EvaluationException {
        NumericFunction.checkValue(d);
        if (d < 0.0d) {
            throw new EvaluationException(ErrorEval.NUM_ERROR);
        }
    }

    private static boolean isDefaultResult(double d, double d2) {
        return d == 0.0d && d2 == 0.0d;
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        return evaluate(valueEvalArr, operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
    }

    public static ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        double probability;
        if (valueEvalArr.length != 3) {
            return ErrorEval.VALUE_INVALID;
        }
        ValueEval valueEval = valueEvalArr[0];
        ValueEval valueEval2 = valueEvalArr[1];
        ValueEval valueEval3 = valueEvalArr[2];
        try {
            try {
                double singleOperandEvaluate = NumericFunction.singleOperandEvaluate(valueEval, i, i2);
                double singleOperandEvaluate2 = NumericFunction.singleOperandEvaluate(valueEval2, i, i2);
                if (isDefaultResult(singleOperandEvaluate, singleOperandEvaluate2)) {
                    return new NumberEval(1.0d);
                }
                checkArgument(singleOperandEvaluate);
                checkArgument(singleOperandEvaluate2);
                boolean booleanValue = ((BoolEval) valueEval3).getBooleanValue();
                PoissonDistribution poissonDistribution = new PoissonDistribution(singleOperandEvaluate2);
                if (booleanValue) {
                    probability = poissonDistribution.cumulativeProbability((int) singleOperandEvaluate);
                } else {
                    probability = poissonDistribution.probability((int) singleOperandEvaluate);
                }
                NumericFunction.checkValue(probability);
                return new NumberEval(probability);
            } catch (EvaluationException unused) {
                return ErrorEval.VALUE_INVALID;
            }
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
