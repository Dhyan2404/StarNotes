package org.apache.commons.math3.optimization.direct;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optimization.BaseMultivariateOptimizer;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.InitialGuess;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.SimpleBounds;
import org.apache.commons.math3.optimization.SimpleValueChecker;
import org.apache.commons.math3.util.Incrementor;

@Deprecated
/* loaded from: classes12.dex */
public abstract class BaseAbstractMultivariateOptimizer<FUNC extends MultivariateFunction> implements BaseMultivariateOptimizer<FUNC> {

    /* renamed from: a */
    public ConvergenceChecker<PointValuePair> f109376a;

    /* renamed from: b */
    public GoalType f109377b;

    /* renamed from: c */
    public double[] f109378c;

    /* renamed from: d */
    public double[] f109379d;

    /* renamed from: e */
    public double[] f109380e;
    protected final Incrementor evaluations;

    /* renamed from: f */
    public MultivariateFunction f109381f;

    @Deprecated
    public BaseAbstractMultivariateOptimizer() {
        this(new SimpleValueChecker());
    }

    /* renamed from: a */
    public final void m68007a() {
        double[] dArr = this.f109378c;
        if (dArr != null) {
            int length = dArr.length;
            double[] dArr2 = this.f109379d;
            if (dArr2 != null) {
                if (dArr2.length != length) {
                    throw new DimensionMismatchException(this.f109379d.length, length);
                }
                for (int i = 0; i < length; i++) {
                    double d = this.f109378c[i];
                    double d2 = this.f109379d[i];
                    if (d < d2) {
                        throw new NumberIsTooSmallException(Double.valueOf(d), Double.valueOf(d2), true);
                    }
                }
            }
            double[] dArr3 = this.f109380e;
            if (dArr3 != null) {
                if (dArr3.length != length) {
                    throw new DimensionMismatchException(this.f109380e.length, length);
                }
                for (int i2 = 0; i2 < length; i2++) {
                    double d3 = this.f109378c[i2];
                    double d4 = this.f109380e[i2];
                    if (d3 > d4) {
                        throw new NumberIsTooLargeException(Double.valueOf(d3), Double.valueOf(d4), true);
                    }
                }
            }
            if (this.f109379d == null) {
                this.f109379d = new double[length];
                for (int i3 = 0; i3 < length; i3++) {
                    this.f109379d[i3] = Double.NEGATIVE_INFINITY;
                }
            }
            if (this.f109380e == null) {
                this.f109380e = new double[length];
                for (int i4 = 0; i4 < length; i4++) {
                    this.f109380e[i4] = Double.POSITIVE_INFINITY;
                }
            }
        }
    }

    /* renamed from: b */
    public final void m68008b(OptimizationData... optimizationDataArr) {
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof InitialGuess) {
                this.f109378c = ((InitialGuess) optimizationData).getInitialGuess();
            } else if (optimizationData instanceof SimpleBounds) {
                SimpleBounds simpleBounds = (SimpleBounds) optimizationData;
                this.f109379d = simpleBounds.getLower();
                this.f109380e = simpleBounds.getUpper();
            }
        }
    }

    public double computeObjectiveValue(double[] dArr) {
        try {
            this.evaluations.incrementCount();
            return this.f109381f.value(dArr);
        } catch (MaxCountExceededException e) {
            throw new TooManyEvaluationsException(e.getMax());
        }
    }

    public abstract PointValuePair doOptimize();

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public ConvergenceChecker<PointValuePair> getConvergenceChecker() {
        return this.f109376a;
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    public GoalType getGoalType() {
        return this.f109377b;
    }

    public double[] getLowerBound() {
        double[] dArr = this.f109379d;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public double[] getStartPoint() {
        double[] dArr = this.f109378c;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    public double[] getUpperBound() {
        double[] dArr = this.f109380e;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    @Override // org.apache.commons.math3.optimization.BaseMultivariateOptimizer
    @Deprecated
    public PointValuePair optimize(int i, FUNC func, GoalType goalType, double[] dArr) {
        return optimizeInternal(i, (int) func, goalType, new InitialGuess(dArr));
    }

    @Deprecated
    public PointValuePair optimizeInternal(int i, FUNC func, GoalType goalType, double[] dArr) {
        return optimizeInternal(i, (int) func, goalType, new InitialGuess(dArr));
    }

    public BaseAbstractMultivariateOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        this.evaluations = new Incrementor();
        this.f109376a = convergenceChecker;
    }

    public PointValuePair optimize(int i, FUNC func, GoalType goalType, OptimizationData... optimizationDataArr) {
        return optimizeInternal(i, (int) func, goalType, optimizationDataArr);
    }

    public PointValuePair optimizeInternal(int i, FUNC func, GoalType goalType, OptimizationData... optimizationDataArr) throws TooManyEvaluationsException {
        this.evaluations.setMaximalCount(i);
        this.evaluations.resetCount();
        this.f109381f = func;
        this.f109377b = goalType;
        m68008b(optimizationDataArr);
        m68007a();
        return doOptimize();
    }
}
