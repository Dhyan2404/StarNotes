package org.apache.commons.math3.ode.nonstiff;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.ode.AbstractIntegrator;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.sampling.StepInterpolator;

/* loaded from: classes12.dex */
class DormandPrince853StepInterpolator extends RungeKuttaStepInterpolator {
    private static final double B_01 = 0.054293734116568765d;
    private static final double B_06 = 4.450312892752409d;
    private static final double B_07 = 1.8915178993145003d;
    private static final double B_08 = -5.801203960010585d;
    private static final double B_09 = 0.3111643669578199d;
    private static final double B_10 = -0.1521609496625161d;
    private static final double B_11 = 0.20136540080403034d;
    private static final double B_12 = 0.04471061572777259d;
    private static final double C14 = 0.1d;
    private static final double C15 = 0.2d;
    private static final double C16 = 0.7777777777777778d;

    /* renamed from: D */
    private static final double[][] f108946D = {new double[]{-8.428938276109013d, 0.5667149535193777d, -3.0689499459498917d, 2.38466765651207d, 2.1170345824450285d, -0.871391583777973d, 2.2404374302607883d, 0.6315787787694688d, -0.08899033645133331d, 18.148505520854727d, -9.194632392478356d, -4.436036387594894d}, new double[]{10.427508642579134d, 242.28349177525817d, 165.20045171727028d, -374.5467547226902d, -22.113666853125302d, 7.733432668472264d, -30.674084731089398d, -9.332130526430229d, 15.697238121770845d, -31.139403219565178d, -9.35292435884448d, 35.81684148639408d}, new double[]{19.985053242002433d, -387.0373087493518d, -189.17813819516758d, 527.8081592054236d, -11.573902539959631d, 6.8812326946963d, -1.0006050966910838d, 0.7777137798053443d, -2.778205752353508d, -60.19669523126412d, 84.32040550667716d, 11.99229113618279d}, new double[]{-25.69393346270375d, -154.18974869023643d, -231.5293791760455d, 357.6391179106141d, 93.4053241836243d, -37.45832313645163d, 104.0996495089623d, 29.8402934266605d, -43.53345659001114d, 96.32455395918828d, -39.17726167561544d, -149.72683625798564d}};
    private static final double K14_01 = 0.0018737681664791894d;
    private static final double K14_06 = -4.450312892752409d;
    private static final double K14_07 = -1.6380176890978755d;
    private static final double K14_08 = 5.554964922539782d;
    private static final double K14_09 = -0.4353557902216363d;
    private static final double K14_10 = 0.30545274794128174d;
    private static final double K14_11 = -0.19316434850839564d;
    private static final double K14_12 = -0.03714271806722689d;
    private static final double K14_13 = -0.008298d;
    private static final double K15_01 = -0.022459085953066622d;
    private static final double K15_06 = -4.422011983080043d;
    private static final double K15_07 = -1.8379759110070617d;
    private static final double K15_08 = 5.746280211439194d;
    private static final double K15_09 = -0.3111643669578199d;
    private static final double K15_10 = 0.1521609496625161d;
    private static final double K15_11 = -0.2014737481327276d;
    private static final double K15_12 = -0.04432804463693693d;
    private static final double K15_13 = -3.4046500868740456E-4d;
    private static final double K15_14 = 0.1413124436746325d;
    private static final double K16_01 = -0.4831900357003607d;
    private static final double K16_06 = -9.147934308113573d;
    private static final double K16_07 = 5.791903296748099d;
    private static final double K16_08 = 9.870193778407696d;
    private static final double K16_09 = 0.04556282049746119d;
    private static final double K16_10 = 0.1521609496625161d;
    private static final double K16_11 = -0.20136540080403034d;
    private static final double K16_12 = -0.04471061572777259d;
    private static final double K16_13 = -0.0013990241651590145d;
    private static final double K16_14 = 2.9475147891527724d;
    private static final double K16_15 = -9.15095847217987d;
    private static final long serialVersionUID = 20111120;

    /* renamed from: v */
    private double[][] f108947v;
    private boolean vectorsInitialized;
    private double[][] yDotKLast;

