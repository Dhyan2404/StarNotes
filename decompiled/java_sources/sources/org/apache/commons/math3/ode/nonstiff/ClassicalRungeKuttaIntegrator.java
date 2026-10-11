package org.apache.commons.math3.ode.nonstiff;

/* loaded from: classes12.dex */
public class ClassicalRungeKuttaIntegrator extends RungeKuttaIntegrator {

    /* renamed from: k */
    public static final double[] f108879k = {0.5d, 0.5d, 1.0d};

    /* renamed from: l */
    public static final double[][] f108880l = {new double[]{0.5d}, new double[]{0.0d, 0.5d}, new double[]{0.0d, 0.0d, 1.0d}};

    /* renamed from: m */
    public static final double[] f108881m = {0.16666666666666666d, 0.3333333333333333d, 0.3333333333333333d, 0.16666666666666666d};

    public ClassicalRungeKuttaIntegrator(double d) {
        super("classical Runge-Kutta", f108879k, f108880l, f108881m, new ClassicalRungeKuttaStepInterpolator(), d);
    }
}
