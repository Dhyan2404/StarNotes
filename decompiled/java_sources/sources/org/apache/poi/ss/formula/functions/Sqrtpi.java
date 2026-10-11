package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.util.NumberToTextConverter;

/* loaded from: classes13.dex */
public class Sqrtpi implements FreeRefFunction {
    public static final Sqrtpi instance = new Sqrtpi();

    private boolean isInvalidInput(double d) {
        return d < 0.0d;
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        if (valueEvalArr.length != 1) {
            return ErrorEval.VALUE_INVALID;
        }
        return evaluate(operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex(), valueEvalArr[0]);
    }

    private ValueEval evaluate(int i, int i2, ValueEval valueEval) {
        try {
            double coerceValueToDouble = OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEval, i, i2));
            if (isInvalidInput(coerceValueToDouble)) {
                return ErrorEval.NUM_ERROR;
            }
            return new NumberEval(Double.parseDouble(NumberToTextConverter.toText(Math.sqrt(coerceValueToDouble * 3.141592653589793d))));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
