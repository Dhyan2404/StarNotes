package org.apache.poi.ss.formula.functions;

import org.apache.commons.math3.stat.descriptive.moment.GeometricMean;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.MultiOperandNumericFunction;

/* loaded from: classes13.dex */
public abstract class AggregateFunction extends MultiOperandNumericFunction {
    public static final Function AVEDEV = new AggregateFunction() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.2
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) {
            return StatsLib.avedev(dArr);
        }
    };
    public static final Function AVERAGE = new AggregateFunction() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.3
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) throws EvaluationException {
            if (dArr.length >= 1) {
                return MathX.average(dArr);
            }
            throw new EvaluationException(ErrorEval.DIV_ZERO);
        }
    };
    public static final Function AVERAGEA = new AggregateFunctionA() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.4
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) throws EvaluationException {
            if (dArr.length >= 1) {
                return MathX.average(dArr);
            }
            throw new EvaluationException(ErrorEval.DIV_ZERO);
        }
    };
    public static final Function DEVSQ = new AggregateFunction() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.5
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) {
            return StatsLib.devsq(dArr);
        }
    };
    public static final Function LARGE = new LargeSmall(true);
    public static final Function MAX = new AggregateFunction() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.6
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) {
            if (dArr.length > 0) {
                return MathX.max(dArr);
            }
            return 0.0d;
        }
    };
    public static final Function MEDIAN = new AggregateFunction() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.7
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) {
            return StatsLib.median(dArr);
        }
    };
    public static final Function MIN = new AggregateFunction() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.8
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) {
            if (dArr.length > 0) {
                return MathX.min(dArr);
            }
            return 0.0d;
        }
    };
    public static final Function PERCENTILE = new Percentile();
    public static final Function PRODUCT = new Product();
    public static final Function SMALL = new LargeSmall(false);
    public static final Function STDEV = new AggregateFunction() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.9
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) throws EvaluationException {
            if (dArr.length >= 1) {
                return StatsLib.stdev(dArr);
            }
            throw new EvaluationException(ErrorEval.DIV_ZERO);
        }
    };
    public static final Function STDEVP = new AggregateFunction() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.10
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) throws EvaluationException {
            if (dArr.length >= 1) {
                return StatsLib.stdevp(dArr);
            }
            throw new EvaluationException(ErrorEval.DIV_ZERO);
        }
    };
    public static final Function STDEVA = new AggregateFunctionA() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.11
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) throws EvaluationException {
            if (dArr.length >= 1) {
                return StatsLib.stdev(dArr);
            }
            throw new EvaluationException(ErrorEval.DIV_ZERO);
        }
    };
    public static final Function STDEVPA = new AggregateFunctionA() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.12
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) throws EvaluationException {
            if (dArr.length >= 1) {
                return StatsLib.stdevp(dArr);
            }
            throw new EvaluationException(ErrorEval.DIV_ZERO);
        }
    };
    public static final Function SUM = new AggregateFunction() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.13
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) {
            return MathX.sum(dArr);
        }
    };
    public static final Function SUMSQ = new AggregateFunction() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.14
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) {
            return MathX.sumsq(dArr);
        }
    };
    public static final Function VAR = new AggregateFunction() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.15
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) throws EvaluationException {
            if (dArr.length >= 1) {
                return StatsLib.var(dArr);
            }
            throw new EvaluationException(ErrorEval.DIV_ZERO);
        }
    };
    public static final Function VARP = new AggregateFunction() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.16
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) throws EvaluationException {
            if (dArr.length >= 1) {
                return StatsLib.varp(dArr);
            }
            throw new EvaluationException(ErrorEval.DIV_ZERO);
        }
    };
    public static final Function VARA = new AggregateFunctionA() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.17
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) throws EvaluationException {
            if (dArr.length >= 1) {
                return StatsLib.var(dArr);
            }
            throw new EvaluationException(ErrorEval.DIV_ZERO);
        }
    };
    public static final Function VARPA = new AggregateFunctionA() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.18
        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) throws EvaluationException {
            if (dArr.length >= 1) {
                return StatsLib.varp(dArr);
            }
            throw new EvaluationException(ErrorEval.DIV_ZERO);
        }
    };
    public static final Function GEOMEAN = new Geomean();

    /* loaded from: classes13.dex */
    public static abstract class AggregateFunctionA extends AggregateFunction {
        public AggregateFunctionA() {
            super(true);
        }

        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public boolean treatStringsAsZero() {
            return true;
        }
    }

    /* loaded from: classes13.dex */
    public static class Geomean extends AggregateFunction {
        public Geomean() {
            setMissingArgPolicy(MultiOperandNumericFunction.Policy.COERCE);
        }

        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) throws EvaluationException {
            for (double d : dArr) {
                if (d <= 0.0d) {
                    throw new EvaluationException(ErrorEval.NUM_ERROR);
                }
            }
            return new GeometricMean().evaluate(dArr, 0, dArr.length);
        }
    }

    /* loaded from: classes13.dex */
    public static final class LargeSmall extends Fixed2ArgFunction {
        private final boolean _isLarge;

        public LargeSmall(boolean z) {
            this._isLarge = z;
        }

        @Override // org.apache.poi.ss.formula.functions.Function2Arg
        public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
            try {
                double coerceValueToDouble = OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEval2, i, i2));
                if (coerceValueToDouble < 1.0d) {
                    return ErrorEval.NUM_ERROR;
                }
                int ceil = (int) Math.ceil(coerceValueToDouble);
                try {
                    double[] collectValues = ValueCollector.collectValues(valueEval);
                    if (ceil > collectValues.length) {
                        return ErrorEval.NUM_ERROR;
                    }
                    double kthLargest = this._isLarge ? StatsLib.kthLargest(collectValues, ceil) : StatsLib.kthSmallest(collectValues, ceil);
                    NumericFunction.checkValue(kthLargest);
                    return new NumberEval(kthLargest);
                } catch (EvaluationException e) {
                    return e.getErrorEval();
                }
            } catch (EvaluationException unused) {
                return ErrorEval.VALUE_INVALID;
            }
        }
    }

    /* loaded from: classes13.dex */
    public static final class Percentile extends Fixed2ArgFunction {
        @Override // org.apache.poi.ss.formula.functions.Function2Arg
        public ValueEval evaluate(int i, int i2, ValueEval valueEval, ValueEval valueEval2) {
            double kthSmallest;
            try {
                double coerceValueToDouble = OperandResolver.coerceValueToDouble(OperandResolver.getSingleValue(valueEval2, i, i2));
                if (coerceValueToDouble < 0.0d || coerceValueToDouble > 1.0d) {
                    return ErrorEval.NUM_ERROR;
                }
                try {
                    double[] collectValues = ValueCollector.collectValues(valueEval);
                    int length = collectValues.length;
                    if (length != 0 && length <= 8191) {
                        double d = ((length - 1) * coerceValueToDouble) + 1.0d;
                        if (d == 1.0d) {
                            kthSmallest = StatsLib.kthSmallest(collectValues, 1);
                        } else if (Double.compare(d, length) == 0) {
                            kthSmallest = StatsLib.kthLargest(collectValues, 1);
                        } else {
                            int i3 = (int) d;
                            kthSmallest = StatsLib.kthSmallest(collectValues, i3) + ((d - i3) * (StatsLib.kthSmallest(collectValues, i3 + 1) - StatsLib.kthSmallest(collectValues, i3)));
                        }
                        NumericFunction.checkValue(kthSmallest);
                        return new NumberEval(kthSmallest);
                    }
                    return ErrorEval.NUM_ERROR;
                } catch (EvaluationException e) {
                    return e.getErrorEval();
                }
            } catch (EvaluationException unused) {
                return ErrorEval.VALUE_INVALID;
            }
        }
    }

    /* loaded from: classes13.dex */
    public static class Product extends AggregateFunction {
        public Product() {
            setMissingArgPolicy(MultiOperandNumericFunction.Policy.SKIP);
        }

        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) throws EvaluationException {
            return MathX.product(dArr);
        }
    }

    /* loaded from: classes13.dex */
    public static final class ValueCollector extends MultiOperandNumericFunction {
        private static final ValueCollector instance = new ValueCollector();

        public ValueCollector() {
            super(false, false);
        }

        public static double[] collectValues(ValueEval... valueEvalArr) throws EvaluationException {
            return instance.getNumberArray(valueEvalArr);
        }

        @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
        public double evaluate(double[] dArr) {
            throw new IllegalStateException("should not be called");
        }
    }

    public AggregateFunction() {
        this(false);
    }

    public static Function subtotalInstance(Function function, final boolean z) {
        return new AggregateFunction() { // from class: org.apache.poi.ss.formula.functions.AggregateFunction.1
            @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
            public double evaluate(double[] dArr) throws EvaluationException {
                return AggregateFunction.this.evaluate(dArr);
            }

            @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
            public boolean isHiddenRowCounted() {
                return z;
            }

            @Override // org.apache.poi.ss.formula.functions.MultiOperandNumericFunction
            public boolean isSubtotalCounted() {
                return false;
            }
        };
    }

    public AggregateFunction(boolean z) {
        super(z, false);
    }
}
