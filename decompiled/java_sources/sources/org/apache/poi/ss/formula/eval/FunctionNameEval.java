package org.apache.poi.ss.formula.eval;

import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes13.dex */
public final class FunctionNameEval implements ValueEval {
    private final String _functionName;

    public FunctionNameEval(String str) {
        this._functionName = str;
    }

    public String getFunctionName() {
        return this._functionName;
    }

    public String toString() {
        return FunctionNameEval.class.getName() + " [" + this._functionName + IteratorUtils.f104924b;
    }
}
