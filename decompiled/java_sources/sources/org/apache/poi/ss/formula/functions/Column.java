package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public final class Column {
    public static ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length > 1) {
            return ErrorEval.VALUE_INVALID;
        }
        if (valueEvalArr.length != 0) {
            ValueEval valueEval = valueEvalArr[0];
            if (valueEval instanceof AreaEval) {
                i2 = ((AreaEval) valueEval).getFirstColumn();
            } else {
                if (!(valueEval instanceof RefEval)) {
                    return ErrorEval.VALUE_INVALID;
                }
                i2 = ((RefEval) valueEval).getColumn();
            }
        }
        return new NumberEval(i2 + 1.0d);
    }
}
