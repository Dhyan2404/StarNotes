package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

/* renamed from: org.apache.commons.math3.fitting.leastsquares.b */
/* loaded from: classes12.dex */
public class C19100b implements LeastSquaresOptimizer.Optimum {

    /* renamed from: a */
    public final LeastSquaresProblem.Evaluation f108192a;

    /* renamed from: b */
    public final int f108193b;

    /* renamed from: c */
    public final int f108194c;

    public C19100b(LeastSquaresProblem.Evaluation evaluation, int i, int i2) {
        this.f108192a = evaluation;
        this.f108193b = i;
        this.f108194c = i2;
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public double getCost() {
        return this.f108192a.getCost();
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public RealMatrix getCovariances(double d) {
        return this.f108192a.getCovariances(d);
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer.Optimum
    public int getEvaluations() {
        return this.f108193b;
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer.Optimum
    public int getIterations() {
        return this.f108194c;
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public RealMatrix getJacobian() {
        return this.f108192a.getJacobian();
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public RealVector getPoint() {
        return this.f108192a.getPoint();
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public double getRMS() {
        return this.f108192a.getRMS();
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public RealVector getResiduals() {
        return this.f108192a.getResiduals();
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public RealVector getSigma(double d) {
        return this.f108192a.getSigma(d);
    }
}
