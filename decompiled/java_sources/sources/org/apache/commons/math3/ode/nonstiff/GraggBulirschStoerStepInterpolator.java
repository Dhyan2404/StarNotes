package org.apache.commons.math3.ode.nonstiff;

import com.sunia.HTREnginev2.sff;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.sampling.AbstractStepInterpolator;
import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
class GraggBulirschStoerStepInterpolator extends AbstractStepInterpolator {
    private static final long serialVersionUID = 20110928;
    private int currentDegree;
    private double[] errfac;
    private double[][] polynomials;
    private double[] y0Dot;

    /* renamed from: y1 */
    private double[] f108990y1;
    private double[] y1Dot;
    private double[][] yMidDots;

    public GraggBulirschStoerStepInterpolator() {
        this.y0Dot = null;
        this.f108990y1 = null;
        this.y1Dot = null;
        this.yMidDots = null;
        resetTables(-1);
    }

    private void resetTables(int i) {
        if (i < 0) {
            this.polynomials = null;
            this.errfac = null;
            this.currentDegree = -1;
            return;
        }
        int i2 = i + 1;
        double[][] dArr = new double[i2];
        double[][] dArr2 = this.polynomials;
        if (dArr2 != null) {
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
            for (int length = this.polynomials.length; length < i2; length++) {
                dArr[length] = new double[this.currentState.length];
            }
        } else {
            for (int i3 = 0; i3 < i2; i3++) {
                dArr[i3] = new double[this.currentState.length];
            }
        }
        this.polynomials = dArr;
        if (i > 4) {
            this.errfac = new double[i - 4];
            int i4 = 0;
            while (true) {
                double[] dArr3 = this.errfac;
                if (i4 >= dArr3.length) {
                    break;
                }
                dArr3[i4] = 1.0d / (r1 * r1);
                int i5 = i4 + 1;
                double sqrt = FastMath.sqrt(i5 / (i4 + 5)) * 0.5d;
                int i6 = 0;
                while (i6 <= i4) {
                    double[] dArr4 = this.errfac;
                    i6++;
                    dArr4[i4] = dArr4[i4] * (sqrt / i6);
                }
                i4 = i5;
            }
        } else {
            this.errfac = null;
        }
        this.currentDegree = 0;
    }

