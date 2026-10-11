package org.apache.poi.ss.formula.functions;

import java.lang.reflect.Array;
import org.apache.poi.ss.formula.CacheAreaEval;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.MissingArgEval;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.NumericValueEval;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public final class Trend implements Function {

    /* loaded from: classes13.dex */
    public static final class TrendResults {
        private final int resultHeight;
        private final int resultWidth;
        private final double[] vals;

        public TrendResults(double[] dArr, int i, int i2) {
            this.vals = dArr;
            this.resultWidth = i;
            this.resultHeight = i2;
        }
    }

    private static double[][] evalToArray(ValueEval valueEval) throws EvaluationException {
        if (valueEval instanceof MissingArgEval) {
            return (double[][]) Array.newInstance((Class<?>) Double.TYPE, 0, 0);
        }
        if (valueEval instanceof RefEval) {
            RefEval refEval = (RefEval) valueEval;
            if (refEval.getNumberOfSheets() > 1) {
                throw new EvaluationException(ErrorEval.VALUE_INVALID);
            }
            valueEval = refEval.getInnerValueEval(refEval.getFirstSheetIndex());
        }
        if (valueEval == null) {
            throw new IllegalStateException("Parameter may not be null.");
        }
        if (!(valueEval instanceof AreaEval)) {
            if (!(valueEval instanceof NumericValueEval)) {
                throw new EvaluationException(ErrorEval.VALUE_INVALID);
            }
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 1, 1);
            dArr[0][0] = ((NumericValueEval) valueEval).getNumberValue();
            return dArr;
        }
        AreaEval areaEval = (AreaEval) valueEval;
        int width = areaEval.getWidth();
        int height = areaEval.getHeight();
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, height, width);
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                ValueEval relativeValue = areaEval.getRelativeValue(i, i2);
                if (!(relativeValue instanceof NumericValueEval)) {
                    throw new EvaluationException(ErrorEval.VALUE_INVALID);
                }
                dArr2[i][i2] = ((NumericValueEval) relativeValue).getNumberValue();
            }
        }
        return dArr2;
    }

    private static double[] flattenArray(double[][] dArr) {
        if (dArr.length < 1) {
            return new double[0];
        }
        double[] dArr2 = new double[dArr.length * dArr[0].length];
        for (int i = 0; i < dArr.length; i++) {
            double[] dArr3 = dArr[i];
            double[] dArr4 = dArr[0];
            System.arraycopy(dArr3, 0, dArr2, dArr4.length * i, dArr4.length);
        }
        return dArr2;
    }

    private static double[][] flattenArrayToRow(double[][] dArr) {
        if (dArr.length < 1) {
            return (double[][]) Array.newInstance((Class<?>) Double.TYPE, 0, 0);
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr.length * dArr[0].length, 1);
        for (int i = 0; i < dArr.length; i++) {
            int i2 = 0;
            while (true) {
                double[] dArr3 = dArr[0];
                if (i2 < dArr3.length) {
                    dArr2[(dArr3.length * i) + i2][0] = dArr[i][i2];
                    i2++;
                }
            }
        }
        return dArr2;
    }

    private static double[][] getDefaultArrayOneD(int i) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, 1);
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2][0] = i2 + 1.0d;
        }
        return dArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x00ec, code lost:
    
        if (r4.length < 1) goto L69;
     */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.apache.poi.ss.formula.functions.Trend.TrendResults getNewY(org.apache.poi.ss.formula.eval.ValueEval[] r19) throws org.apache.poi.ss.formula.eval.EvaluationException {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.functions.Trend.getNewY(org.apache.poi.ss.formula.eval.ValueEval[]):org.apache.poi.ss.formula.functions.Trend$TrendResults");
    }

    private static boolean isAllColumnsSame(double[][] dArr) {
        if (dArr.length == 0) {
            return false;
        }
        int length = dArr[0].length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < dArr[0].length; i++) {
            double d = Double.NaN;
            int i2 = 0;
            while (true) {
                if (i2 < dArr.length) {
                    double d2 = dArr[i2][i];
                    if (i2 > 0 && d2 != d) {
                        zArr[i] = true;
                        break;
                    }
                    i2++;
                    d = d2;
                }
            }
        }
        for (int i3 = 0; i3 < length; i3++) {
            if (zArr[i3]) {
                return false;
            }
        }
        return true;
    }

    private static double[][] switchRowsColumns(double[][] dArr) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr[0].length, dArr.length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                dArr2[i2][i] = dArr[i][i2];
            }
        }
        return dArr2;
    }

    @Override // org.apache.poi.ss.formula.functions.Function
    public ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length < 1 || valueEvalArr.length > 4) {
            return ErrorEval.VALUE_INVALID;
        }
        try {
            TrendResults newY = getNewY(valueEvalArr);
            ValueEval[] valueEvalArr2 = new ValueEval[newY.vals.length];
            for (int i3 = 0; i3 < newY.vals.length; i3++) {
                valueEvalArr2[i3] = new NumberEval(newY.vals[i3]);
            }
            return newY.vals.length == 1 ? valueEvalArr2[0] : new CacheAreaEval(i, i2, (newY.resultHeight + i) - 1, (newY.resultWidth + i2) - 1, valueEvalArr2);
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }
}
