package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
abstract class Var2or3ArgFunction implements Function2Arg, Function3Arg {
    @Override // org.apache.poi.ss.formula.functions.Function
    public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        int length = valueEvalArr.length;
        return length != 2 ? length != 3 ? ErrorEval.VALUE_INVALID : evaluate(i, i2, valueEvalArr[0], valueEvalArr[1], valueEvalArr[2]) : evaluate(i, i2, valueEvalArr[0], valueEvalArr[1]);
    }
}
