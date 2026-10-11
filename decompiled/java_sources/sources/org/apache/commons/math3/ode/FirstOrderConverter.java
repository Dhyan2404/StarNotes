package org.apache.commons.math3.ode;

/* loaded from: classes12.dex */
public class FirstOrderConverter implements FirstOrderDifferentialEquations {

    /* renamed from: a */
    public final SecondOrderDifferentialEquations f108762a;

    /* renamed from: b */
    public final int f108763b;

    /* renamed from: c */
    public final double[] f108764c;

    /* renamed from: d */
    public final double[] f108765d;

    /* renamed from: e */
    public final double[] f108766e;

    public FirstOrderConverter(SecondOrderDifferentialEquations secondOrderDifferentialEquations) {
        this.f108762a = secondOrderDifferentialEquations;
        int dimension = secondOrderDifferentialEquations.getDimension();
        this.f108763b = dimension;
        this.f108764c = new double[dimension];
        this.f108765d = new double[dimension];
        this.f108766e = new double[dimension];
    }

    @Override // org.apache.commons.math3.ode.FirstOrderDifferentialEquations
    public void computeDerivatives(double d, double[] dArr, double[] dArr2) {
        System.arraycopy(dArr, 0, this.f108764c, 0, this.f108763b);
        int i = this.f108763b;
        System.arraycopy(dArr, i, this.f108765d, 0, i);
        this.f108762a.computeSecondDerivatives(d, this.f108764c, this.f108765d, this.f108766e);
        System.arraycopy(this.f108765d, 0, dArr2, 0, this.f108763b);
        double[] dArr3 = this.f108766e;
        int i2 = this.f108763b;
        System.arraycopy(dArr3, 0, dArr2, i2, i2);
    }

    @Override // org.apache.commons.math3.ode.FirstOrderDifferentialEquations
    public int getDimension() {
        return this.f108763b * 2;
    }
}
