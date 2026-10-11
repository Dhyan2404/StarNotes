package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

/* loaded from: classes12.dex */
class ClassicalRungeKuttaStepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public ClassicalRungeKuttaStepInterpolator() {
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void computeInterpolatedStateAndDerivatives(double d, double d2) {
        double d3 = 1.0d - d;
        double d4 = d * 2.0d;
        double d5 = 1.0d - d4;
        double d6 = d3 * d5;
        double d7 = d4 * d3;
        double d8 = (-d) * d5;
        if (this.previousState == null || d > 0.5d) {
            double d9 = d * 4.0d;
            double d10 = d2 / 6.0d;
            double d11 = -d9;
            double d12 = (((d11 + 5.0d) * d) - 1.0d) * d10;
            double d13 = (((d9 - 2.0d) * d) - 2.0d) * d10;
            double d14 = d10 * (((d11 - 1.0d) * d) - 1.0d);
            int i = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d15 = dArr2[0][i];
                double d16 = dArr2[1][i] + dArr2[2][i];
                double d17 = dArr2[3][i];
                dArr[i] = this.currentState[i] + (d12 * d15) + (d13 * d16) + (d14 * d17);
                this.interpolatedDerivatives[i] = (d15 * d6) + (d16 * d7) + (d17 * d8);
                i++;
            }
        } else {
            double d18 = d * 4.0d * d;
            double d19 = (this.f109024h * d) / 6.0d;
            double d20 = ((6.0d - (9.0d * d)) + d18) * d19;
            double d21 = ((6.0d * d) - d18) * d19;
            double d22 = d19 * ((d * (-3.0d)) + d18);
            int i2 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i2 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d23 = dArr4[0][i2];
                double d24 = dArr4[1][i2] + dArr4[2][i2];
                double d25 = dArr4[3][i2];
                dArr3[i2] = this.previousState[i2] + (d20 * d23) + (d21 * d24) + (d22 * d25);
                this.interpolatedDerivatives[i2] = (d23 * d6) + (d24 * d7) + (d25 * d8);
                i2++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public StepInterpolator doCopy() {
        return new ClassicalRungeKuttaStepInterpolator(this);
    }

    public ClassicalRungeKuttaStepInterpolator(ClassicalRungeKuttaStepInterpolator classicalRungeKuttaStepInterpolator) {
        super(classicalRungeKuttaStepInterpolator);
    }
}
