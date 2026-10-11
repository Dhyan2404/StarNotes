package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* renamed from: org.apache.poi.ss.formula.functions.Na */
/* loaded from: classes13.dex */
public final class C19759Na {
    public static ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        return valueEvalArr.length != 0 ? ErrorEval.VALUE_INVALID : ErrorEval.f111531NA;
    }
}
