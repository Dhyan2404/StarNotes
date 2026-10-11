package org.apache.poi.ss.formula.eval;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.ss.formula.functions.Fixed2ArgFunction;
import org.apache.poi.ss.formula.functions.Function;

/* loaded from: classes13.dex */
public final class ConcatEval extends Fixed2ArgFunction {
    public static final Function instance = new ConcatEval();

    private ConcatEval() {
    }

    private Object getText(ValueEval valueEval) {
        if (valueEval instanceof StringValueEval) {
            return ((StringValueEval) valueEval).getStringValue();
        }
        if (valueEval == BlankEval.instance) {
            return "";
        }
        throw new IllegalAccessError("Unexpected value type (" + valueEval.getClass().getName() + MotionUtils.f31762d);
    }

    @Override // org.apache.poi.ss.formula.functions.Function2Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
        try {
            ValueEval singleValue = OperandResolver.getSingleValue(valueEval, i, i2);
            ValueEval singleValue2 = OperandResolver.getSingleValue(valueEval2, i, i2);
            StringBuilder sb = new StringBuilder();
            sb.append(getText(singleValue));
            sb.append(getText(singleValue2));
            return new StringEval(sb.toString());
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
