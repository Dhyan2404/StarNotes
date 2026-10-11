package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

/* renamed from: org.apache.commons.math3.fitting.leastsquares.a */
/* loaded from: classes12.dex */
public class C19099a extends AbstractEvaluation {

    /* renamed from: b */
    public final LeastSquaresProblem.Evaluation f108190b;

    /* renamed from: c */
    public final RealMatrix f108191c;

    public C19099a(LeastSquaresProblem.Evaluation evaluation, RealMatrix realMatrix) {
        super(realMatrix.getColumnDimension());
        this.f108190b = evaluation;
        this.f108191c = realMatrix;
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public RealMatrix getJacobian() {
        return this.f108191c.multiply(this.f108190b.getJacobian());
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public RealVector getPoint() {
        return this.f108190b.getPoint();
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public RealVector getResiduals() {
        return this.f108191c.operate(this.f108190b.getResiduals());
    }
}
