package org.apache.poi.ss.formula.functions;

import java.math.BigInteger;
import java.util.HashMap;
import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public class FactDouble extends Fixed1ArgFunction implements FreeRefFunction {
    public static final FreeRefFunction instance = new FactDouble();
    static HashMap<Integer, BigInteger> cache = new HashMap<>();

    public static BigInteger factorial(int i) {
        if (i == 0 || i < 0) {
            return BigInteger.ONE;
        }
        if (cache.containsKey(Integer.valueOf(i))) {
            return cache.get(Integer.valueOf(i));
        }
        BigInteger multiply = BigInteger.valueOf(i).multiply(factorial(i - 2));
        cache.put(Integer.valueOf(i), multiply);
        return multiply;
    }

    @Override // org.apache.poi.ss.formula.functions.Function1Arg
    /* renamed from: evaluate */
    public ValueEval lambda$evaluateArray$0(int i, int i2, ValueEval valueEval) {
        try {
            if (OperandResolver.coerceValueToInt(valueEval) < 0) {
                return ErrorEval.NUM_ERROR;
            }
            return new NumberEval(factorial(r0).longValue());
        } catch (EvaluationException unused) {
            return ErrorEval.VALUE_INVALID;
        }
    }

    @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
    public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
        if (valueEvalArr.length != 1) {
            return ErrorEval.VALUE_INVALID;
        }
        return lambda$evaluateArray$0(operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex(), valueEvalArr[0]);
    }
}
