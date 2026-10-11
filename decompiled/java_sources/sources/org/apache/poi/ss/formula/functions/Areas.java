package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.RefListEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.ptg.NumberPtg;

/* loaded from: classes13.dex */
public final class Areas implements Function {
    @Override // org.apache.poi.ss.formula.functions.Function
    public ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length == 0) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            return new NumberEval(new NumberPtg(valueEvalArr[0] instanceof RefListEval ? ((RefListEval) r2).getList().size() : 1));
        } catch (Exception unused) {
            return ErrorEval.VALUE_INVALID;
        }
    }
}
