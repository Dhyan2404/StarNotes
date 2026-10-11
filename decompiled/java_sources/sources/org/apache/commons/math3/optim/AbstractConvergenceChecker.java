package org.apache.commons.math3.optim;

/* loaded from: classes12.dex */
public abstract class AbstractConvergenceChecker<PAIR> implements ConvergenceChecker<PAIR> {

    /* renamed from: a */
    public final double f109042a;

    /* renamed from: b */
    public final double f109043b;

    public AbstractConvergenceChecker(double d, double d2) {
        this.f109042a = d;
        this.f109043b = d2;
    }

    @Override // org.apache.commons.math3.optim.ConvergenceChecker
    public abstract boolean converged(int i, PAIR pair, PAIR pair2);

    public double getAbsoluteThreshold() {
        return this.f109043b;
    }

    public double getRelativeThreshold() {
        return this.f109042a;
    }
}
