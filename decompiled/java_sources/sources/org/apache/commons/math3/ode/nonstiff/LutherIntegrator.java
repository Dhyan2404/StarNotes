package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class LutherIntegrator extends RungeKuttaIntegrator {

    /* renamed from: k */
    public static final double f108998k;

    /* renamed from: l */
    public static final double[] f108999l;

    /* renamed from: m */
    public static final double[][] f109000m;

    /* renamed from: n */
    public static final double[] f109001n;

    static {
        double sqrt = FastMath.sqrt(21.0d);
        f108998k = sqrt;
        f108999l = new double[]{1.0d, 0.5d, 0.6666666666666666d, (7.0d - sqrt) / 14.0d, (7.0d + sqrt) / 14.0d, 1.0d};
        f109000m = new double[][]{new double[]{1.0d}, new double[]{0.375d, 0.125d}, new double[]{0.2962962962962963d, 0.07407407407407407d, 0.2962962962962963d}, new double[]{((9.0d * sqrt) - 21.0d) / 392.0d, ((8.0d * sqrt) - 56.0d) / 392.0d, (336.0d - (48.0d * sqrt)) / 392.0d, ((3.0d * sqrt) - 63.0d) / 392.0d}, new double[]{((-1155.0d) - (255.0d * sqrt)) / 1960.0d, ((-280.0d) - (40.0d * sqrt)) / 1960.0d, (0.0d - (320.0d * sqrt)) / 1960.0d, ((363.0d * sqrt) + 63.0d) / 1960.0d, ((392.0d * sqrt) + 2352.0d) / 1960.0d}, new double[]{((105.0d * sqrt) + 330.0d) / 180.0d, ((0.0d * sqrt) + 120.0d) / 180.0d, ((280.0d * sqrt) - 200.0d) / 180.0d, (126.0d - (189.0d * sqrt)) / 180.0d, ((-686.0d) - (126.0d * sqrt)) / 180.0d, (490.0d - (sqrt * 70.0d)) / 180.0d}};
        f109001n = new double[]{0.05d, 0.0d, 0.35555555555555557d, 0.0d, 0.2722222222222222d, 0.2722222222222222d, 0.05d};
    }

    public LutherIntegrator(double d) {
        super("Luther", f108999l, f109000m, f109001n, new LutherStepInterpolator(), d);
    }
}
