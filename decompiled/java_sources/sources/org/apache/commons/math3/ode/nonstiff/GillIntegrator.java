package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class GillIntegrator extends RungeKuttaIntegrator {

    /* renamed from: k */
    public static final double[] f108968k = {0.5d, 0.5d, 1.0d};

    /* renamed from: l */
    public static final double[][] f108969l = {new double[]{0.5d}, new double[]{(FastMath.sqrt(2.0d) - 1.0d) / 2.0d, (2.0d - FastMath.sqrt(2.0d)) / 2.0d}, new double[]{0.0d, (-FastMath.sqrt(2.0d)) / 2.0d, (FastMath.sqrt(2.0d) + 2.0d) / 2.0d}};

    /* renamed from: m */
    public static final double[] f108970m = {0.16666666666666666d, (2.0d - FastMath.sqrt(2.0d)) / 6.0d, (FastMath.sqrt(2.0d) + 2.0d) / 6.0d, 0.16666666666666666d};

    public GillIntegrator(double d) {
        super("Gill", f108968k, f108969l, f108970m, new GillStepInterpolator(), d);
    }
}
