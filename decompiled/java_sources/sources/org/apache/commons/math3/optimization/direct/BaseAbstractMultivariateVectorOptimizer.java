package org.apache.commons.math3.optimization.direct;

import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optimization.BaseMultivariateVectorOptimizer;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.InitialGuess;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointVectorValuePair;
import org.apache.commons.math3.optimization.SimpleVectorValueChecker;
import org.apache.commons.math3.optimization.Target;
import org.apache.commons.math3.optimization.Weight;
import org.apache.commons.math3.util.Incrementor;

@Deprecated
/* loaded from: classes12.dex */
public abstract class BaseAbstractMultivariateVectorOptimizer<FUNC extends MultivariateVectorFunction> implements BaseMultivariateVectorOptimizer<FUNC> {

    /* renamed from: a */
    public ConvergenceChecker<PointVectorValuePair> f109382a;

    /* renamed from: b */
    public double[] f109383b;

    /* renamed from: c */
    public RealMatrix f109384c;

    /* renamed from: d */
    @Deprecated
    public double[] f109385d;

    /* renamed from: e */
    public double[] f109386e;
    protected final Incrementor evaluations;

    /* renamed from: f */
    public FUNC f109387f;

    @Deprecated
    public BaseAbstractMultivariateVectorOptimizer() {
        this(new SimpleVectorValueChecker());
    }

    /* renamed from: a */
    private void m68009a() {
        if (this.f109383b.length != this.f109384c.getColumnDimension()) {
            throw new DimensionMismatchException(this.f109383b.length, this.f109384c.getColumnDimension());
        }
    }

    /* renamed from: b */
    private void m68010b(OptimizationData... optimizationDataArr) {
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof Target) {
                this.f109383b = ((Target) optimizationData).getTarget();
            } else if (optimizationData instanceof Weight) {
                this.f109384c = ((Weight) optimizationData).getWeight();
            } else if (optimizationData instanceof InitialGuess) {
                this.f109386e = ((InitialGuess) optimizationData).getInitialGuess();
            }
        }
    }

    public double[] computeObjectiveValue(double[] dArr) {
        try {
            this.evaluations.incrementCount();
            return this.f109387f.value(dArr);
        } catch (MaxCountExceededException e) {
            throw new TooManyEvaluationsException(e.getMax());
        }
    }

    public abstract PointVectorValuePair doOptimize();

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public ConvergenceChecker<PointVectorValuePair> getConvergenceChecker() {
        return this.f109382a;
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public FUNC getObjectiveFunction() {
        return this.f109387f;
    }

    public double[] getStartPoint() {
        return (double[]) this.f109386e.clone();
    }

    public double[] getTarget() {
        return (double[]) this.f109383b.clone();
    }

    @Deprecated
    public double[] getTargetRef() {
        return this.f109383b;
    }

    public RealMatrix getWeight() {
        return this.f109384c.copy();
    }

    @Deprecated
    public double[] getWeightRef() {
        return this.f109385d;
    }

    @Override // org.apache.commons.math3.optimization.BaseMultivariateVectorOptimizer
    @Deprecated
    public PointVectorValuePair optimize(int i, FUNC func, double[] dArr, double[] dArr2, double[] dArr3) {
        return optimizeInternal(i, func, dArr, dArr2, dArr3);
    }

    @Deprecated
    public PointVectorValuePair optimizeInternal(int i, FUNC func, double[] dArr, double[] dArr2, double[] dArr3) {
        if (func == null) {
            throw new NullArgumentException();
        }
        if (dArr == null) {
            throw new NullArgumentException();
        }
        if (dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr3 != null) {
            if (dArr.length == dArr2.length) {
                return optimizeInternal(i, func, new Target(dArr), new Weight(dArr2), new InitialGuess(dArr3));
            }
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        throw new NullArgumentException();
    }

    public void setUp() {
        int length = this.f109383b.length;
        this.f109385d = new double[length];
        for (int i = 0; i < length; i++) {
            this.f109385d[i] = this.f109384c.getEntry(i, i);
        }
    }

    public BaseAbstractMultivariateVectorOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        this.evaluations = new Incrementor();
        this.f109382a = convergenceChecker;
    }

    public PointVectorValuePair optimize(int i, FUNC func, OptimizationData... optimizationDataArr) throws TooManyEvaluationsException, DimensionMismatchException {
        return optimizeInternal(i, func, optimizationDataArr);
    }

    public PointVectorValuePair optimizeInternal(int i, FUNC func, OptimizationData... optimizationDataArr) throws TooManyEvaluationsException, DimensionMismatchException {
        this.evaluations.setMaximalCount(i);
        this.evaluations.resetCount();
        this.f109387f = func;
        m68010b(optimizationDataArr);
        m68009a();
        setUp();
        return doOptimize();
    }
}