    public void computeCoefficients(int i, double d) {
        double[][] dArr = this.polynomials;
        if (dArr == null || dArr.length <= i + 4) {
            resetTables(i + 4);
        }
        this.currentDegree = i + 4;
        int i2 = 0;
        while (true) {
            double[] dArr2 = this.currentState;
            if (i2 >= dArr2.length) {
                return;
            }
            double d2 = this.y0Dot[i2] * d;
            double d3 = this.y1Dot[i2] * d;
            double[] dArr3 = this.f108990y1;
            double d4 = dArr3[i2];
            double d5 = dArr2[i2];
            double d6 = d4 - d5;
            double d7 = d6 - d3;
            double d8 = d2 - d6;
            double[][] dArr4 = this.polynomials;
            dArr4[0][i2] = d5;
            dArr4[1][i2] = d6;
            dArr4[2][i2] = d7;
            dArr4[3][i2] = d8;
            if (i < 0) {
                return;
            }
            double d9 = ((dArr2[i2] + dArr3[i2]) * 0.5d) + ((d7 + d8) * 0.125d);
            double[] dArr5 = dArr4[4];
            double[][] dArr6 = this.yMidDots;
            dArr5[i2] = (dArr6[0][i2] - d9) * 16.0d;
            if (i > 0) {
                double[] dArr7 = dArr4[5];
                dArr7[i2] = (dArr6[1][i2] - (d6 + ((d7 - d8) * 0.25d))) * 16.0d;
                if (i > 1) {
                    dArr4[6][i2] = ((dArr6[2][i2] - (d3 - d2)) + dArr5[i2]) * 16.0d;
                    if (i > 2) {
                        dArr4[7][i2] = ((dArr6[3][i2] - ((d8 - d7) * 6.0d)) + (dArr7[i2] * 3.0d)) * 16.0d;
                        for (int i3 = 4; i3 <= i; i3++) {
                            double d10 = i3 * 0.5d * (i3 - 1);
                            double[][] dArr8 = this.polynomials;
                            dArr8[i3 + 4][i2] = ((this.yMidDots[i3][i2] + (d10 * dArr8[i3 + 2][i2])) - ((((2.0d * d10) * (i3 - 2)) * (i3 - 3)) * dArr8[i3][i2])) * 16.0d;
                        }
                    }
                }
            }
            i2++;
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public void computeInterpolatedStateAndDerivatives(double d, double d2) {
        double d3;
        double d4;
        long j;
        int length = this.currentState.length;
        double d5 = 1.0d - d;
        double d6 = d - 0.5d;
        double d7 = d * d5;
        double d8 = d7 * d7;
        double d9 = d7 * 2.0d * (1.0d - (d * 2.0d));
        double d10 = this.f109024h;
        double d11 = 1.0d / d10;
        double d12 = 3.0d * d;
        double d13 = ((2.0d - d12) * d) / d10;
        double d14 = (((d12 - 4.0d) * d) + 1.0d) / d10;
        char c = 0;
        int i = 0;
        while (true) {
            double d15 = 0.0d;
            if (i >= length) {
                break;
            }
            double[][] dArr = this.polynomials;
            double d16 = dArr[c][i];
            double d17 = dArr[1][i];
            double d18 = dArr[2][i];
            double d19 = dArr[3][i];
            this.interpolatedState[i] = d16 + ((d17 + (((d18 * d) + (d19 * d5)) * d5)) * d);
            this.interpolatedDerivatives[i] = (d17 * d11) + (d18 * d13) + (d19 * d14);
            int i2 = this.currentDegree;
            if (i2 > 3) {
                double d20 = dArr[i2][i];
                int i3 = i2 - 1;
                for (int i4 = 3; i3 > i4; i4 = 3) {
                    double d21 = 1.0d / (i3 - 3);
                    d15 = ((d15 * d6) + d20) * d21;
                    d20 = this.polynomials[i3][i] + (d20 * d21 * d6);
                    i3--;
                    d5 = d5;
                }
                d3 = d5;
                j = sff.f84098g;
                double[] dArr2 = this.interpolatedState;
                dArr2[i] = dArr2[i] + (d8 * d20);
                double[] dArr3 = this.interpolatedDerivatives;
                d4 = d6;
                dArr3[i] = dArr3[i] + (((d15 * d8) + (d20 * d9)) / this.f109024h);
            } else {
                d3 = d5;
                d4 = d6;
                j = sff.f84098g;
            }
            i++;
            d6 = d4;
            d5 = d3;
            c = 0;
        }
        if (this.f109024h == 0.0d) {
            System.arraycopy(this.yMidDots[1], 0, this.interpolatedDerivatives, 0, length);
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    public StepInterpolator doCopy() {
        return new GraggBulirschStoerStepInterpolator(this);
    }

    public double estimateError(double[] dArr) {
        double d = 0.0d;
        if (this.currentDegree < 5) {
            return 0.0d;
        }
        for (int i = 0; i < dArr.length; i++) {
            double d2 = this.polynomials[this.currentDegree][i] / dArr[i];
            d += d2 * d2;
        }
        return FastMath.sqrt(d / dArr.length) * this.errfac[this.currentDegree - 5];
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        double readBaseExternal = readBaseExternal(objectInput);
        double[] dArr = this.currentState;
        int length = dArr == null ? -1 : dArr.length;
        int readInt = objectInput.readInt();
        resetTables(readInt);
        this.currentDegree = readInt;
        for (int i = 0; i <= this.currentDegree; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                this.polynomials[i][i2] = objectInput.readDouble();
            }
        }
        setInterpolatedTime(readBaseExternal);
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        double[] dArr = this.currentState;
        int length = dArr == null ? -1 : dArr.length;
        writeBaseExternal(objectOutput);
        objectOutput.writeInt(this.currentDegree);
        for (int i = 0; i <= this.currentDegree; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                objectOutput.writeDouble(this.polynomials[i][i2]);
            }
        }
    }

    public GraggBulirschStoerStepInterpolator(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, double[][] dArr5, boolean z, EquationsMapper equationsMapper, EquationsMapper[] equationsMapperArr) {
        super(dArr, z, equationsMapper, equationsMapperArr);
        this.y0Dot = dArr2;
        this.f108990y1 = dArr3;
        this.y1Dot = dArr4;
        this.yMidDots = dArr5;
        resetTables(dArr5.length + 4);
    }

    public GraggBulirschStoerStepInterpolator(GraggBulirschStoerStepInterpolator graggBulirschStoerStepInterpolator) {
        super(graggBulirschStoerStepInterpolator);
        int length = this.currentState.length;
        this.y0Dot = null;
        this.f108990y1 = null;
        this.y1Dot = null;
        this.yMidDots = null;
        if (graggBulirschStoerStepInterpolator.polynomials == null) {
            this.polynomials = null;
            this.currentDegree = -1;
            return;
        }
        resetTables(graggBulirschStoerStepInterpolator.currentDegree);
        int i = 0;
        while (true) {
            double[][] dArr = this.polynomials;
            if (i < dArr.length) {
                double[] dArr2 = new double[length];
                dArr[i] = dArr2;
                System.arraycopy(graggBulirschStoerStepInterpolator.polynomials[i], 0, dArr2, 0, length);
                i++;
            } else {
                this.currentDegree = graggBulirschStoerStepInterpolator.currentDegree;
                return;
            }
        }
    }
}
