package org.apache.poi.ss.formula.functions;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.ss.formula.TwoDEval;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.MissingArgEval;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.NumericValueEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.StringEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.LookupUtils;

/* loaded from: classes13.dex */
public final class Match extends Var2or3ArgFunction {

    /* loaded from: classes13.dex */
    public static final class SingleValueVector implements LookupUtils.ValueVector {
        private final ValueEval _value;

        public SingleValueVector(ValueEval valueEval) {
            this._value = valueEval;
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.ValueVector
        public ValueEval getItem(int i) {
            if (i == 0) {
                return this._value;
            }
            throw new IllegalStateException("Invalid index (" + i + ") only zero is allowed");
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.ValueVector
        public int getSize() {
            return 1;
        }
    }

    private static LookupUtils.LookupValueComparer createLookupComparer(ValueEval valueEval, boolean z) {
        return LookupUtils.createLookupComparer(valueEval, z, true);
    }

    private static ValueEval eval(int i, int i2, ValueEval valueEval, ValueEval valueEval2, double d) {
        try {
            return new NumberEval(findIndexOfValue(OperandResolver.getSingleValue(valueEval, i, i2), evaluateLookupRange(valueEval2), d == 0.0d, d > 0.0d) + 1.0d);
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    private static LookupUtils.ValueVector evaluateLookupRange(ValueEval valueEval) throws EvaluationException {
        if (valueEval instanceof RefEval) {
            RefEval refEval = (RefEval) valueEval;
            return refEval.getNumberOfSheets() == 1 ? new SingleValueVector(refEval.getInnerValueEval(refEval.getFirstSheetIndex())) : LookupUtils.createVector(refEval);
        }
        if (valueEval instanceof TwoDEval) {
            LookupUtils.ValueVector createVector = LookupUtils.createVector((TwoDEval) valueEval);
            if (createVector != null) {
                return createVector;
            }
            throw new EvaluationException(ErrorEval.f111531NA);
        }
        if (valueEval instanceof NumericValueEval) {
            throw new EvaluationException(ErrorEval.f111531NA);
        }
        if (valueEval instanceof StringEval) {
            if (OperandResolver.parseDouble(((StringEval) valueEval).getStringValue()) == null) {
                throw new EvaluationException(ErrorEval.VALUE_INVALID);
            }
            throw new EvaluationException(ErrorEval.f111531NA);
        }
        throw new IllegalStateException("Unexpected eval type (" + valueEval + MotionUtils.f31762d);
    }

    private static double evaluateMatchTypeArg(ValueEval valueEval, int i, int i2) throws EvaluationException {
        ValueEval singleValue = OperandResolver.getSingleValue(valueEval, i, i2);
        if (singleValue instanceof ErrorEval) {
            throw new EvaluationException((ErrorEval) singleValue);
        }
        if (singleValue instanceof NumericValueEval) {
            return ((NumericValueEval) singleValue).getNumberValue();
        }
        if (singleValue instanceof StringEval) {
            Double parseDouble = OperandResolver.parseDouble(((StringEval) singleValue).getStringValue());
            if (parseDouble != null) {
                return parseDouble.doubleValue();
            }
            throw new EvaluationException(ErrorEval.VALUE_INVALID);
        }
        if ((singleValue instanceof MissingArgEval) || (singleValue instanceof BlankEval)) {
            return 1.0d;
        }
        throw new IllegalStateException("Unexpected match_type type (" + singleValue.getClass().getName() + MotionUtils.f31762d);
    }

    private static int findIndexOfValue(ValueEval valueEval, LookupUtils.ValueVector valueVector, boolean z, boolean z2) throws EvaluationException {
        LookupUtils.LookupValueComparer createLookupComparer = createLookupComparer(valueEval, z);
        int size = valueVector.getSize();
        int i = 0;
        if (z) {
            while (i < size) {
                if (createLookupComparer.compareTo(valueVector.getItem(i)).isEqual()) {
                    return i;
                }
                i++;
            }
            throw new EvaluationException(ErrorEval.f111531NA);
        }
        if (z2) {
            for (int i2 = size - 1; i2 >= 0; i2--) {
                LookupUtils.CompareResult compareTo = createLookupComparer.compareTo(valueVector.getItem(i2));
                if (!compareTo.isTypeMismatch() && !compareTo.isLessThan()) {
                    return i2;
                }
            }
            throw new EvaluationException(ErrorEval.f111531NA);
        }
        while (i < size) {
            LookupUtils.CompareResult compareTo2 = createLookupComparer.compareTo(valueVector.getItem(i));
            if (compareTo2.isEqual()) {
                return i;
            }
            if (compareTo2.isGreaterThan()) {
                if (i >= 1) {
                    return i - 1;
                }
                throw new EvaluationException(ErrorEval.f111531NA);
            }
            i++;
        }
        return size - 1;
    }

    @Override // org.apache.poi.ss.formula.functions.Function2Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
        return eval(i, i2, valueEval, valueEval2, 1.0d);
    }

    @Override // org.apache.poi.ss.formula.functions.Function3Arg
    public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2, ValueEval valueEval3) {
        try {
            return eval(i, i2, valueEval, valueEval2, evaluateMatchTypeArg(valueEval3, i, i2));
        } catch (EvaluationException unused) {
            return ErrorEval.REF_INVALID;
        }
    }
}
