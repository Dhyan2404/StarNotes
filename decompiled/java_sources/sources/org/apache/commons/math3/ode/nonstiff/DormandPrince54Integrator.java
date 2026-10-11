package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class DormandPrince54Integrator extends EmbeddedRungeKuttaIntegrator {

    /* renamed from: A */
    public static final double f108889A = -0.025d;

    /* renamed from: r */
    public static final String f108890r = "Dormand-Prince 5(4)";

    /* renamed from: s */
    public static final double[] f108891s = {0.2d, 0.3d, 0.8d, 0.8888888888888888d, 1.0d, 1.0d};

    /* renamed from: t */
    public static final double[][] f108892t = {new double[]{0.2d}, new double[]{0.075d, 0.225d}, new double[]{0.9777777777777777d, -3.7333333333333334d, 3.5555555555555554d}, new double[]{2.9525986892242035d, -11.595793324188385d, 9.822892851699436d, -0.2908093278463649d}, new double[]{2.8462752525252526d, -10.757575757575758d, 8.906422717743473d, 0.2784090909090909d, -0.2735313036020583d}, new double[]{0.09114583333333333d, 0.0d, 0.44923629829290207d, 0.6510416666666666d, -0.322376179245283d, 0.13095238095238096d}};

    /* renamed from: u */
    public static final double[] f108893u = {0.09114583333333333d, 0.0d, 0.44923629829290207d, 0.6510416666666666d, -0.322376179245283d, 0.13095238095238096d, 0.0d};

    /* renamed from: v */
    public static final double f108894v = 0.0012326388888888888d;

    /* renamed from: w */
    public static final double f108895w = -0.0042527702905061394d;

    /* renamed from: x */
    public static final double f108896x = 0.03697916666666667d;

    /* renamed from: y */
    public static final double f108897y = -0.05086379716981132d;

    /* renamed from: z */
    public static final double f108898z = 0.0419047619047619d;

    public DormandPrince54Integrator(double d, double d2, double d3, double d4) {
        super("Dormand-Prince 5(4)", true, f108891s, f108892t, f108893u, (RungeKuttaStepInterpolator) new DormandPrince54StepInterpolator(), d, d2, d3, d4);
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
            double d5 = (dArr[0][i] * 0.0012326388888888888d) + (dArr[2][i] * (-0.0042527702905061394d)) + (dArr[3][i] * 0.03697916666666667d) + (dArr[4][i] * (-0.05086379716981132d)) + (dArr[5][i] * 0.0419047619047619d) + (dArr[6][i] * (-0.025d));
            double max = FastMath.max(FastMath.abs(dArr2[i]), FastMath.abs(dArr3[i]));
            double[] dArr4 = this.vecAbsoluteTolerance;
            if (dArr4 == null) {
                d2 = this.scalAbsoluteTolerance;
                d3 = this.scalRelativeTolerance;
            } else {
                d2 = dArr4[i];
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

    public DormandPrince54Integrator(double d, double d2, double[] dArr, double[] dArr2) {
        super("Dormand-Prince 5(4)", true, f108891s, f108892t, f108893u, (RungeKuttaStepInterpolator) new DormandPrince54StepInterpolator(), d, d2, dArr, dArr2);
    }
}
