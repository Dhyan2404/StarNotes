package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.TooManyIterationsException;
import org.apache.commons.math3.util.Incrementor;

/* loaded from: classes12.dex */
public abstract class AbstractOptimizationProblem<PAIR> implements OptimizationProblem<PAIR> {

    /* renamed from: d */
    public static final C19213b f109044d;

    /* renamed from: e */
    public static final C19214c f109045e;

    /* renamed from: a */
    public final int f109046a;

    /* renamed from: b */
    public final int f109047b;

    /* renamed from: c */
    public final ConvergenceChecker<PAIR> f109048c;

    /* renamed from: org.apache.commons.math3.optim.AbstractOptimizationProblem$b */
    /* loaded from: classes12.dex */
    public static class C19213b implements Incrementor.MaxCountExceededCallback {
        public C19213b() {
        }

        @Override // org.apache.commons.math3.util.Incrementor.MaxCountExceededCallback
        public void trigger(int i) {
            throw new TooManyEvaluationsException(Integer.valueOf(i));
        }
    }

    /* renamed from: org.apache.commons.math3.optim.AbstractOptimizationProblem$c */
    /* loaded from: classes12.dex */
    public static class C19214c implements Incrementor.MaxCountExceededCallback {
        public C19214c() {
        }

        @Override // org.apache.commons.math3.util.Incrementor.MaxCountExceededCallback
        public void trigger(int i) {
            throw new TooManyIterationsException(Integer.valueOf(i));
        }
    }

    static {
        f109044d = new C19213b();
        f109045e = new C19214c();
    }

    public AbstractOptimizationProblem(int i, int i2, ConvergenceChecker<PAIR> convergenceChecker) {
        this.f109046a = i;
        this.f109047b = i2;
        this.f109048c = convergenceChecker;
    }

    @Override // org.apache.commons.math3.optim.OptimizationProblem
    public ConvergenceChecker<PAIR> getConvergenceChecker() {
        return this.f109048c;
    }

    @Override // org.apache.commons.math3.optim.OptimizationProblem
    public Incrementor getEvaluationCounter() {
        return new Incrementor(this.f109046a, f109044d);
    }

    @Override // org.apache.commons.math3.optim.OptimizationProblem
    public Incrementor getIterationCounter() {
        return new Incrementor(this.f109047b, f109045e);
    }
}
