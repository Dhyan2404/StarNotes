package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
class LutherStepInterpolator extends RungeKuttaStepInterpolator {

    /* renamed from: Q */
    private static final double f109002Q = FastMath.sqrt(21.0d);
    private static final long serialVersionUID = 20140416;

    public LutherStepInterpolator() {
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void computeInterpolatedStateAndDerivatives(double d, double d2) {
        double d3 = 21.0d * d;
        double d4 = (((((((-47.0d) + d3) * d) + 36.0d) * d) - 10.8d) * d) + 1.0d;
        double d5 = 112.0d * d;
        double d6 = ((((((-202.66666666666666d) + d5) * d) + 106.66666666666667d) * d) - 13.866666666666667d) * d;
        double d7 = (-567.0d) * d;
        double d8 = ((((((d7 / 5.0d) + 194.4d) * d) - 97.2d) * d) + 12.96d) * d;
        double d9 = f109002Q;
        double d10 = ((((d9 * 343.0d) + 833.0d) / 150.0d) + (((((-637.0d) - (d9 * 357.0d)) / 30.0d) + (((((d9 * 287.0d) + 392.0d) / 15.0d) + ((((-49.0d) - (d9 * 49.0d)) * d) / 5.0d)) * d)) * d)) * d;
        double d11 = d * (((833.0d - (d9 * 343.0d)) / 150.0d) + (((((d9 * 357.0d) - 637.0d) / 30.0d) + ((((392.0d - (d9 * 287.0d)) / 15.0d) + ((((d9 * 49.0d) - 49.0d) * d) / 5.0d)) * d)) * d));
        double d12 = ((((3.0d * d) - 3.0d) * d) + 0.6d) * d;
        if (this.previousState == null || d > 0.5d) {
            double d13 = (((((((((-21.0d) * d) / 5.0d) + 7.55d) * d) - 4.45d) * d) + 0.95d) * d) - 0.05d;
            double d14 = (((((((((-112.0d) * d) / 5.0d) + 28.266666666666666d) * d) - 7.288888888888889d) * d) - 0.35555555555555557d) * d) - 0.35555555555555557d;
            double d15 = (((((567.0d * d) / 25.0d) - 25.92d) * d) + 6.48d) * d * d;
            double d16 = (((((((1029.0d * d9) + 2254.0d) / 900.0d) + (d * ((((-1372.0d) - (847.0d * d9)) / 300.0d) + ((((d9 * 49.0d) + 49.0d) * d) / 25.0d)))) * d) - 0.2722222222222222d) * d) - 0.2722222222222222d;
            double d17 = ((((((2254.0d - (1029.0d * d9)) / 900.0d) + (((((847.0d * d9) - 1372.0d) / 300.0d) + ((d * (49.0d - (d9 * 49.0d))) / 25.0d)) * d)) * d) - 0.2722222222222222d) * d) - 0.2722222222222222d;
            double d18 = ((((((-0.75d) * d) + 0.25d) * d) - 0.05d) * d) - 0.05d;
            int i = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d19 = dArr2[0][i];
                double d20 = dArr2[1][i];
                double d21 = dArr2[2][i];
                double d22 = dArr2[3][i];
                double d23 = dArr2[4][i];
                double d24 = dArr2[5][i];
                double d25 = dArr2[6][i];
                double d26 = d20 * 0.0d;
                dArr[i] = this.currentState[i] + (((d13 * d19) + d26 + (d14 * d21) + (d15 * d22) + (d16 * d23) + (d17 * d24) + (d18 * d25)) * d2);
                this.interpolatedDerivatives[i] = (d4 * d19) + d26 + (d6 * d21) + (d8 * d22) + (d23 * d10) + (d24 * d11) + (d25 * d12);
                i++;
            }
        } else {
            double d27 = (((((((d3 / 5.0d) - 11.75d) * d) + 12.0d) * d) - 5.4d) * d) + 1.0d;
            double d28 = ((((((d5 / 5.0d) - 50.666666666666664d) * d) + 35.55555555555556d) * d) - 6.933333333333334d) * d;
            double d29 = ((((((d7 / 25.0d) + 48.6d) * d) - 32.4d) * d) + 6.48d) * d;
            double d30 = ((((d9 * 343.0d) + 833.0d) / 300.0d) + (((((-637.0d) - (d9 * 357.0d)) / 90.0d) + (((((d9 * 287.0d) + 392.0d) / 60.0d) + ((((-49.0d) - (d9 * 49.0d)) * d) / 25.0d)) * d)) * d)) * d;
            double d31 = d * (((833.0d - (343.0d * d9)) / 300.0d) + (d * ((((357.0d * d9) - 637.0d) / 90.0d) + (d * (((392.0d - (287.0d * d9)) / 60.0d) + ((((d9 * 49.0d) - 49.0d) * d) / 25.0d))))));
            double d32 = ((((0.75d * d) - 1.0d) * d) + 0.3d) * d;
            int i2 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                double d33 = d8;
                if (i2 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d34 = dArr4[0][i2];
                double d35 = dArr4[1][i2];
                double d36 = dArr4[2][i2];
                double d37 = dArr4[3][i2];
                double d38 = dArr4[4][i2];
                double d39 = dArr4[5][i2];
                double d40 = dArr4[6][i2];
                double d41 = d6;
                double d42 = d4;
                double d43 = d35 * 0.0d;
                dArr3[i2] = this.previousState[i2] + (this.f109024h * d * ((d27 * d34) + d43 + (d28 * d36) + (d29 * d37) + (d30 * d38) + (d31 * d39) + (d32 * d40)));
                this.interpolatedDerivatives[i2] = (d42 * d34) + d43 + (d41 * d36) + (d33 * d37) + (d38 * d10) + (d39 * d11) + (d40 * d12);
                i2++;
                d8 = d33;
                d6 = d41;
                d4 = d42;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public StepInterpolator doCopy() {
        return new LutherStepInterpolator(this);
    }

    public LutherStepInterpolator(LutherStepInterpolator lutherStepInterpolator) {
        super(lutherStepInterpolator);
    }
}
