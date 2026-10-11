package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

/* loaded from: classes12.dex */
class MidpointStepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public MidpointStepInterpolator() {
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void computeInterpolatedStateAndDerivatives(double d, double d2) {
        double d3 = 2.0d * d;
        double d4 = 1.0d - d3;
        if (this.previousState == null || d > 0.5d) {
            double d5 = d2 * d;
            double d6 = (d + 1.0d) * d2;
            int i = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d7 = dArr2[0][i];
                double d8 = dArr2[1][i];
                dArr[i] = (this.currentState[i] + (d5 * d7)) - (d6 * d8);
                this.interpolatedDerivatives[i] = (d7 * d4) + (d8 * d3);
                i++;
            }
        } else {
            double d9 = d * d2;
            double d10 = d * d * this.f109024h;
            int i2 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i2 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d11 = dArr4[0][i2];
                double d12 = dArr4[1][i2];
                dArr3[i2] = this.previousState[i2] + (d9 * d11) + (d10 * d12);
                this.interpolatedDerivatives[i2] = (d11 * d4) + (d12 * d3);
                i2++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public StepInterpolator doCopy() {
        return new MidpointStepInterpolator(this);
    }

    public MidpointStepInterpolator(MidpointStepInterpolator midpointStepInterpolator) {
        super(midpointStepInterpolator);
    }
}
