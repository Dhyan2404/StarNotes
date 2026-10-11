package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.util.Removal;

@Removal(version = "6.0.0")
@Deprecated
/* loaded from: classes13.dex */
public abstract class Fixed0ArgFunction implements Function0Arg {
    @Override // org.apache.poi.ss.formula.functions.Function
    public final ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        return valueEvalArr.length != 0 ? ErrorEval.VALUE_INVALID : evaluate(i, i2);
    }
}