    public DormandPrince853StepInterpolator() {
        this.yDotKLast = null;
        this.f108947v = null;
        this.vectorsInitialized = false;
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void computeInterpolatedStateAndDerivatives(double d, double d2) throws MaxCountExceededException {
        char c = 6;
        if (!this.vectorsInitialized) {
            char c2 = 7;
            if (this.f108947v == null) {
                this.f108947v = new double[7];
                for (int i = 0; i < 7; i++) {
                    this.f108947v[i] = new double[this.interpolatedState.length];
                }
            }
            finalizeStep();
            int i2 = 0;
            while (i2 < this.interpolatedState.length) {
                double[][] dArr = this.yDotK;
                double d3 = dArr[0][i2];
                double d4 = dArr[5][i2];
                double d5 = dArr[c][i2];
                double d6 = dArr[c2][i2];
                double d7 = dArr[8][i2];
                double d8 = dArr[9][i2];
                double d9 = dArr[10][i2];
                double d10 = dArr[11][i2];
                double[] dArr2 = dArr[12];
                double d11 = dArr2[i2];
                double[][] dArr3 = this.yDotKLast;
                double d12 = dArr3[0][i2];
                double d13 = dArr3[1][i2];
                double d14 = dArr3[2][i2];
                double[][] dArr4 = this.f108947v;
                double[] dArr5 = dArr4[0];
                double d15 = (B_01 * d3) + (4.450312892752409d * d4) + (1.8915178993145003d * d5) + ((-5.801203960010585d) * d6) + (B_09 * d7) + ((-0.1521609496625161d) * d8) + (0.20136540080403034d * d9) + (B_12 * d10);
                dArr5[i2] = d15;
                double d16 = d3 - d15;
                dArr4[1][i2] = d16;
                dArr4[2][i2] = (dArr5[i2] - d16) - dArr2[i2];
                int i3 = 0;
                while (true) {
                    double[][] dArr6 = f108946D;
                    if (i3 < dArr6.length) {
                        double[] dArr7 = this.f108947v[i3 + 3];
                        double[] dArr8 = dArr6[i3];
                        dArr7[i2] = (dArr8[0] * d3) + (dArr8[1] * d4) + (dArr8[2] * d5) + (dArr8[3] * d6) + (dArr8[4] * d7) + (dArr8[5] * d8) + (dArr8[6] * d9) + (dArr8[7] * d10) + (dArr8[8] * d11) + (dArr8[9] * d12) + (dArr8[10] * d13) + (dArr8[11] * d14);
                        i3++;
                    }
                }
                i2++;
                c2 = 7;
                c = 6;
            }
            this.vectorsInitialized = true;
        }
        double d17 = 1.0d - d;
        double d18 = d * 2.0d;
        double d19 = d * d;
        double d20 = 1.0d - d18;
        double d21 = (2.0d - (d * 3.0d)) * d;
        double d22 = d18 * (((d18 - 3.0d) * d) + 1.0d);
        double d23 = ((((5.0d * d) - 8.0d) * d) + 3.0d) * d19;
        double d24 = ((((d * (15.0d - (6.0d * d))) - 12.0d) * d) + 3.0d) * d19;
        double d25 = d19 * d * ((((d * (18.0d - (7.0d * d))) - 15.0d) * d) + 4.0d);
        if (this.previousState == null || d > 0.5d) {
            int i4 = 0;
            while (true) {
                double[] dArr9 = this.interpolatedState;
                if (i4 >= dArr9.length) {
                    return;
                }
                double d26 = this.currentState[i4];
                double[][] dArr10 = this.f108947v;
                double[] dArr11 = dArr10[0];
                double d27 = dArr11[i4];
                double[] dArr12 = dArr10[1];
                double d28 = dArr12[i4];
                double[] dArr13 = dArr10[2];
                double d29 = dArr13[i4];
                double[] dArr14 = dArr10[3];
                double d30 = dArr14[i4];
                double[] dArr15 = dArr10[4];
                double d31 = dArr15[i4];
                double[] dArr16 = dArr10[5];
                double d32 = dArr16[i4];
                double[] dArr17 = dArr10[6];
                dArr9[i4] = d26 - ((d27 - ((d28 + ((d29 + ((d30 + ((d31 + ((d32 + (dArr17[i4] * d)) * d17)) * d)) * d17)) * d)) * d)) * d2);
                this.interpolatedDerivatives[i4] = dArr11[i4] + (dArr12[i4] * d20) + (dArr13[i4] * d21) + (dArr14[i4] * d22) + (dArr15[i4] * d23) + (dArr16[i4] * d24) + (dArr17[i4] * d25);
                i4++;
            }
        } else {
            int i5 = 0;
            while (true) {
                double[] dArr18 = this.interpolatedState;
                if (i5 >= dArr18.length) {
                    return;
                }
                double d33 = this.previousState[i5];
                double d34 = this.f109024h * d;
                double[][] dArr19 = this.f108947v;
                double[] dArr20 = dArr19[0];
                double d35 = dArr20[i5];
                double[] dArr21 = dArr19[1];
                double d36 = dArr21[i5];
                double[] dArr22 = dArr19[2];
                double d37 = dArr22[i5];
                double[] dArr23 = dArr19[3];
                double d38 = dArr23[i5];
                double[] dArr24 = dArr19[4];
                double d39 = dArr24[i5];
                double[] dArr25 = dArr19[5];
                double d40 = dArr25[i5];
                double[] dArr26 = dArr19[6];
                dArr18[i5] = d33 + (d34 * (d35 + ((d36 + ((d37 + ((d38 + ((d39 + ((d40 + (dArr26[i5] * d)) * d17)) * d)) * d17)) * d)) * d17)));
                this.interpolatedDerivatives[i5] = dArr20[i5] + (dArr21[i5] * d20) + (dArr22[i5] * d21) + (dArr23[i5] * d22) + (dArr24[i5] * d23) + (dArr25[i5] * d24) + (dArr26[i5] * d25);
                i5++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public StepInterpolator doCopy() {
        return new DormandPrince853StepInterpolator(this);
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void doFinalize() throws MaxCountExceededException {
        double[] dArr = this.currentState;
        if (dArr == null) {
            return;
        }
        double[] dArr2 = new double[dArr.length];
        double globalPreviousTime = getGlobalPreviousTime();
        int i = 0;
        while (true) {
            double[] dArr3 = this.currentState;
            if (i >= dArr3.length) {
                break;
            }
            double[][] dArr4 = this.yDotK;
            dArr2[i] = dArr3[i] + (this.f109024h * ((dArr4[0][i] * K14_01) + (dArr4[5][i] * K14_06) + (dArr4[6][i] * K14_07) + (dArr4[7][i] * K14_08) + (dArr4[8][i] * K14_09) + (dArr4[9][i] * K14_10) + (dArr4[10][i] * K14_11) + (dArr4[11][i] * K14_12) + (dArr4[12][i] * K14_13)));
            i++;
        }
        this.integrator.computeDerivatives((this.f109024h * 0.1d) + globalPreviousTime, dArr2, this.yDotKLast[0]);
        int i2 = 0;
        while (true) {
            double[] dArr5 = this.currentState;
            if (i2 >= dArr5.length) {
                break;
            }
            double[][] dArr6 = this.yDotK;
            dArr2[i2] = dArr5[i2] + (this.f109024h * ((dArr6[0][i2] * K15_01) + (dArr6[5][i2] * K15_06) + (dArr6[6][i2] * K15_07) + (dArr6[7][i2] * K15_08) + (dArr6[8][i2] * K15_09) + (dArr6[9][i2] * 0.1521609496625161d) + (dArr6[10][i2] * K15_11) + (dArr6[11][i2] * K15_12) + (dArr6[12][i2] * K15_13) + (this.yDotKLast[0][i2] * K15_14)));
            i2++;
        }
        char c = 1;
        this.integrator.computeDerivatives((this.f109024h * 0.2d) + globalPreviousTime, dArr2, this.yDotKLast[1]);
        int i3 = 0;
        while (true) {
            double[] dArr7 = this.currentState;
            if (i3 >= dArr7.length) {
                this.integrator.computeDerivatives(globalPreviousTime + (this.f109024h * C16), dArr2, this.yDotKLast[2]);
                return;
            }
            double[][] dArr8 = this.yDotK;
            double d = (dArr8[0][i3] * K16_01) + (dArr8[5][i3] * K16_06) + (dArr8[6][i3] * K16_07) + (dArr8[7][i3] * K16_08) + (dArr8[8][i3] * K16_09) + (dArr8[9][i3] * 0.1521609496625161d) + (dArr8[10][i3] * K16_11) + (dArr8[11][i3] * K16_12) + (dArr8[12][i3] * K16_13);
            double[][] dArr9 = this.yDotKLast;
            dArr2[i3] = dArr7[i3] + (this.f109024h * (d + (dArr9[0][i3] * K16_14) + (dArr9[c][i3] * K16_15)));
            i3++;
            c = 1;
        }
    }

    @Override // org.apache.commons.math3.ode.nonstiff.RungeKuttaStepInterpolator, org.apache.commons.math3.ode.sampling.AbstractStepInterpolator, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.yDotKLast = new double[3];
        int readInt = objectInput.readInt();
        double[][] dArr = this.yDotKLast;
        dArr[0] = readInt < 0 ? null : new double[readInt];
        dArr[1] = readInt < 0 ? null : new double[readInt];
        dArr[2] = readInt >= 0 ? new double[readInt] : null;
        for (int i = 0; i < readInt; i++) {
            this.yDotKLast[0][i] = objectInput.readDouble();
            this.yDotKLast[1][i] = objectInput.readDouble();
            this.yDotKLast[2][i] = objectInput.readDouble();
        }
        super.readExternal(objectInput);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.RungeKuttaStepInterpolator
    public void reinitialize(AbstractIntegrator abstractIntegrator, double[] dArr, double[][] dArr2, boolean z, EquationsMapper equationsMapper, EquationsMapper[] equationsMapperArr) {
        super.reinitialize(abstractIntegrator, dArr, dArr2, z, equationsMapper, equationsMapperArr);
        int length = this.currentState.length;
        this.yDotKLast = new double[3];
        int i = 0;
        while (true) {
            double[][] dArr3 = this.yDotKLast;
            if (i >= dArr3.length) {
                break;
            }
            dArr3[i] = new double[length];
            i++;
        }
        this.f108947v = new double[7];
        int i2 = 0;
        while (true) {
            double[][] dArr4 = this.f108947v;
            if (i2 >= dArr4.length) {
                this.vectorsInitialized = false;
                return;
            } else {
                dArr4[i2] = new double[length];
                i2++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void storeTime(double d) {
        super.storeTime(d);
        this.vectorsInitialized = false;
    }

    @Override // org.apache.commons.math3.ode.nonstiff.RungeKuttaStepInterpolator, org.apache.commons.math3.ode.sampling.AbstractStepInterpolator, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        try {
            finalizeStep();
            double[] dArr = this.currentState;
            int length = dArr == null ? -1 : dArr.length;
            objectOutput.writeInt(length);
            for (int i = 0; i < length; i++) {
                objectOutput.writeDouble(this.yDotKLast[0][i]);
                objectOutput.writeDouble(this.yDotKLast[1][i]);
                objectOutput.writeDouble(this.yDotKLast[2][i]);
            }
            super.writeExternal(objectOutput);
        } catch (MaxCountExceededException e) {
            IOException iOException = new IOException(e.getLocalizedMessage());
            iOException.initCause(e);
            throw iOException;
        }
    }

    public DormandPrince853StepInterpolator(DormandPrince853StepInterpolator dormandPrince853StepInterpolator) {
        super(dormandPrince853StepInterpolator);
        double[] dArr = dormandPrince853StepInterpolator.currentState;
        if (dArr == null) {
            this.yDotKLast = null;
            this.f108947v = null;
            this.vectorsInitialized = false;
            return;
        }
        int length = dArr.length;
        this.yDotKLast = new double[3];
        int i = 0;
        while (true) {
            double[][] dArr2 = this.yDotKLast;
            if (i >= dArr2.length) {
                break;
            }
            double[] dArr3 = new double[length];
            dArr2[i] = dArr3;
            System.arraycopy(dormandPrince853StepInterpolator.yDotKLast[i], 0, dArr3, 0, length);
            i++;
        }
        this.f108947v = new double[7];
        int i2 = 0;
        while (true) {
            double[][] dArr4 = this.f108947v;
            if (i2 < dArr4.length) {
                double[] dArr5 = new double[length];
                dArr4[i2] = dArr5;
                System.arraycopy(dormandPrince853StepInterpolator.f108947v[i2], 0, dArr5, 0, length);
                i2++;
            } else {
                this.vectorsInitialized = dormandPrince853StepInterpolator.vectorsInitialized;
                return;
            }
        }
    }
}
