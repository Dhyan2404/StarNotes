package org.apache.commons.math3.ode.nonstiff;

/* loaded from: classes12.dex */
public class ThreeEighthesIntegrator extends RungeKuttaIntegrator {

    /* renamed from: k */
    public static final double[] f109015k = {0.3333333333333333d, 0.6666666666666666d, 1.0d};

    /* renamed from: l */
    public static final double[][] f109016l = {new double[]{0.3333333333333333d}, new double[]{-0.3333333333333333d, 1.0d}, new double[]{1.0d, -1.0d, 1.0d}};

    /* renamed from: m */
    public static final double[] f109017m = {0.125d, 0.375d, 0.375d, 0.125d};

    public ThreeEighthesIntegrator(double d) {
        super("3/8", f109015k, f109016l, f109017m, new ThreeEighthesStepInterpolator(), d);
    }
}
