package org.apache.poi.ss.formula.functions;

import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;
import java.util.List;
import org.apache.poi.ss.formula.ThreeDEval;
import org.apache.poi.ss.formula.TwoDEval;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumericValueEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.StringValueEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
final class ArrayFunctionUtils {
    private static Double collectValue(ValueEval valueEval) throws EvaluationException {
        if (valueEval == null) {
            throw new IllegalArgumentException("ve must not be null");
        }
        if (valueEval instanceof NumericValueEval) {
            return Double.valueOf(((NumericValueEval) valueEval).getNumberValue());
        }
        if (valueEval instanceof StringValueEval) {
            return OperandResolver.parseDouble(((StringValueEval) valueEval).getStringValue().trim());
        }
        if (valueEval instanceof ErrorEval) {
            throw new EvaluationException((ErrorEval) valueEval);
        }
        if (valueEval == BlankEval.instance) {
            return null;
        }
        throw new IllegalStateException("Invalid ValueEval type passed for conversion: (" + valueEval.getClass() + MotionUtils.f31762d);
    }

    private static DoubleList collectValuesWithBlanks(ValueEval valueEval) throws EvaluationException {
        DoubleList doubleList = new DoubleList();
        if (valueEval instanceof ThreeDEval) {
            ThreeDEval threeDEval = (ThreeDEval) valueEval;
            for (int firstSheetIndex = threeDEval.getFirstSheetIndex(); firstSheetIndex <= threeDEval.getLastSheetIndex(); firstSheetIndex++) {
                int width = threeDEval.getWidth();
                int height = threeDEval.getHeight();
                for (int i = 0; i < height; i++) {
                    for (int i2 = 0; i2 < width; i2++) {
                        Double collectValue = collectValue(threeDEval.getValue(firstSheetIndex, i, i2));
                        if (collectValue == null) {
                            doubleList.add(Double.NaN);
                        } else {
                            doubleList.add(collectValue.doubleValue());
                        }
                    }
                }
            }
            return doubleList;
        }
        if (valueEval instanceof TwoDEval) {
            TwoDEval twoDEval = (TwoDEval) valueEval;
            int width2 = twoDEval.getWidth();
            int height2 = twoDEval.getHeight();
            for (int i3 = 0; i3 < height2; i3++) {
                for (int i4 = 0; i4 < width2; i4++) {
                    Double collectValue2 = collectValue(twoDEval.getValue(i3, i4));
                    if (collectValue2 == null) {
                        doubleList.add(Double.NaN);
                    } else {
                        doubleList.add(collectValue2.doubleValue());
                    }
                }
            }
            return doubleList;
        }
        if (!(valueEval instanceof RefEval)) {
            Double collectValue3 = collectValue(valueEval);
            if (collectValue3 == null) {
                doubleList.add(Double.NaN);
            } else {
                doubleList.add(collectValue3.doubleValue());
            }
            return doubleList;
        }
        RefEval refEval = (RefEval) valueEval;
        for (int firstSheetIndex2 = refEval.getFirstSheetIndex(); firstSheetIndex2 <= refEval.getLastSheetIndex(); firstSheetIndex2++) {
            Double collectValue4 = collectValue(refEval.getInnerValueEval(firstSheetIndex2));
            if (collectValue4 == null) {
                doubleList.add(Double.NaN);
            } else {
                doubleList.add(collectValue4.doubleValue());
            }
        }
        return doubleList;
    }

    public static List<DoubleList> getNumberArrays(ValueEval valueEval, ValueEval valueEval2) throws EvaluationException {
        double[] array = collectValuesWithBlanks(valueEval).toArray();
        double[] array2 = collectValuesWithBlanks(valueEval2).toArray();
        if (array.length != array2.length) {
            throw new EvaluationException(ErrorEval.f111531NA);
        }
        DoubleList doubleList = new DoubleList();
        DoubleList doubleList2 = new DoubleList();
        int min = Math.min(array.length, array2.length);
        for (int i = 0; i < min; i++) {
            if (!Double.isNaN(array[i]) && !Double.isNaN(array2[i])) {
                doubleList.add(array[i]);
                doubleList2.add(array2[i]);
            }
        }
        return Arrays.asList(doubleList, doubleList2);
    }
}
