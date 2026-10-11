package org.apache.poi.ss.formula.functions;

import java.util.List;
import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public class Forecast extends Fixed3ArgFunction implements FreeRefFunction {
    public static final Forecast instance = new Forecast();

    private Forecast() {
    }

    private static Double evaluateValue(ValueEval valueEval, int i, int i2) throws EvaluationException {
        return OperandResolver.parseDouble(OperandResolver.coerceValueToString(OperandResolver.getSingleValue(valueEval, i, i2)));
    }

    @Override // org.apache.poi.ss.formula.functions.Function3Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2, ValueEval valueEval3) {
        try {
            Double evaluateValue = evaluateValue(valueEval, i, i2);
            if (evaluateValue != null && !evaluateValue.isNaN() && !evaluateValue.isInfinite()) {
                List<DoubleList> numberArrays = ArrayFunctionUtils.getNumberArrays(valueEval2, valueEval3);
                int i3 = 0;
                double[] array = numberArrays.get(0).toArray();
                double[] array2 = numberArrays.get(1).toArray();
                double average = MathX.average(array);
                double average2 = MathX.average(array2);
                int length = array.length;
                double d = 0.0d;
                double d2 = 0.0d;
                while (i3 < length) {
                    double d3 = array2[i3] - average2;
                    double d4 = d2 + ((array[i3] - average) * d3);
                    d += Math.pow(d3, 2.0d);
                    i3++;
                    d2 = d4;
                }
                if (d == 0.0d) {
                    return ErrorEval.DIV_ZERO;
                }
                double d5 = d2 / d;
                return new NumberEval((average - (average2 * d5)) + (d5 * evaluateValue.doubleValue()));
            }
            return ErrorEval.VALUE_INVALID;
        } catch (EvaluationException e) {
            return e.getErrorEval();
        } catch (Exception unused) {
            return ErrorEval.f111531NA;
        }
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        if (valueEvalArr.length != 3) {
            return ErrorEval.VALUE_INVALID;
        }
        return evaluate(operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex(), valueEvalArr[0], valueEvalArr[1], valueEvalArr[2]);
    }
}
