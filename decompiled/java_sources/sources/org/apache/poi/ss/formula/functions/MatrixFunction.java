package org.apache.poi.ss.formula.functions;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.LUDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.poi.ss.formula.CacheAreaEval;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.MultiOperandNumericFunction;

/* loaded from: classes13.dex */
public abstract class MatrixFunction implements Function {
    public static final Function MINVERSE = new OneArrayArg() { // from class: org.apache.poi.ss.formula.functions.MatrixFunction.1
        private final MutableValueCollector instance = new MutableValueCollector(false, false);

        @Override // org.apache.poi.ss.formula.functions.MatrixFunction.OneArrayArg
        public double[] collectValues(ValueEval valueEval) throws EvaluationException {
            double[] collectValues = this.instance.collectValues(valueEval);
            if ((valueEval instanceof AreaEval) && collectValues.length == 1) {
                throw new EvaluationException(ErrorEval.VALUE_INVALID);
            }
            return collectValues;
        }

        @Override // org.apache.poi.ss.formula.functions.MatrixFunction.OneArrayArg
        public double[][] evaluate(double[][] dArr) throws EvaluationException {
            if (dArr.length == dArr[0].length) {
                return MatrixUtils.inverse(new Array2DRowRealMatrix(dArr)).getData();
            }
            throw new EvaluationException(ErrorEval.VALUE_INVALID);
        }
    };
    public static final Function TRANSPOSE = new OneArrayArg() { // from class: org.apache.poi.ss.formula.functions.MatrixFunction.2
        private final MutableValueCollector instance = new MutableValueCollector(false, true);

        @Override // org.apache.poi.ss.formula.functions.MatrixFunction.OneArrayArg
        public double[] collectValues(ValueEval valueEval) throws EvaluationException {
            return this.instance.collectValues(valueEval);
        }

        @Override // org.apache.poi.ss.formula.functions.MatrixFunction.OneArrayArg
        public double[][] evaluate(double[][] dArr) throws EvaluationException {
            return new Array2DRowRealMatrix(dArr).transpose().getData();
        }
    };
    public static final Function MDETERM = new Mdeterm();
    public static final Function MMULT = new TwoArrayArg() { // from class: org.apache.poi.ss.formula.functions.MatrixFunction.3
        private final MutableValueCollector instance = new MutableValueCollector(false, false);

        @Override // org.apache.poi.ss.formula.functions.MatrixFunction.TwoArrayArg
        public double[] collectValues(ValueEval valueEval) throws EvaluationException {
            double[] collectValues = this.instance.collectValues(valueEval);
            if ((valueEval instanceof AreaEval) && collectValues.length == 1) {
                throw new EvaluationException(ErrorEval.VALUE_INVALID);
            }
            return collectValues;
        }

        @Override // org.apache.poi.ss.formula.functions.MatrixFunction.TwoArrayArg
        public double[][] evaluate(double[][] dArr, double[][] dArr2) throws EvaluationException {
            Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(dArr);
            Array2DRowRealMatrix array2DRowRealMatrix2 = new Array2DRowRealMatrix(dArr2);
            try {
                MatrixUtils.checkMultiplicationCompatible(array2DRowRealMatrix, array2DRowRealMatrix2);
                return array2DRowRealMatrix.multiply(array2DRowRealMatrix2).getData();
            } catch (DimensionMismatchException unused) {
                throw new EvaluationException(ErrorEval.VALUE_INVALID);
            }
        }
    };

    /* loaded from: classes13.dex */
    public static class Mdeterm extends OneArrayArg {
        private final MutableValueCollector instance;

        public Mdeterm() {
            MutableValueCollector mutableValueCollector = new MutableValueCollector(false, false);
            this.instance = mutableValueCollector;
            mutableValueCollector.setBlankEvalPolicy(MultiOperandNumericFunction.Policy.ERROR);
        }

