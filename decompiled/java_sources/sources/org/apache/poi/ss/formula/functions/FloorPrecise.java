package org.apache.poi.ss.formula.functions;

import java.math.RoundingMode;
import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public final class FloorPrecise implements FreeRefFunction {
    public static final FloorPrecise instance = new FloorPrecise();

    private FloorPrecise() {
    }

    private static Double evaluateValue(ValueEval valueEval, int i, int i2) throws EvaluationException {
        return OperandResolver.parseDouble(OperandResolver.coerceValueToString(OperandResolver.getSingleValue(valueEval, i, i2)));
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        Double evaluateValue;
        if (valueEvalArr.length == 0) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            Double evaluateValue2 = evaluateValue(valueEvalArr[0], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
            if (evaluateValue2 == null) {
                return ErrorEval.VALUE_INVALID;
            }
            double abs = (valueEvalArr.length <= 1 || (evaluateValue = evaluateValue(valueEvalArr[1], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex())) == null) ? 1.0d : Math.abs(evaluateValue.doubleValue());
            return abs != 1.0d ? new NumberEval(MathX.scaledRoundUsingBigDecimal(evaluateValue2.doubleValue(), abs, RoundingMode.FLOOR)) : new NumberEval(Math.floor(evaluateValue2.doubleValue()));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
