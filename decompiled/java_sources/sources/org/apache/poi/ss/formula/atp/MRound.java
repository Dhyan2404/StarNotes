package org.apache.poi.ss.formula.atp;

import java.math.BigDecimal;
import java.math.RoundingMode;
import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.FreeRefFunction;
import org.apache.poi.ss.formula.functions.NumericFunction;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class MRound implements FreeRefFunction {
    public static final FreeRefFunction instance = new MRound();

    private MRound() {
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        if (valueEvalArr.length != 2) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            double coerceValueToDouble = OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEvalArr[0], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex()));
            double coerceValueToDouble2 = OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEvalArr[1], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex()));
            double d = 0.0d;
            if (coerceValueToDouble2 != 0.0d) {
                if (coerceValueToDouble * coerceValueToDouble2 < 0.0d) {
                    throw new EvaluationException(ErrorEval.NUM_ERROR);
                }
                BigDecimal valueOf = BigDecimal.valueOf(coerceValueToDouble2);
                d = valueOf.multiply(BigDecimal.valueOf(coerceValueToDouble).divide(valueOf, 0, RoundingMode.HALF_UP)).doubleValue();
            }
            NumericFunction.checkValue(d);
            return new NumberEval(d);
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
