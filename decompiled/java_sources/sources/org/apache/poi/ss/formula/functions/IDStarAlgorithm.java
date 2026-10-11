package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public interface IDStarAlgorithm {
    default boolean allowEmptyMatchField() {
        return false;
    }

    ValueEval getResult();

    boolean processMatch(ValueEval valueEval);
}
