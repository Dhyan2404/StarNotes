package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.NumericValueEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public final class DMin implements IDStarAlgorithm {
    private ValueEval minimumValue;

    @Override // org.apache.poi.ss.formula.functions.IDStarAlgorithm
    public ValueEval getResult() {
        ValueEval valueEval = this.minimumValue;
        return valueEval == null ? NumberEval.ZERO : valueEval;
    }

    @Override // org.apache.poi.ss.formula.functions.IDStarAlgorithm
    public boolean processMatch(ValueEval valueEval) {
        if (!(valueEval instanceof NumericValueEval)) {
            return true;
        }
        if (this.minimumValue == null) {
            this.minimumValue = valueEval;
            return true;
        }
        if (((NumericValueEval) valueEval).getNumberValue() >= ((NumericValueEval) this.minimumValue).getNumberValue()) {
            return true;
        }
        this.minimumValue = valueEval;
        return true;
    }
}
