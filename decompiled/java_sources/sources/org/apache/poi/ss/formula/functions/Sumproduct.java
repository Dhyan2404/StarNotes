package org.apache.poi.ss.formula.functions;

import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;
import org.apache.poi.ss.formula.TwoDEval;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.NumericValueEval;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.StringEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public final class Sumproduct implements Function {
    private static boolean areasAllSameSize(TwoDEval[] twoDEvalArr, int i, int i2) {
        for (TwoDEval twoDEval : twoDEvalArr) {
            if (twoDEval.getHeight() != i || twoDEval.getWidth() != i2) {
                return false;
            }
        }
        return true;
    }

    private static ValueEval evaluateAreaSumProduct(ValueEval[] valueEvalArr) throws EvaluationException {
        int length = valueEvalArr.length;
        try {
            TwoDEval[] twoDEvalArr = (TwoDEval[]) Arrays.copyOf(valueEvalArr, length, TwoDEval[].class);
            TwoDEval twoDEval = twoDEvalArr[0];
            int height = twoDEval.getHeight();
            int width = twoDEval.getWidth();
            if (!areasAllSameSize(twoDEvalArr, height, width)) {
                for (int i = 1; i < twoDEvalArr.length; i++) {
                    throwFirstError(twoDEvalArr[i]);
                }
                return ErrorEval.VALUE_INVALID;
            }
            double d = 0.0d;
            for (int i2 = 0; i2 < height; i2++) {
                for (int i3 = 0; i3 < width; i3++) {
                    double d2 = 1.0d;
                    for (int i4 = 0; i4 < length; i4++) {
                        d2 *= getProductTerm(twoDEvalArr[i4].getValue(i2, i3), false);
                    }
                    d += d2;
                }
            }
            return new NumberEval(d);
        } catch (ArrayStoreException unused) {
            return ErrorEval.VALUE_INVALID;
        }
    }

    private static ValueEval evaluateSingleProduct(ValueEval[] valueEvalArr) throws EvaluationException {
        int length = valueEvalArr.length;
        double d = 1.0d;
        for (ValueEval valueEval : valueEvalArr) {
            d *= getScalarValue(valueEval);
        }
        return new NumberEval(d);
    }

    private static double getProductTerm(ValueEval valueEval, boolean z) throws EvaluationException {
        if ((valueEval instanceof BlankEval) || valueEval == null) {
            if (z) {
                throw new EvaluationException(ErrorEval.VALUE_INVALID);
            }
            return 0.0d;
        }
        if (valueEval instanceof ErrorEval) {
            throw new EvaluationException((ErrorEval) valueEval);
        }
        if (valueEval instanceof StringEval) {
            if (z) {
                throw new EvaluationException(ErrorEval.VALUE_INVALID);
            }
            return 0.0d;
        }
        if (valueEval instanceof NumericValueEval) {
            return ((NumericValueEval) valueEval).getNumberValue();
        }
        throw new IllegalStateException("Unexpected value eval class (" + valueEval.getClass().getName() + MotionUtils.f31762d);
    }

    private static double getScalarValue(ValueEval valueEval) throws EvaluationException {
        if (valueEval instanceof RefEval) {
            RefEval refEval = (RefEval) valueEval;
            if (refEval.getNumberOfSheets() > 1) {
                throw new EvaluationException(ErrorEval.VALUE_INVALID);
            }
            valueEval = refEval.getInnerValueEval(refEval.getFirstSheetIndex());
        }
        if (valueEval == null) {
            throw new IllegalStateException("parameter may not be null");
        }
        if (valueEval instanceof AreaEval) {
            AreaEval areaEval = (AreaEval) valueEval;
            if (!areaEval.isColumn() || !areaEval.isRow()) {
                throw new EvaluationException(ErrorEval.VALUE_INVALID);
            }
            valueEval = areaEval.getRelativeValue(0, 0);
        }
        return getProductTerm(valueEval, true);
    }

    private static void throwFirstError(TwoDEval twoDEval) throws EvaluationException {
        int height = twoDEval.getHeight();
        int width = twoDEval.getWidth();
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                ValueEval value = twoDEval.getValue(i, i2);
                if (value instanceof ErrorEval) {
                    throw new EvaluationException((ErrorEval) value);
                }
            }
        }
    }

    @Override // org.apache.poi.ss.formula.functions.Function
    public ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length < 1) {
            return ErrorEval.VALUE_INVALID;
        }
        ValueEval valueEval = valueEvalArr[0];
        try {
            if (!(valueEval instanceof NumericValueEval) && !(valueEval instanceof RefEval)) {
                if (valueEval instanceof TwoDEval) {
                    TwoDEval twoDEval = (TwoDEval) valueEval;
                    return (twoDEval.isRow() && twoDEval.isColumn()) ? evaluateSingleProduct(valueEvalArr) : evaluateAreaSumProduct(valueEvalArr);
                }
                throw new IllegalStateException("Invalid arg type for SUMPRODUCT: (" + valueEval.getClass().getName() + MotionUtils.f31762d);
            }
            return evaluateSingleProduct(valueEvalArr);
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
