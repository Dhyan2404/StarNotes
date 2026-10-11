package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class DormandPrince853Integrator extends EmbeddedRungeKuttaIntegrator {

    /* renamed from: A */
    public static final double f108926A = 0.3341791187130175d;

    /* renamed from: B */
    public static final double f108927B = 0.08192320648511571d;

    /* renamed from: C */
    public static final double f108928C = -0.022355307863886294d;

    /* renamed from: D */
    public static final double f108929D = -0.18980075407240762d;

    /* renamed from: E */
    public static final double f108930E = 4.450312892752409d;

    /* renamed from: F */
    public static final double f108931F = 1.8915178993145003d;

    /* renamed from: G */
    public static final double f108932G = -5.801203960010585d;

    /* renamed from: H */
    public static final double f108933H = -0.42268232132379197d;

    /* renamed from: I */
    public static final double f108934I = -0.1521609496625161d;

    /* renamed from: J */
    public static final double f108935J = 0.20136540080403034d;

    /* renamed from: K */
    public static final double f108936K = 0.022651792198360825d;

    /* renamed from: r */
    public static final String f108937r = "Dormand-Prince 8 (5, 3)";

    /* renamed from: s */
    public static final double[] f108938s = {(12.0d - (FastMath.sqrt(6.0d) * 2.0d)) / 135.0d, (6.0d - FastMath.sqrt(6.0d)) / 45.0d, (6.0d - FastMath.sqrt(6.0d)) / 30.0d, (FastMath.sqrt(6.0d) + 6.0d) / 30.0d, 0.3333333333333333d, 0.25d, 0.3076923076923077d, 0.6512820512820513d, 0.6d, 0.8571428571428571d, 1.0d, 1.0d};

    /* renamed from: t */
    public static final double[][] f108939t = {new double[]{(12.0d - (FastMath.sqrt(6.0d) * 2.0d)) / 135.0d}, new double[]{(6.0d - FastMath.sqrt(6.0d)) / 180.0d, (6.0d - FastMath.sqrt(6.0d)) / 60.0d}, new double[]{(6.0d - FastMath.sqrt(6.0d)) / 120.0d, 0.0d, (6.0d - FastMath.sqrt(6.0d)) / 40.0d}, new double[]{((FastMath.sqrt(6.0d) * 107.0d) + 462.0d) / 3000.0d, 0.0d, ((-402.0d) - (FastMath.sqrt(6.0d) * 197.0d)) / 1000.0d, ((FastMath.sqrt(6.0d) * 73.0d) + 168.0d) / 375.0d}, new double[]{0.037037037037037035d, 0.0d, 0.0d, (FastMath.sqrt(6.0d) + 16.0d) / 108.0d, (16.0d - FastMath.sqrt(6.0d)) / 108.0d}, new double[]{0.037109375d, 0.0d, 0.0d, ((FastMath.sqrt(6.0d) * 23.0d) + 118.0d) / 1024.0d, (118.0d - (FastMath.sqrt(6.0d) * 23.0d)) / 1024.0d, -0.017578125d}, new double[]{0.03709200011850479d, 0.0d, 0.0d, ((FastMath.sqrt(6.0d) * 4784.0d) + 51544.0d) / 371293.0d, (51544.0d - (FastMath.sqrt(6.0d) * 4784.0d)) / 371293.0d, -0.015319437748624402d, 0.008273789163814023d}, new double[]{0.6241109587160757d, 0.0d, 0.0d, ((-1.324889724104E12d) - (FastMath.sqrt(6.0d) * 3.18801444819E11d)) / 6.265569375E11d, ((FastMath.sqrt(6.0d) * 3.18801444819E11d) - 1.324889724104E12d) / 6.265569375E11d, 27.59209969944671d, 20.154067550477894d, -43.48988418106996d}, new double[]{0.47766253643826434d, 0.0d, 0.0d, ((-4521408.0d) - (FastMath.sqrt(6.0d) * 1137963.0d)) / 2937500.0d, ((FastMath.sqrt(6.0d) * 1137963.0d) - 4521408.0d) / 2937500.0d, 21.230051448181193d, 15.279233632882423d, -33.28821096898486d, -0.020331201708508627d}, new double[]{-0.9371424300859873d, 0.0d, 0.0d, ((FastMath.sqrt(6.0d) * 94326.0d) + 354216.0d) / 112847.0d, (354216.0d - (FastMath.sqrt(6.0d) * 94326.0d)) / 112847.0d, -8.149787010746927d, -18.52006565999696d, 22.739487099350505d, 2.4936055526796523d, -3.0467644718982196d}, new double[]{2.273310147516538d, 0.0d, 0.0d, ((-3457480.0d) - (FastMath.sqrt(6.0d) * 960905.0d)) / 551636.0d, ((FastMath.sqrt(6.0d) * 960905.0d) - 3457480.0d) / 551636.0d, -17.9589318631188d, 27.94888452941996d, -2.8589982771350235d, -8.87285693353063d, 12.360567175794303d, 0.6433927460157636d}, new double[]{0.054293734116568765d, 0.0d, 0.0d, 0.0d, 0.0d, 4.450312892752409d, 1.8915178993145003d, -5.801203960010585d, 0.3111643669578199d, -0.1521609496625161d, 0.20136540080403034d, 0.04471061572777259d}};

    /* renamed from: u */
    public static final double[] f108940u = {0.054293734116568765d, 0.0d, 0.0d, 0.0d, 0.0d, 4.450312892752409d, 1.8915178993145003d, -5.801203960010585d, 0.3111643669578199d, -0.1521609496625161d, 0.20136540080403034d, 0.04471061572777259d, 0.0d};

    /* renamed from: v */
    public static final double f108941v = 0.01312004499419488d;

    /* renamed from: w */
    public static final double f108942w = -1.2251564463762044d;

    /* renamed from: x */
    public static final double f108943x = -0.4957589496572502d;

    /* renamed from: y */
    public static final double f108944y = 1.6643771824549864d;

    /* renamed from: z */
    public static final double f108945z = -0.35032884874997366d;

    public DormandPrince853Integrator(double d, double d2, double d3, double d4) {
        super("Dormand-Prince 8 (5, 3)", true, f108938s, f108939t, f108940u, (RungeKuttaStepInterpolator) new DormandPrince853StepInterpolator(), d, d2, d3, d4);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.EmbeddedRungeKuttaIntegrator
    public double estimateError(double[][] dArr, double[] dArr2, double[] dArr3, double d) {
        int i;
        double d2;
        double d3;
        char c = 0;
        int i2 = 0;
        double d4 = 0.0d;
        double d5 = 0.0d;
        while (i2 < this.mainSetDimension) {
            double d6 = dArr[c][i2];
            double d7 = dArr[5][i2];
            double d8 = dArr[6][i2];
            double d9 = dArr[7][i2];
            double d10 = dArr[8][i2];
            double d11 = dArr[9][i2];
            double d12 = dArr[10][i2];
            double d13 = dArr[11][i2];
            double d14 = (0.01312004499419488d * d6) + ((-1.2251564463762044d) * d7) + ((-0.4957589496572502d) * d8) + (1.6643771824549864d * d9) + ((-0.35032884874997366d) * d10) + (0.3341791187130175d * d11) + (0.08192320648511571d * d12) + ((-0.022355307863886294d) * d13);
            double d15 = (d6 * (-0.18980075407240762d)) + (d7 * 4.450312892752409d) + (d8 * 1.8915178993145003d) + (d9 * (-5.801203960010585d)) + (d10 * (-0.42268232132379197d)) + (d11 * (-0.1521609496625161d)) + (d12 * 0.20136540080403034d) + (d13 * 0.022651792198360825d);
            double max = FastMath.max(FastMath.abs(dArr2[i2]), FastMath.abs(dArr3[i2]));
            double[] dArr4 = this.vecAbsoluteTolerance;
            if (dArr4 == null) {
                d3 = this.scalAbsoluteTolerance;
                i = i2;
                d2 = this.scalRelativeTolerance * max;
            } else {
                i = i2;
                d2 = dArr4[i];
                d3 = this.vecRelativeTolerance[i] * max;
            }
            double d16 = d3 + d2;
            double d17 = d14 / d16;
            d4 += d17 * d17;
            double d18 = d15 / d16;
            d5 += d18 * d18;
            i2 = i + 1;
            c = 0;
        }
        double d19 = (d5 * 0.01d) + d4;
        if (d19 <= 0.0d) {
            d19 = 1.0d;
        }
        return (FastMath.abs(d) * d4) / FastMath.sqrt(this.mainSetDimension * d19);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.EmbeddedRungeKuttaIntegrator
    public int getOrder() {
        return 8;
    }

    public DormandPrince853Integrator(double d, double d2, double[] dArr, double[] dArr2) {
        super("Dormand-Prince 8 (5, 3)", true, f108938s, f108939t, f108940u, (RungeKuttaStepInterpolator) new DormandPrince853StepInterpolator(), d, d2, dArr, dArr2);
    }
}
