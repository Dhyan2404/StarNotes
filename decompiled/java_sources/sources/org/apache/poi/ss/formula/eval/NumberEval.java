package org.apache.poi.ss.formula.eval;

import com.google.android.material.motion.MotionUtils;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.formula.ptg.IntPtg;
import org.apache.poi.ss.formula.ptg.NumberPtg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.util.NumberToTextConverter;

/* loaded from: classes13.dex */
public final class NumberEval implements NumericValueEval, StringValueEval {
    public static final NumberEval ZERO = new NumberEval(0.0d);
    private String _stringValue;
    private final double _value;

    public NumberEval(Ptg ptg) {
        if (ptg != null) {
            if (ptg instanceof IntPtg) {
                this._value = ((IntPtg) ptg).getValue();
                return;
            }
            if (ptg instanceof NumberPtg) {
                this._value = ((NumberPtg) ptg).getValue();
                return;
            }
            throw new IllegalArgumentException("bad argument type (" + ptg.getClass().getName() + MotionUtils.f31762d);
        }
        throw new IllegalArgumentException("ptg must not be null");
    }

    @Override // org.apache.poi.ss.formula.eval.NumericValueEval
    public double getNumberValue() {
        return this._value;
    }

    @Override // org.apache.poi.ss.formula.eval.StringValueEval
    public String getStringValue() {
        if (this._stringValue == null) {
            this._stringValue = NumberToTextConverter.toText(this._value);
        }
        return this._stringValue;
    }

    public final String toString() {
        return NumberEval.class.getName() + " [" + getStringValue() + IteratorUtils.f104924b;
    }

    public NumberEval(double d) {
        this._value = d;
    }
}
