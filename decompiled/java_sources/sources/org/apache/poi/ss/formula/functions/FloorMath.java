package org.apache.poi.ss.formula.functions;

import java.math.RoundingMode;
import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public final class FloorMath implements FreeRefFunction {
    public static final FloorMath instance = new FloorMath();

    private FloorMath() {
    }

    private static Double evaluateValue(ValueEval valueEval, int i, int i2) throws EvaluationException {
        return OperandResolver.parseDouble(OperandResolver.coerceValueToString(OperandResolver.getSingleValue(valueEval, i, i2)));
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        Double evaluateValue;
        Double evaluateValue2;
        if (valueEvalArr.length == 0) {
            return ErrorEval.VALUE_INVALID;
        }
        boolean z = false;
        try {
            Double evaluateValue3 = evaluateValue(valueEvalArr[0], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
            if (evaluateValue3 == null) {
                return ErrorEval.VALUE_INVALID;
            }
            double doubleValue = (valueEvalArr.length <= 1 || (evaluateValue2 = evaluateValue(valueEvalArr[1], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex())) == null) ? 1.0d : evaluateValue2.doubleValue();
            if (valueEvalArr.length > 2 && (evaluateValue = evaluateValue(valueEvalArr[2], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex())) != null && evaluateValue.doubleValue() < 0.0d) {
                z = true;
            }
            if (!z || evaluateValue3.doubleValue() >= 0.0d) {
                if (doubleValue != 1.0d) {
                    return new NumberEval(MathX.scaledRoundUsingBigDecimal(evaluateValue3.doubleValue(), doubleValue, doubleValue < 0.0d ? RoundingMode.CEILING : RoundingMode.FLOOR));
                }
                return new NumberEval(Math.floor(evaluateValue3.doubleValue()));
            }
            if (doubleValue != 1.0d) {
                return new NumberEval(MathX.scaledRoundUsingBigDecimal(evaluateValue3.doubleValue(), doubleValue, doubleValue < 0.0d ? RoundingMode.FLOOR : RoundingMode.CEILING));
            }
            return new NumberEval(Math.ceil(evaluateValue3.doubleValue()));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
