package org.apache.poi.ss.formula.eval;

import org.apache.poi.ss.formula.eval.UnaryPlusEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.ArrayFunction;
import org.apache.poi.ss.formula.functions.Fixed1ArgFunction;
import org.apache.poi.ss.formula.functions.Function;

/* loaded from: classes13.dex */
public final class UnaryPlusEval extends Fixed1ArgFunction implements ArrayFunction {
    public static final Function instance = new UnaryPlusEval();

    private UnaryPlusEval() {
    }

    @Override // org.apache.poi.ss.formula.functions.Function1Arg
    /* renamed from: evaluate */
    public ValueEval lambda$evaluateArray$0(int i, int i2, ValueEval valueEval) {
        try {
            ValueEval singleValue = OperandResolver.getSingleValue(valueEval, i, i2);
            return singleValue instanceof StringEval ? singleValue : new NumberEval(OperandResolver.coerceValueToDouble(singleValue));
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    @Override // org.apache.poi.ss.formula.functions.ArrayFunction
    public ValueEval evaluateArray(ValueEval[] valueEvalArr, final int i, final int i2) {
        return valueEvalArr.length != 1 ? ErrorEval.VALUE_INVALID : evaluateOneArrayArg(valueEvalArr[0], i, i2, new java.util.function.Function() { // from class: com.sunia.HTREnginev2.rpn
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ValueEval lambda$evaluateArray$0;
                lambda$evaluateArray$0 = UnaryPlusEval.this.lambda$evaluateArray$0(i, i2, (ValueEval) obj);
                return lambda$evaluateArray$0;
            }
        });
    }
}
