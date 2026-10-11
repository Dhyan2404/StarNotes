package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.AbstractIntegrator;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.sampling.StepInterpolator;

/* loaded from: classes12.dex */
class DormandPrince54StepInterpolator extends RungeKuttaStepInterpolator {
    private static final double A70 = 0.09114583333333333d;
    private static final double A72 = 0.44923629829290207d;
    private static final double A73 = 0.6510416666666666d;
    private static final double A74 = -0.322376179245283d;
    private static final double A75 = 0.13095238095238096d;

    /* renamed from: D0 */
    private static final double f108899D0 = -1.1270175653862835d;

    /* renamed from: D2 */
    private static final double f108900D2 = 2.675424484351598d;

    /* renamed from: D3 */
    private static final double f108901D3 = -5.685526961588504d;

    /* renamed from: D4 */
    private static final double f108902D4 = 3.5219323679207912d;

    /* renamed from: D5 */
    private static final double f108903D5 = -1.7672812570757455d;

    /* renamed from: D6 */
    private static final double f108904D6 = 2.382468931778144d;
    private static final long serialVersionUID = 20111120;

    /* renamed from: v1 */
    private double[] f108905v1;

    /* renamed from: v2 */
    private double[] f108906v2;

    /* renamed from: v3 */
    private double[] f108907v3;

    /* renamed from: v4 */
    private double[] f108908v4;
    private boolean vectorsInitialized;

    public DormandPrince54StepInterpolator() {
        this.f108905v1 = null;
        this.f108906v2 = null;
        this.f108907v3 = null;
        this.f108908v4 = null;
        this.vectorsInitialized = false;
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void computeInterpolatedStateAndDerivatives(double d, double d2) {
        char c = 0;
        if (!this.vectorsInitialized) {
            if (this.f108905v1 == null) {
                double[] dArr = this.interpolatedState;
                this.f108905v1 = new double[dArr.length];
                this.f108906v2 = new double[dArr.length];
                this.f108907v3 = new double[dArr.length];
                this.f108908v4 = new double[dArr.length];
            }
            int i = 0;
            while (i < this.interpolatedState.length) {
                double[][] dArr2 = this.yDotK;
                double d3 = dArr2[c][i];
                double d4 = dArr2[2][i];
                double d5 = dArr2[3][i];
                double d6 = dArr2[4][i];
                double d7 = dArr2[5][i];
                double d8 = dArr2[6][i];
                double[] dArr3 = this.f108905v1;
                double d9 = (A70 * d3) + (A72 * d4) + (A73 * d5) + (A74 * d6) + (A75 * d7);
                dArr3[i] = d9;
                double d10 = d3 - d9;
                this.f108906v2[i] = d10;
                this.f108907v3[i] = (dArr3[i] - d10) - d8;
                this.f108908v4[i] = (d3 * f108899D0) + (d4 * f108900D2) + (d5 * f108901D3) + (d6 * f108902D4) + (d7 * f108903D5) + (d8 * f108904D6);
                i++;
                c = 0;
            }
            this.vectorsInitialized = true;
        }
        double d11 = 1.0d - d;
        double d12 = d * 2.0d;
        double d13 = 1.0d - d12;
        double d14 = (2.0d - (d * 3.0d)) * d;
        double d15 = d12 * (((d12 - 3.0d) * d) + 1.0d);
        if (this.previousState == null || d > 0.5d) {
            int i2 = 0;
            while (true) {
                double[] dArr4 = this.interpolatedState;
                if (i2 >= dArr4.length) {
                    return;
                }
                double d16 = this.currentState[i2];
                double[] dArr5 = this.f108905v1;
                double d17 = dArr5[i2];
                double[] dArr6 = this.f108906v2;
                double d18 = dArr6[i2];
                double[] dArr7 = this.f108907v3;
                double d19 = dArr7[i2];
                double[] dArr8 = this.f108908v4;
                dArr4[i2] = d16 - ((d17 - ((d18 + ((d19 + (dArr8[i2] * d11)) * d)) * d)) * d2);
                this.interpolatedDerivatives[i2] = dArr5[i2] + (dArr6[i2] * d13) + (dArr7[i2] * d14) + (dArr8[i2] * d15);
                i2++;
            }
        } else {
            int i3 = 0;
            while (true) {
                double[] dArr9 = this.interpolatedState;
                if (i3 >= dArr9.length) {
                    return;
                }
                double d20 = this.previousState[i3];
                double d21 = this.f109024h * d;
                double[] dArr10 = this.f108905v1;
                double d22 = dArr10[i3];
                double d23 = d15;
                double[] dArr11 = this.f108906v2;
                double d24 = dArr11[i3];
                double[] dArr12 = this.f108907v3;
                double d25 = dArr12[i3];
                double d26 = d14;
                double[] dArr13 = this.f108908v4;
                dArr9[i3] = d20 + (d21 * (d22 + ((d24 + ((d25 + (dArr13[i3] * d11)) * d)) * d11)));
                this.interpolatedDerivatives[i3] = dArr10[i3] + (dArr11[i3] * d13) + (dArr12[i3] * d26) + (d23 * dArr13[i3]);
                i3++;
                d15 = d23;
                d14 = d26;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public StepInterpolator doCopy() {
        return new DormandPrince54StepInterpolator(this);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.RungeKuttaStepInterpolator
    public void reinitialize(AbstractIntegrator abstractIntegrator, double[] dArr, double[][] dArr2, boolean z, EquationsMapper equationsMapper, EquationsMapper[] equationsMapperArr) {
        super.reinitialize(abstractIntegrator, dArr, dArr2, z, equationsMapper, equationsMapperArr);
        this.f108905v1 = null;
        this.f108906v2 = null;
        this.f108907v3 = null;
        this.f108908v4 = null;
        this.vectorsInitialized = false;
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void storeTime(double d) {
        super.storeTime(d);
        this.vectorsInitialized = false;
    }

    public DormandPrince54StepInterpolator(DormandPrince54StepInterpolator dormandPrince54StepInterpolator) {
        super(dormandPrince54StepInterpolator);
        double[] dArr = dormandPrince54StepInterpolator.f108905v1;
        if (dArr == null) {
            this.f108905v1 = null;
            this.f108906v2 = null;
            this.f108907v3 = null;
            this.f108908v4 = null;
            this.vectorsInitialized = false;
            return;
        }
        this.f108905v1 = (double[]) dArr.clone();
        this.f108906v2 = (double[]) dormandPrince54StepInterpolator.f108906v2.clone();
        this.f108907v3 = (double[]) dormandPrince54StepInterpolator.f108907v3.clone();
        this.f108908v4 = (double[]) dormandPrince54StepInterpolator.f108908v4.clone();
        this.vectorsInitialized = dormandPrince54StepInterpolator.vectorsInitialized;
    }
}
