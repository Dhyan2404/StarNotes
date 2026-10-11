package org.apache.poi.ss.formula.eval;

import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.formula.ptg.StringPtg;

/* loaded from: classes13.dex */
public final class StringEval implements StringValueEval {
    public static final StringEval EMPTY_INSTANCE = new StringEval("");
    private final String _value;

    public StringEval(Ptg ptg) {
        this(((StringPtg) ptg).getValue());
    }

    @Override // org.apache.poi.ss.formula.eval.StringValueEval
    public String getStringValue() {
        return this._value;
    }

    public String toString() {
        return StringEval.class.getName() + " [" + this._value + IteratorUtils.f104924b;
    }

    public StringEval(String str) {
        if (str != null) {
            this._value = str;
            return;
        }
        throw new IllegalArgumentException("value must not be null");
    }
}
