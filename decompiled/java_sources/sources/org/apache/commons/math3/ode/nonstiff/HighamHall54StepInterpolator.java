package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

/* loaded from: classes12.dex */
class HighamHall54StepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public HighamHall54StepInterpolator() {
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void computeInterpolatedStateAndDerivatives(double d, double d2) {
        double d3 = (((d * (16.0d - (10.0d * d))) - 7.5d) * d) + 1.0d;
        double d4 = ((((67.5d * d) - 91.125d) * d) + 28.6875d) * d;
        double d5 = ((d * (152.0d - (120.0d * d))) - 44.0d) * d;
        double d6 = ((((62.5d * d) - 78.125d) * d) + 23.4375d) * d;
        double d7 = ((5.0d * d) / 8.0d) * ((d * 2.0d) - 1.0d);
        if (this.previousState == null || d > 0.5d) {
            double d8 = this.f109024h;
            double d9 = ((d * ((((d * ((((-5.0d) * d) / 2.0d) + 5.333333333333333d)) - 3.75d) * d) + 1.0d)) - 0.08333333333333333d) * d8;
            double d10 = (((((((d * 135.0d) / 8.0d) - 30.375d) * d) + 14.34375d) * r13) - 0.84375d) * d8;
            double d11 = (((((((-30.0d) * d) + 50.666666666666664d) * d) - 22.0d) * d * d) + 1.3333333333333333d) * d8;
            double d12 = (((((((125.0d * d) / 8.0d) - 26.041666666666668d) * d) + 11.71875d) * r13) - 1.3020833333333333d) * d8;
            double d13 = d8 * ((r13 * ((r11 / 12.0d) - 0.3125d)) - 0.10416666666666667d);
            int i = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d14 = dArr2[0][i];
                double d15 = dArr2[2][i];
                double d16 = dArr2[3][i];
                double d17 = dArr2[4][i];
                double d18 = dArr2[5][i];
                dArr[i] = this.currentState[i] + (d9 * d14) + (d10 * d15) + (d11 * d16) + (d12 * d17) + (d13 * d18);
                this.interpolatedDerivatives[i] = (d14 * d3) + (d15 * d4) + (d16 * d5) + (d17 * d6) + (d7 * d18);
                i++;
            }
        } else {
            double d19 = this.f109024h * d;
            double d20 = ((((d * (5.333333333333333d - (2.5d * d))) - 3.75d) * d) + 1.0d) * d19;
            double d21 = (((((d * 135.0d) / 8.0d) - 30.375d) * d) + 14.34375d) * d * d19;
            double d22 = (((((-30.0d) * d) + 50.666666666666664d) * d) - 22.0d) * d * d19;
            double d23 = (((((125.0d * d) / 8.0d) - 26.041666666666668d) * d) + 11.71875d) * d * d19;
            double d24 = d19 * ((r11 / 12.0d) - 0.3125d) * d;
            int i2 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i2 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d25 = dArr4[0][i2];
                double d26 = dArr4[2][i2];
                double d27 = dArr4[3][i2];
                double d28 = dArr4[4][i2];
                double d29 = dArr4[5][i2];
                dArr3[i2] = this.previousState[i2] + (d20 * d25) + (d21 * d26) + (d22 * d27) + (d23 * d28) + (d24 * d29);
                this.interpolatedDerivatives[i2] = (d25 * d3) + (d26 * d4) + (d27 * d5) + (d28 * d6) + (d7 * d29);
                i2++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public StepInterpolator doCopy() {
        return new HighamHall54StepInterpolator(this);
    }

    public HighamHall54StepInterpolator(HighamHall54StepInterpolator highamHall54StepInterpolator) {
        super(highamHall54StepInterpolator);
    }
}
