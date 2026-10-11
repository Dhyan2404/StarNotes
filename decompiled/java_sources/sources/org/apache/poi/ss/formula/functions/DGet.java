package org.apache.poi.ss.formula.functions;

import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public final class DGet implements IDStarAlgorithm {
    private ValueEval result;

    @Override // org.apache.poi.ss.formula.functions.IDStarAlgorithm
    public ValueEval getResult() {
        ValueEval valueEval = this.result;
        if (valueEval != null && !(valueEval instanceof BlankEval)) {
            try {
                return OperandResolver.coerceValueToString(OperandResolver.getSingleValue(valueEval, 0, 0)).isEmpty() ? ErrorEval.VALUE_INVALID : this.result;
            } catch (EvaluationException e) {
                return e.getErrorEval();
            }
        }
        return ErrorEval.VALUE_INVALID;
    }

    @Override // org.apache.poi.ss.formula.functions.IDStarAlgorithm
    public boolean processMatch(ValueEval valueEval) {
        ValueEval valueEval2 = this.result;
        if (valueEval2 == null) {
            this.result = valueEval;
            return true;
        }
        if (valueEval2 instanceof BlankEval) {
            this.result = valueEval;
            return true;
        }
        if (valueEval instanceof BlankEval) {
            return true;
        }
        this.result = ErrorEval.NUM_ERROR;
        return false;
    }
}
