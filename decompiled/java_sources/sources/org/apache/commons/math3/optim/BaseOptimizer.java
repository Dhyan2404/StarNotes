package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.TooManyIterationsException;
import org.apache.commons.math3.util.Incrementor;

/* loaded from: classes12.dex */
public abstract class BaseOptimizer<PAIR> {

    /* renamed from: a */
    public final ConvergenceChecker<PAIR> f109059a;
    protected final Incrementor evaluations;
    protected final Incrementor iterations;

    /* renamed from: org.apache.commons.math3.optim.BaseOptimizer$b */
    /* loaded from: classes12.dex */
    public static class C19216b implements Incrementor.MaxCountExceededCallback {
        public C19216b() {
        }

        @Override // org.apache.commons.math3.util.Incrementor.MaxCountExceededCallback
        public void trigger(int i) {
            throw new TooManyEvaluationsException(Integer.valueOf(i));
        }
    }

    /* renamed from: org.apache.commons.math3.optim.BaseOptimizer$c */
    /* loaded from: classes12.dex */
    public static class C19217c implements Incrementor.MaxCountExceededCallback {
        public C19217c() {
        }

        @Override // org.apache.commons.math3.util.Incrementor.MaxCountExceededCallback
        public void trigger(int i) {
            throw new TooManyIterationsException(Integer.valueOf(i));
        }
    }

    public BaseOptimizer(ConvergenceChecker<PAIR> convergenceChecker) {
        this(convergenceChecker, 0, Integer.MAX_VALUE);
    }

    public abstract PAIR doOptimize();

    public ConvergenceChecker<PAIR> getConvergenceChecker() {
        return this.f109059a;
    }

    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    public int getIterations() {
        return this.iterations.getCount();
    }

    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public int getMaxIterations() {
        return this.iterations.getMaximalCount();
    }

    public void incrementEvaluationCount() throws TooManyEvaluationsException {
        this.evaluations.incrementCount();
    }

    public void incrementIterationCount() throws TooManyIterationsException {
        this.iterations.incrementCount();
    }

    public PAIR optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException, TooManyIterationsException {
        parseOptimizationData(optimizationDataArr);
        this.evaluations.resetCount();
        this.iterations.resetCount();
        return doOptimize();
    }

    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof MaxEval) {
                this.evaluations.setMaximalCount(((MaxEval) optimizationData).getMaxEval());
            } else if (optimizationData instanceof MaxIter) {
                this.iterations.setMaximalCount(((MaxIter) optimizationData).getMaxIter());
            }
        }
    }

    public BaseOptimizer(ConvergenceChecker<PAIR> convergenceChecker, int i, int i2) {
        this.f109059a = convergenceChecker;
        this.evaluations = new Incrementor(i, new C19216b());
        this.iterations = new Incrementor(i2, new C19217c());
    }

    public PAIR optimize() throws TooManyEvaluationsException, TooManyIterationsException {
        this.evaluations.resetCount();
        this.iterations.resetCount();
        return doOptimize();
    }
}