        @Override // org.apache.poi.ss.formula.functions.MatrixFunction.OneArrayArg
        public double[] collectValues(ValueEval valueEval) throws EvaluationException {
            double[] collectValues = this.instance.collectValues(valueEval);
            if ((valueEval instanceof AreaEval) && collectValues.length == 1) {
                throw new EvaluationException(ErrorEval.VALUE_INVALID);
            }
            return this.instance.collectValues(valueEval);
        }

        @Override // org.apache.poi.ss.formula.functions.MatrixFunction.OneArrayArg
        public double[][] evaluate(double[][] dArr) throws EvaluationException {
            if (dArr.length != dArr[0].length) {
                throw new EvaluationException(ErrorEval.VALUE_INVALID);
            }
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 1, 1);
            dArr2[0][0] = new LUDecomposition(new Array2DRowRealMatrix(dArr)).getDeterminant();
            return dArr2;
        }
    }

    /* loaded from: classes13.dex */
    public static final class MutableValueCollector extends MultiOperandNumericFunction {
        public MutableValueCollector(boolean z, boolean z2) {
            super(z, z2);
        }

        public double[] collectValues(ValueEval... valueEvalArr) throws EvaluationException {
            return getNumberArray(valueEvalArr);
        }

        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) {
            throw new IllegalStateException("should not be called");
        }
    }

    /* loaded from: classes13.dex */
    public static abstract class OneArrayArg extends Fixed1ArgFunction {
        public abstract double[] collectValues(ValueEval valueEval) throws EvaluationException;

        @Override // org.apache.poi.ss.formula.functions.Function1Arg
        /* renamed from: evaluate */
        public ValueEval lambda$evaluateArray$0(int i, int i2, ValueEval valueEval) {
            if (valueEval instanceof AreaEval) {
                try {
                    double[][] evaluate = evaluate(MatrixFunction.fillDoubleArray(collectValues(valueEval), ((AreaEval) valueEval).getHeight(), ((AreaEval) valueEval).getWidth()));
                    int length = evaluate[0].length;
                    int length2 = evaluate.length;
                    double[] extractDoubleArray = MatrixFunction.extractDoubleArray(evaluate);
                    MatrixFunction.checkValues(extractDoubleArray);
                    ValueEval[] valueEvalArr = new ValueEval[extractDoubleArray.length];
                    for (int i3 = 0; i3 < extractDoubleArray.length; i3++) {
                        valueEvalArr[i3] = new NumberEval(extractDoubleArray[i3]);
                    }
                    if (extractDoubleArray.length == 1) {
                        return valueEvalArr[0];
                    }
                    AreaEval areaEval = (AreaEval) valueEval;
                    return new CacheAreaEval(areaEval.getFirstRow(), areaEval.getFirstColumn(), (areaEval.getFirstRow() + length2) - 1, (areaEval.getFirstColumn() + length) - 1, valueEvalArr);
                } catch (EvaluationException e) {
                    return e.getErrorEval();
                }
            }
            try {
                double[][] evaluate2 = evaluate(new double[][]{new double[]{NumericFunction.singleOperandEvaluate(valueEval, i, i2)}});
                NumericFunction.checkValue(evaluate2[0][0]);
                return new NumberEval(evaluate2[0][0]);
            } catch (EvaluationException e2) {
                return e2.getErrorEval();
            }
        }

        public abstract double[][] evaluate(double[][] dArr) throws EvaluationException;
    }

    /* loaded from: classes13.dex */
    public static abstract class TwoArrayArg extends Fixed2ArgFunction {
        public abstract double[] collectValues(ValueEval valueEval) throws EvaluationException;

        @Override // org.apache.poi.ss.formula.functions.Function2Arg
        public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
            double[][] fillDoubleArray;
            double[][] dArr;
            try {
                try {
                    if (valueEval instanceof AreaEval) {
                        try {
                            fillDoubleArray = MatrixFunction.fillDoubleArray(collectValues(valueEval), ((AreaEval) valueEval).getHeight(), ((AreaEval) valueEval).getWidth());
                        } catch (EvaluationException e) {
                            return e.getErrorEval();
                        }
                    } else {
                        try {
                            fillDoubleArray = new double[][]{new double[]{NumericFunction.singleOperandEvaluate(valueEval, i, i2)}};
                        } catch (EvaluationException e2) {
                            return e2.getErrorEval();
                        }
                    }
                    if (valueEval2 instanceof AreaEval) {
                        try {
                            dArr = MatrixFunction.fillDoubleArray(collectValues(valueEval2), ((AreaEval) valueEval2).getHeight(), ((AreaEval) valueEval2).getWidth());
                        } catch (EvaluationException e3) {
                            return e3.getErrorEval();
                        }
                    } else {
                        try {
                            dArr = new double[][]{new double[]{NumericFunction.singleOperandEvaluate(valueEval2, i, i2)}};
                        } catch (EvaluationException e4) {
                            return e4.getErrorEval();
                        }
                    }
                    double[][] evaluate = evaluate(fillDoubleArray, dArr);
                    int length = evaluate[0].length;
                    int length2 = evaluate.length;
                    double[] extractDoubleArray = MatrixFunction.extractDoubleArray(evaluate);
                    MatrixFunction.checkValues(extractDoubleArray);
                    ValueEval[] valueEvalArr = new ValueEval[extractDoubleArray.length];
                    for (int i3 = 0; i3 < extractDoubleArray.length; i3++) {
                        valueEvalArr[i3] = new NumberEval(extractDoubleArray[i3]);
                    }
                    if (extractDoubleArray.length == 1) {
                        return valueEvalArr[0];
                    }
                    AreaEval areaEval = (AreaEval) valueEval;
                    return new CacheAreaEval(areaEval.getFirstRow(), areaEval.getFirstColumn(), (areaEval.getFirstRow() + length2) - 1, (areaEval.getFirstColumn() + length) - 1, valueEvalArr);
                } catch (IllegalArgumentException unused) {
                    return ErrorEval.VALUE_INVALID;
                }
            } catch (EvaluationException e5) {
                return e5.getErrorEval();
            }
        }

        public abstract double[][] evaluate(double[][] dArr, double[][] dArr2) throws EvaluationException;
    }

    public static void checkValues(double[] dArr) throws EvaluationException {
        for (double d : dArr) {
            if (Double.isNaN(d) || Double.isInfinite(d)) {
                throw new EvaluationException(ErrorEval.NUM_ERROR);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double[] extractDoubleArray(double[][] dArr) throws EvaluationException {
        if (dArr != null && dArr.length >= 1) {
            double[] dArr2 = dArr[0];
            if (dArr2.length >= 1) {
                double[] dArr3 = new double[dArr.length * dArr2.length];
                int i = 0;
                for (double[] dArr4 : dArr) {
                    int i2 = 0;
                    while (i2 < dArr[0].length) {
                        dArr3[i] = dArr4[i2];
                        i2++;
                        i++;
                    }
                }
                return dArr3;
            }
        }
        throw new EvaluationException(ErrorEval.VALUE_INVALID);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double[][] fillDoubleArray(double[] dArr, int i, int i2) throws EvaluationException {
        if (i < 1 || i2 < 1 || dArr.length < 1) {
            throw new EvaluationException(ErrorEval.VALUE_INVALID);
        }
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        int i3 = 0;
        int i4 = 0;
        for (double d : dArr) {
            if (i3 < dArr2.length) {
                if (i4 == dArr2[0].length) {
                    i3++;
                    i4 = 0;
                }
                if (i3 < dArr2.length) {
                    dArr2[i3][i4] = d;
                    i4++;
                }
            }
        }
        return dArr2;
    }

    public final double singleOperandEvaluate(ValueEval valueEval, int i, int i2) throws EvaluationException {
        return OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEval, i, i2));
    }
}
