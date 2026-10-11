package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class HighamHall54Integrator extends EmbeddedRungeKuttaIntegrator {

    /* renamed from: r */
    public static final String f108993r = "Higham-Hall 5(4)";

    /* renamed from: s */
    public static final double[] f108994s = {0.2222222222222222d, 0.3333333333333333d, 0.5d, 0.6d, 1.0d, 1.0d};

    /* renamed from: t */
    public static final double[][] f108995t = {new double[]{0.2222222222222222d}, new double[]{0.08333333333333333d, 0.25d}, new double[]{0.125d, 0.0d, 0.375d}, new double[]{0.182d, -0.27d, 0.624d, 0.064d}, new double[]{-0.55d, 1.35d, 2.4d, -7.2d, 5.0d}, new double[]{0.08333333333333333d, 0.0d, 0.84375d, -1.3333333333333333d, 1.3020833333333333d, 0.10416666666666667d}};

    /* renamed from: u */
    public static final double[] f108996u = {0.08333333333333333d, 0.0d, 0.84375d, -1.3333333333333333d, 1.3020833333333333d, 0.10416666666666667d, 0.0d};

    /* renamed from: v */
    public static final double[] f108997v = {-0.05d, 0.0d, 0.50625d, -1.2d, 0.78125d, 0.0625d, -0.1d};

    public HighamHall54Integrator(double d, double d2, double d3, double d4) {
        super("Higham-Hall 5(4)", false, f108994s, f108995t, f108996u, (RungeKuttaStepInterpolator) new HighamHall54StepInterpolator(), d, d2, d3, d4);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.EmbeddedRungeKuttaIntegrator
    public double estimateError(double[][] dArr, double[] dArr2, double[] dArr3, double d) {
        double d2;
        double d3;
        double d4 = 0.0d;
        int i = 0;
        while (true) {
            int i2 = this.mainSetDimension;
            if (i >= i2) {
                return FastMath.sqrt(d4 / i2);
            }
            double d5 = f108997v[0] * dArr[0][i];
            int i3 = 1;
            while (true) {
                double[] dArr4 = f108997v;
                if (i3 >= dArr4.length) {
                    break;
                }
                d5 += dArr4[i3] * dArr[i3][i];
                i3++;
            }
            double max = FastMath.max(FastMath.abs(dArr2[i]), FastMath.abs(dArr3[i]));
            double[] dArr5 = this.vecAbsoluteTolerance;
            if (dArr5 == null) {
                d2 = this.scalAbsoluteTolerance;
                d3 = this.scalRelativeTolerance;
            } else {
                d2 = dArr5[i];
                d3 = this.vecRelativeTolerance[i];
            }
            double d6 = (d5 * d) / (d2 + (d3 * max));
            d4 += d6 * d6;
            i++;
        }
    }

    @Override // org.apache.commons.math3.ode.nonstiff.EmbeddedRungeKuttaIntegrator
    public int getOrder() {
        return 5;
    }

    public HighamHall54Integrator(double d, double d2, double[] dArr, double[] dArr2) {
        super("Higham-Hall 5(4)", false, f108994s, f108995t, f108996u, (RungeKuttaStepInterpolator) new HighamHall54StepInterpolator(), d, d2, dArr, dArr2);
    }
}
