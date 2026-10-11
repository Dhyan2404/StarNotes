package org.apache.commons.math3.ode.nonstiff;

/* loaded from: classes12.dex */
public class EulerIntegrator extends RungeKuttaIntegrator {

    /* renamed from: k */
    public static final double[] f108965k = new double[0];

    /* renamed from: l */
    public static final double[][] f108966l = new double[0];

    /* renamed from: m */
    public static final double[] f108967m = {1.0d};

    public EulerIntegrator(double d) {
        super("Euler", f108965k, f108966l, f108967m, new EulerStepInterpolator(), d);
    }
}
