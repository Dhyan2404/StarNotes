package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

/* loaded from: classes12.dex */
class ThreeEighthesStepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public ThreeEighthesStepInterpolator() {
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void computeInterpolatedStateAndDerivatives(double d, double d2) {
        double d3 = 0.75d * d;
        double d4 = 4.0d * d;
        double d5 = ((d4 - 5.0d) * d3) + 1.0d;
        double d6 = (5.0d - (6.0d * d)) * d3;
        double d7 = ((d * 2.0d) - 1.0d) * d3;
        if (this.previousState == null || d > 0.5d) {
            double d8 = d2 / 8.0d;
            double d9 = d4 * d;
            double d10 = ((1.0d - (7.0d * d)) + (2.0d * d9)) * d8;
            double d11 = 3.0d * d8;
            double d12 = d + 1.0d;
            double d13 = (d12 - d9) * d11;
            double d14 = d11 * d12;
            double d15 = d8 * (d12 + d9);
            int i = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d16 = dArr2[0][i];
                double d17 = dArr2[1][i];
                double d18 = dArr2[2][i];
                double d19 = dArr2[3][i];
                dArr[i] = (((this.currentState[i] - (d10 * d16)) - (d13 * d17)) - (d14 * d18)) - (d15 * d19);
                this.interpolatedDerivatives[i] = (d16 * d5) + (d17 * d6) + (d18 * d3) + (d19 * d7);
                i++;
            }
        } else {
            double d20 = (this.f109024h * d) / 8.0d;
            double d21 = d4 * d;
            double d22 = ((8.0d - (15.0d * d)) + (2.0d * d21)) * d20;
            double d23 = 3.0d * d20;
            double d24 = ((5.0d * d) - d21) * d23;
            double d25 = d23 * d;
            double d26 = d20 * (((-3.0d) * d) + d21);
            int i2 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i2 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d27 = dArr4[0][i2];
                double d28 = dArr4[1][i2];
                double d29 = dArr4[2][i2];
                double d30 = dArr4[3][i2];
                dArr3[i2] = this.previousState[i2] + (d22 * d27) + (d24 * d28) + (d25 * d29) + (d26 * d30);
                this.interpolatedDerivatives[i2] = (d27 * d5) + (d28 * d6) + (d29 * d3) + (d30 * d7);
                i2++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public StepInterpolator doCopy() {
        return new ThreeEighthesStepInterpolator(this);
    }

    public ThreeEighthesStepInterpolator(ThreeEighthesStepInterpolator threeEighthesStepInterpolator) {
        super(threeEighthesStepInterpolator);
    }
}
