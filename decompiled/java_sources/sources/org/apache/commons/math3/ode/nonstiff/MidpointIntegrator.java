package org.apache.commons.math3.ode.nonstiff;

/* loaded from: classes12.dex */
public class MidpointIntegrator extends RungeKuttaIntegrator {

    /* renamed from: k */
    public static final double[] f109003k = {0.5d};

    /* renamed from: l */
    public static final double[][] f109004l = {new double[]{0.5d}};

    /* renamed from: m */
    public static final double[] f109005m = {0.0d, 1.0d};

    public MidpointIntegrator(double d) {
        super("midpoint", f109003k, f109004l, f109005m, new MidpointStepInterpolator(), d);
    }
}
