package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
abstract class Var1or2ArgFunction implements Function1Arg, Function2Arg {
    @Override // org.apache.poi.ss.formula.functions.Function
    public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        int length = valueEvalArr.length;
        return length != 1 ? length != 2 ? ErrorEval.VALUE_INVALID : evaluate(i, i2, valueEvalArr[0], valueEvalArr[1]) : evaluate(i, i2, valueEvalArr[0]);
    }
}
