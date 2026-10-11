package org.apache.poi.ss.formula.eval;

import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.formula.EvaluationName;

/* loaded from: classes13.dex */
public final class ExternalNameEval implements ValueEval {
    private final EvaluationName _name;

    public ExternalNameEval(EvaluationName evaluationName) {
        this._name = evaluationName;
    }

    public EvaluationName getName() {
        return this._name;
    }

    public String toString() {
        return ExternalNameEval.class.getName() + " [" + this._name.getNameText() + IteratorUtils.f104924b;
    }
}
