package org.apache.poi.ss.formula.functions;

import java.util.ArrayList;
import org.apache.commons.math3.util.ArithmeticUtils;
import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public class Gcd implements FreeRefFunction {
    public static final Gcd instance = new Gcd();
    private static final long MAX_INPUT = (long) Math.pow(2.0d, 53.0d);

    private boolean isInvalidInput(double d) {
        return d < 0.0d || d > ((double) MAX_INPUT);
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        if (valueEvalArr.length < 1) {
            return ErrorEval.VALUE_INVALID;
        }
        if (valueEvalArr.length == 1) {
            try {
                return isInvalidInput(OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEvalArr[0], operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex()))) ? ErrorEval.NUM_ERROR : new NumberEval((long) r9);
            } catch (EvaluationException unused) {
                return ErrorEval.VALUE_INVALID;
            }
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (ValueEval valueEval : valueEvalArr) {
                double coerceValueToDouble = OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEval, operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex()));
                if (isInvalidInput(coerceValueToDouble)) {
                    return ErrorEval.NUM_ERROR;
                }
                arrayList.add(Long.valueOf((long) coerceValueToDouble));
            }
            long longValue = ((Long) arrayList.get(0)).longValue();
            for (int i = 1; i < arrayList.size(); i++) {
                longValue = ArithmeticUtils.gcd(longValue, ((Long) arrayList.get(i)).longValue());
            }
            return new NumberEval(longValue);
        } catch (EvaluationException unused2) {
            return ErrorEval.VALUE_INVALID;
        }
    }
}
