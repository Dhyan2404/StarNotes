package org.apache.commons.math3.optimization;

import org.apache.commons.math3.util.Precision;

@Deprecated
/* loaded from: classes12.dex */
public abstract class AbstractConvergenceChecker<PAIR> implements ConvergenceChecker<PAIR> {

    /* renamed from: c */
    @Deprecated
    public static final double f109303c = Precision.EPSILON * 100.0d;

    /* renamed from: d */
    @Deprecated
    public static final double f109304d = Precision.SAFE_MIN * 100.0d;

    /* renamed from: a */
    public final double f109305a;

    /* renamed from: b */
    public final double f109306b;

    @Deprecated
    public AbstractConvergenceChecker() {
        this.f109305a = f109303c;
        this.f109306b = f109304d;
    }

    @Override // org.apache.commons.math3.optimization.ConvergenceChecker
    public abstract boolean converged(int i, PAIR pair, PAIR pair2);

    public double getAbsoluteThreshold() {
        return this.f109306b;
    }

    public double getRelativeThreshold() {
        return this.f109305a;
    }

    public AbstractConvergenceChecker(double d, double d2) {
        this.f109305a = d;
        this.f109306b = d2;
    }
}
