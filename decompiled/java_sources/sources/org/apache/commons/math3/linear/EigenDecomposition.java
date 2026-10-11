package org.apache.commons.math3.linear;

import com.sunia.HTREnginev2.snn;
import com.sunia.HTREnginev2.z5m;
import java.lang.reflect.Array;
import org.apache.commons.math3.complex.Complex;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class EigenDecomposition {

    /* renamed from: l */
    public static final double f108477l = 1.0E-12d;

    /* renamed from: a */
    public byte f108478a;

    /* renamed from: b */
    public double[] f108479b;

    /* renamed from: c */
    public double[] f108480c;

    /* renamed from: d */
    public snn f108481d;

    /* renamed from: e */
    public double[] f108482e;

    /* renamed from: f */
    public double[] f108483f;

    /* renamed from: g */
    public ArrayRealVector[] f108484g;

    /* renamed from: h */
    public RealMatrix f108485h;

    /* renamed from: i */
    public RealMatrix f108486i;

    /* renamed from: j */
    public RealMatrix f108487j;

    /* renamed from: k */
    public final boolean f108488k;

    /* renamed from: org.apache.commons.math3.linear.EigenDecomposition$b */
    /* loaded from: classes12.dex */
    public static class C19162b implements DecompositionSolver {

        /* renamed from: a */
        public double[] f108489a;

        /* renamed from: b */
        public double[] f108490b;

        /* renamed from: c */
        public final ArrayRealVector[] f108491c;

        /* renamed from: a */
        public final double m67814a(int i) {
            double d = this.f108489a[i];
            double d2 = this.f108490b[i];
            return FastMath.sqrt((d * d) + (d2 * d2));
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix getInverse() {
            if (!isNonSingular()) {
                throw new SingularMatrixException();
            }
            int length = this.f108489a.length;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length);
            for (int i = 0; i < length; i++) {
                double[] dArr2 = dArr[i];
                for (int i2 = 0; i2 < length; i2++) {
                    double d = 0.0d;
                    for (int i3 = 0; i3 < length; i3++) {
                        double[] dataRef = this.f108491c[i3].getDataRef();
                        d += (dataRef[i] * dataRef[i2]) / this.f108489a[i3];
                    }
                    dArr2[i2] = d;
                }
            }
            return MatrixUtils.createRealMatrix(dArr);
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public boolean isNonSingular() {
            double d = 0.0d;
            for (int i = 0; i < this.f108489a.length; i++) {
                d = FastMath.max(d, m67814a(i));
            }
            if (d == 0.0d) {
                return false;
            }
            for (int i2 = 0; i2 < this.f108489a.length; i2++) {
                if (Precision.equals(m67814a(i2) / d, 0.0d, 1.0E-12d)) {
                    return false;
                }
            }
            return true;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealVector solve(RealVector realVector) {
            if (isNonSingular()) {
                int length = this.f108489a.length;
                if (realVector.getDimension() == length) {
                    double[] dArr = new double[length];
                    for (int i = 0; i < length; i++) {
                        ArrayRealVector arrayRealVector = this.f108491c[i];
                        double[] dataRef = arrayRealVector.getDataRef();
                        double dotProduct = arrayRealVector.dotProduct(realVector) / this.f108489a[i];
                        for (int i2 = 0; i2 < length; i2++) {
                            dArr[i2] = dArr[i2] + (dataRef[i2] * dotProduct);
                        }
                    }
                    return new ArrayRealVector(dArr, false);
                }
                throw new DimensionMismatchException(realVector.getDimension(), length);
            }
            throw new SingularMatrixException();
        }

        public C19162b(double[] dArr, double[] dArr2, ArrayRealVector[] arrayRealVectorArr) {
            this.f108489a = dArr;
            this.f108490b = dArr2;
            this.f108491c = arrayRealVectorArr;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix solve(RealMatrix realMatrix) {
            if (isNonSingular()) {
                int length = this.f108489a.length;
                if (realMatrix.getRowDimension() == length) {
                    int columnDimension = realMatrix.getColumnDimension();
                    double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, columnDimension);
                    double[] dArr2 = new double[length];
                    for (int i = 0; i < columnDimension; i++) {
                        for (int i2 = 0; i2 < length; i2++) {
                            dArr2[i2] = realMatrix.getEntry(i2, i);
                            dArr[i2][i] = 0.0d;
                        }
                        for (int i3 = 0; i3 < length; i3++) {
                            ArrayRealVector arrayRealVector = this.f108491c[i3];
                            double[] dataRef = arrayRealVector.getDataRef();
                            double d = 0.0d;
                            for (int i4 = 0; i4 < length; i4++) {
                                d += arrayRealVector.getEntry(i4) * dArr2[i4];
                            }
                            double d2 = d / this.f108489a[i3];
                            for (int i5 = 0; i5 < length; i5++) {
                                double[] dArr3 = dArr[i5];
                                dArr3[i] = dArr3[i] + (dataRef[i5] * d2);
                            }
                        }
                    }
                    return new Array2DRowRealMatrix(dArr, false);
                }
                throw new DimensionMismatchException(realMatrix.getRowDimension(), length);
            }
            throw new SingularMatrixException();
        }
    }

    public EigenDecomposition(RealMatrix realMatrix) throws MathArithmeticException {
        this.f108478a = (byte) 30;
        boolean isSymmetric = MatrixUtils.isSymmetric(realMatrix, realMatrix.getRowDimension() * 10 * realMatrix.getColumnDimension() * Precision.EPSILON);
        this.f108488k = isSymmetric;
        if (isSymmetric) {
            m67813e(realMatrix);
            m67810b(this.f108481d.m57191c().getData());
        } else {
            m67811c(m67812d(realMatrix));
        }
    }

    /* renamed from: a */
    public final Complex m67809a(double d, double d2, double d3, double d4) {
        return new Complex(d, d2).divide(new Complex(d3, d4));
    }

    /* renamed from: b */
    public final void m67810b(double[][] dArr) {
        int i;
        int i2;
        double d;
        double d2;
        double d3;
        double d4;
        double[][] dArr2 = (double[][]) dArr.clone();
        int length = this.f108479b.length;
        this.f108482e = new double[length];
        this.f108483f = new double[length];
        double[] dArr3 = new double[length];
        int i3 = 0;
        while (true) {
            i = length - 1;
            if (i3 >= i) {
                break;
            }
            this.f108482e[i3] = this.f108479b[i3];
            dArr3[i3] = this.f108480c[i3];
            i3++;
        }
        this.f108482e[i] = this.f108479b[i];
        dArr3[i] = 0.0d;
        double d5 = 0.0d;
        for (int i4 = 0; i4 < length; i4++) {
            if (FastMath.abs(this.f108482e[i4]) > d5) {
                d5 = FastMath.abs(this.f108482e[i4]);
            }
            if (FastMath.abs(dArr3[i4]) > d5) {
                d5 = FastMath.abs(dArr3[i4]);
            }
        }
        if (d5 != 0.0d) {
            for (int i5 = 0; i5 < length; i5++) {
                double abs = FastMath.abs(this.f108482e[i5]);
                double d6 = Precision.EPSILON;
                if (abs <= d6 * d5) {
                    this.f108482e[i5] = 0.0d;
                }
                if (FastMath.abs(dArr3[i5]) <= d6 * d5) {
                    dArr3[i5] = 0.0d;
                }
            }
        }
        for (int i6 = 0; i6 < length; i6++) {
            int i7 = 0;
            do {
                i2 = i6;
                while (i2 < i) {
                    int i8 = i2 + 1;
                    double abs2 = FastMath.abs(this.f108482e[i2]) + FastMath.abs(this.f108482e[i8]);
                    if (FastMath.abs(dArr3[i2]) + abs2 == abs2) {
                        break;
                    } else {
                        i2 = i8;
                    }
                }
                if (i2 != i6) {
                    if (i7 == this.f108478a) {
                        throw new MaxCountExceededException(LocalizedFormats.CONVERGENCE_FAILED, Byte.valueOf(this.f108478a), new Object[0]);
                    }
                    i7++;
                    double[] dArr4 = this.f108482e;
                    double d7 = (dArr4[i6 + 1] - dArr4[i6]) / (dArr3[i6] * 2.0d);
                    double sqrt = FastMath.sqrt((d7 * d7) + 1.0d);
                    if (d7 < 0.0d) {
                        double[] dArr5 = this.f108482e;
                        d = dArr5[i2] - dArr5[i6];
                        d2 = dArr3[i6];
                        d3 = d7 - sqrt;
                    } else {
                        double[] dArr6 = this.f108482e;
                        d = dArr6[i2] - dArr6[i6];
                        d2 = dArr3[i6];
                        d3 = d7 + sqrt;
                    }
                    double d8 = d + (d2 / d3);
                    int i9 = i2 - 1;
                    double d9 = 0.0d;
                    double d10 = 1.0d;
                    double d11 = 1.0d;
                    while (true) {
                        if (i9 < i6) {
                            break;
                        }
                        double d12 = dArr3[i9];
                        double d13 = d10 * d12;
                        double d14 = d11 * d12;
                        if (FastMath.abs(d13) >= FastMath.abs(d8)) {
                            double d15 = d8 / d13;
                            double sqrt2 = FastMath.sqrt((d15 * d15) + 1.0d);
                            dArr3[i9 + 1] = d13 * sqrt2;
                            d10 = 1.0d / sqrt2;
                            double d16 = d15 * d10;
                            sqrt = sqrt2;
                            d4 = d16;
                        } else {
                            double d17 = d13 / d8;
                            sqrt = FastMath.sqrt((d17 * d17) + 1.0d);
                            dArr3[i9 + 1] = d8 * sqrt;
                            d4 = 1.0d / sqrt;
                            d10 = d17 * d4;
                        }
                        int i10 = i9 + 1;
                        if (dArr3[i10] == 0.0d) {
                            double[] dArr7 = this.f108482e;
                            dArr7[i10] = dArr7[i10] - d9;
                            dArr3[i2] = 0.0d;
                            break;
                        }
                        double[] dArr8 = this.f108482e;
                        double d18 = dArr8[i10] - d9;
                        double d19 = ((dArr8[i9] - d18) * d10) + (d4 * 2.0d * d14);
                        double d20 = d10 * d19;
                        dArr8[i10] = d18 + d20;
                        d8 = (d4 * d19) - d14;
                        for (int i11 = 0; i11 < length; i11++) {
                            double[] dArr9 = dArr2[i11];
                            double d21 = dArr9[i10];
                            dArr9[i10] = (dArr9[i9] * d10) + (d4 * d21);
                            dArr9[i9] = (dArr9[i9] * d4) - (d21 * d10);
                        }
                        i9--;
                        sqrt = d19;
                        d11 = d4;
                        d9 = d20;
                    }
                    if (sqrt != 0.0d || i9 < i6) {
                        double[] dArr10 = this.f108482e;
                        dArr10[i6] = dArr10[i6] - d9;
                        dArr3[i6] = d8;
                        dArr3[i2] = 0.0d;
                    }
                }
            } while (i2 != i6);
        }
        int i12 = 0;
        while (i12 < length) {
            double d22 = this.f108482e[i12];
            int i13 = i12 + 1;
            int i14 = i12;
            for (int i15 = i13; i15 < length; i15++) {
                double d23 = this.f108482e[i15];
                if (d23 > d22) {
                    i14 = i15;
                    d22 = d23;
                }
            }
            if (i14 != i12) {
                double[] dArr11 = this.f108482e;
                dArr11[i14] = dArr11[i12];
                dArr11[i12] = d22;
                for (int i16 = 0; i16 < length; i16++) {
                    double[] dArr12 = dArr2[i16];
                    double d24 = dArr12[i12];
                    dArr12[i12] = dArr12[i14];
                    dArr12[i14] = d24;
                }
            }
            i12 = i13;
        }
        double d25 = 0.0d;
        for (int i17 = 0; i17 < length; i17++) {
            if (FastMath.abs(this.f108482e[i17]) > d25) {
                d25 = FastMath.abs(this.f108482e[i17]);
            }
        }
        if (d25 != 0.0d) {
            for (int i18 = 0; i18 < length; i18++) {
                if (FastMath.abs(this.f108482e[i18]) < Precision.EPSILON * d25) {
                    this.f108482e[i18] = 0.0d;
                }
            }
        }
        this.f108484g = new ArrayRealVector[length];
        double[] dArr13 = new double[length];
        for (int i19 = 0; i19 < length; i19++) {
            for (int i20 = 0; i20 < length; i20++) {
                dArr13[i20] = dArr2[i20][i19];
            }
            this.f108484g[i19] = new ArrayRealVector(dArr13);
        }
    }

    /* renamed from: c */
    public final void m67811c(z5m z5mVar) throws MathArithmeticException {
        double[][] dArr;
        int i;
        int i2;
        double d;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        double d2;
        double d3;
        int i8;
        int i9;
        double[][] dArr2;
        int i10;
        double[][] data = z5mVar.m58635f().getData();
        double[][] data2 = z5mVar.m58633d().getData();
        int length = data.length;
        double d4 = 0.0d;
        double d5 = 0.0d;
        for (int i11 = 0; i11 < length; i11++) {
            for (int max = FastMath.max(i11 - 1, 0); max < length; max++) {
                d5 += FastMath.abs(data[i11][max]);
            }
        }
        if (Precision.equals(d5, 0.0d, 1.0E-12d)) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        int i12 = length - 1;
        int i13 = i12;
        double d6 = 0.0d;
        double d7 = 0.0d;
        double d8 = 0.0d;
        while (i13 >= 0) {
            double d9 = this.f108482e[i13];
            double d10 = this.f108483f[i13];
            if (Precision.equals(d10, d4)) {
                data[i13][i13] = 1.0d;
                int i14 = i13 - 1;
                int i15 = i13;
                double d11 = d6;
                while (i14 >= 0) {
                    double d12 = data[i14][i14] - d9;
                    for (int i16 = i15; i16 <= i13; i16++) {
                        d4 += data[i14][i16] * data[i16][i13];
                    }
                    if (Precision.compareTo(this.f108483f[i14], 0.0d, 1.0E-12d) < 0) {
                        d7 = d12;
                        i9 = i12;
                        dArr2 = data2;
                        i10 = length;
                        d11 = d4;
                    } else {
                        i9 = i12;
                        dArr2 = data2;
                        i10 = length;
                        if (!Precision.equals(this.f108483f[i14], 0.0d)) {
                            double[] dArr3 = data[i14];
                            int i17 = i14 + 1;
                            double d13 = dArr3[i17];
                            double d14 = data[i17][i14];
                            double d15 = this.f108482e[i14];
                            double d16 = (d15 - d9) * (d15 - d9);
                            double d17 = this.f108483f[i14];
                            double d18 = ((d13 * d11) - (d7 * d4)) / (d16 + (d17 * d17));
                            dArr3[i13] = d18;
                            if (FastMath.abs(d13) > FastMath.abs(d7)) {
                                data[i17][i13] = ((-d4) - (d12 * d18)) / d13;
                            } else {
                                data[i17][i13] = ((-d11) - (d14 * d18)) / d7;
                            }
                        } else if (d12 != 0.0d) {
                            data[i14][i13] = (-d4) / d12;
                        } else {
                            data[i14][i13] = (-d4) / (Precision.EPSILON * d5);
                        }
                        double abs = FastMath.abs(data[i14][i13]);
                        if (Precision.EPSILON * abs * abs > 1.0d) {
                            for (int i18 = i14; i18 <= i13; i18++) {
                                double[] dArr4 = data[i18];
                                dArr4[i13] = dArr4[i13] / abs;
                            }
                        }
                        i15 = i14;
                    }
                    i14--;
                    i12 = i9;
                    d8 = d4;
                    data2 = dArr2;
                    length = i10;
                    d4 = 0.0d;
                }
                dArr = data2;
                i = length;
                d6 = d11;
                i2 = i12;
            } else {
                int i19 = i12;
                dArr = data2;
                i = length;
                if (d10 < d4) {
                    int i20 = i13 - 1;
                    if (FastMath.abs(data[i13][i20]) > FastMath.abs(data[i20][i13])) {
                        double[] dArr5 = data[i20];
                        double[] dArr6 = data[i13];
                        dArr5[i20] = d10 / dArr6[i20];
                        dArr5[i13] = (-(dArr6[i13] - d9)) / dArr6[i20];
                        i3 = i19;
                        d = d10;
                        i4 = i13;
                    } else {
                        double[] dArr7 = data[i20];
                        d = d10;
                        i3 = i19;
                        i4 = i13;
                        Complex m67809a = m67809a(0.0d, -dArr7[i13], dArr7[i20] - d9, d);
                        data[i20][i20] = m67809a.getReal();
                        data[i20][i4] = m67809a.getImaginary();
                    }
                    double[] dArr8 = data[i4];
                    dArr8[i20] = 0.0d;
                    dArr8[i4] = 1.0d;
                    int i21 = i4 - 2;
                    int i22 = i20;
                    double d19 = d6;
                    double d20 = d8;
                    while (i21 >= 0) {
                        double d21 = 0.0d;
                        double d22 = 0.0d;
                        for (int i23 = i22; i23 <= i4; i23++) {
                            double d23 = data[i21][i23];
                            double[] dArr9 = data[i23];
                            d22 += dArr9[i20] * d23;
                            d21 += d23 * dArr9[i4];
                        }
                        double d24 = data[i21][i21] - d9;
                        if (Precision.compareTo(this.f108483f[i21], 0.0d, 1.0E-12d) < 0) {
                            d20 = d22;
                            i6 = i3;
                            i8 = i4;
                            d7 = d24;
                        } else {
                            double d25 = d20;
                            double d26 = d19;
                            if (Precision.equals(this.f108483f[i21], 0.0d)) {
                                Complex m67809a2 = m67809a(-d22, -d21, d24, d);
                                data[i21][i20] = m67809a2.getReal();
                                data[i21][i4] = m67809a2.getImaginary();
                                i6 = i3;
                                i7 = i4;
                                d3 = d26;
                                d2 = d25;
                            } else {
                                int i24 = i21 + 1;
                                double d27 = data[i21][i24];
                                double d28 = data[i24][i21];
                                double d29 = this.f108482e[i21];
                                double d30 = this.f108483f[i21];
                                double d31 = (((d29 - d9) * (d29 - d9)) + (d30 * d30)) - (d * d);
                                double d32 = (d29 - d9) * 2.0d * d;
                                i6 = i3;
                                i7 = i4;
                                if (Precision.equals(d31, 0.0d) && Precision.equals(d32, 0.0d)) {
                                    d31 = Precision.EPSILON * d5 * (FastMath.abs(d24) + FastMath.abs(d) + FastMath.abs(d27) + FastMath.abs(d28) + FastMath.abs(d7));
                                }
                                double d33 = d21;
                                double d34 = d22;
                                Complex m67809a3 = m67809a(((d27 * d25) - (d7 * d22)) + (d * d21), ((d27 * d26) - (d7 * d21)) - (d * d22), d31, d32);
                                data[i21][i20] = m67809a3.getReal();
                                data[i21][i7] = m67809a3.getImaginary();
                                if (FastMath.abs(d27) > FastMath.abs(d7) + FastMath.abs(d)) {
                                    double[] dArr10 = data[i24];
                                    double[] dArr11 = data[i21];
                                    dArr10[i20] = (((-d34) - (dArr11[i20] * d24)) + (d * dArr11[i7])) / d27;
                                    dArr10[i7] = (((-d33) - (d24 * dArr11[i7])) - (d * dArr11[i20])) / d27;
                                    d2 = d25;
                                    d3 = d26;
                                } else {
                                    d2 = d25;
                                    double[] dArr12 = data[i21];
                                    d3 = d26;
                                    Complex m67809a4 = m67809a((-d2) - (dArr12[i20] * d28), (-d26) - (d28 * dArr12[i7]), d7, d);
                                    data[i24][i20] = m67809a4.getReal();
                                    data[i24][i7] = m67809a4.getImaginary();
                                }
                            }
                            double max2 = FastMath.max(FastMath.abs(data[i21][i20]), FastMath.abs(data[i21][i7]));
                            if (Precision.EPSILON * max2 * max2 > 1.0d) {
                                i8 = i7;
                                for (int i25 = i21; i25 <= i8; i25++) {
                                    double[] dArr13 = data[i25];
                                    dArr13[i20] = dArr13[i20] / max2;
                                    dArr13[i8] = dArr13[i8] / max2;
                                }
                            } else {
                                i8 = i7;
                            }
                            d20 = d2;
                            i22 = i21;
                            d21 = d3;
                        }
                        i21--;
                        i4 = i8;
                        i3 = i6;
                        d19 = d21;
                    }
                    d6 = d19;
                    i2 = i3;
                    i5 = i4;
                    d8 = d20;
                    i13 = i5 - 1;
                    data2 = dArr;
                    length = i;
                    i12 = i2;
                    d4 = 0.0d;
                } else {
                    i2 = i19;
                }
            }
            i5 = i13;
            i13 = i5 - 1;
            data2 = dArr;
            length = i;
            i12 = i2;
            d4 = 0.0d;
        }
        int i26 = i12;
        double[][] dArr14 = data2;
        int i27 = length;
        while (i12 >= 0) {
            int i28 = i26;
            for (int i29 = 0; i29 <= i28; i29++) {
                double d35 = 0.0d;
                for (int i30 = 0; i30 <= FastMath.min(i12, i28); i30++) {
                    d35 += dArr14[i29][i30] * data[i30][i12];
                }
                dArr14[i29][i12] = d35;
            }
            i12--;
            i26 = i28;
        }
        this.f108484g = new ArrayRealVector[i27];
        double[] dArr15 = new double[i27];
        for (int i31 = 0; i31 < i27; i31++) {
            for (int i32 = 0; i32 < i27; i32++) {
                dArr15[i32] = dArr14[i32][i31];
            }
            this.f108484g[i31] = new ArrayRealVector(dArr15);
        }
    }

    /* renamed from: d */
    public final z5m m67812d(RealMatrix realMatrix) {
        z5m z5mVar = new z5m(realMatrix);
        double[][] data = z5mVar.m58635f().getData();
        this.f108482e = new double[data.length];
        this.f108483f = new double[data.length];
        int i = 0;
        while (true) {
            if (i >= this.f108482e.length) {
                return z5mVar;
            }
            if (i != r4.length - 1) {
                int i2 = i + 1;
                if (!Precision.equals(data[i2][i], 0.0d, 1.0E-12d)) {
                    double[] dArr = data[i2];
                    double d = dArr[i2];
                    double[] dArr2 = data[i];
                    double d2 = (dArr2[i] - d) * 0.5d;
                    double sqrt = FastMath.sqrt(FastMath.abs((d2 * d2) + (dArr[i] * dArr2[i2])));
                    double[] dArr3 = this.f108482e;
                    double d3 = d + d2;
                    dArr3[i] = d3;
                    double[] dArr4 = this.f108483f;
                    dArr4[i] = sqrt;
                    dArr3[i2] = d3;
                    dArr4[i2] = -sqrt;
                    i = i2;
                    i++;
                }
            }
            this.f108482e[i] = data[i][i];
            i++;
        }
    }

    /* renamed from: e */
    public final void m67813e(RealMatrix realMatrix) {
        snn snnVar = new snn(realMatrix);
        this.f108481d = snnVar;
        this.f108479b = snnVar.m57190b();
        this.f108480c = this.f108481d.m57193e();
    }

    public RealMatrix getD() {
        if (this.f108486i == null) {
            this.f108486i = MatrixUtils.createRealDiagonalMatrix(this.f108482e);
            int i = 0;
            while (true) {
                double[] dArr = this.f108483f;
                if (i >= dArr.length) {
                    break;
                }
                if (Precision.compareTo(dArr[i], 0.0d, 1.0E-12d) > 0) {
                    this.f108486i.setEntry(i, i + 1, this.f108483f[i]);
                } else if (Precision.compareTo(this.f108483f[i], 0.0d, 1.0E-12d) < 0) {
                    this.f108486i.setEntry(i, i - 1, this.f108483f[i]);
                }
                i++;
            }
        }
        return this.f108486i;
    }

    public double getDeterminant() {
        double d = 1.0d;
        for (double d2 : this.f108482e) {
            d *= d2;
        }
        return d;
    }

    public RealVector getEigenvector(int i) {
        return this.f108484g[i].copy();
    }

    public double getImagEigenvalue(int i) {
        return this.f108483f[i];
    }

    public double[] getImagEigenvalues() {
        return (double[]) this.f108483f.clone();
    }

    public double getRealEigenvalue(int i) {
        return this.f108482e[i];
    }

    public double[] getRealEigenvalues() {
        return (double[]) this.f108482e.clone();
    }

    public DecompositionSolver getSolver() {
        if (hasComplexEigenvalues()) {
            throw new MathUnsupportedOperationException();
        }
        return new C19162b(this.f108482e, this.f108483f, this.f108484g);
    }

    public RealMatrix getSquareRoot() {
        if (!this.f108488k) {
            throw new MathUnsupportedOperationException();
        }
        double[] dArr = new double[this.f108482e.length];
        int i = 0;
        while (true) {
            double[] dArr2 = this.f108482e;
            if (i >= dArr2.length) {
                RealMatrix createRealDiagonalMatrix = MatrixUtils.createRealDiagonalMatrix(dArr);
                RealMatrix v = getV();
                return v.multiply(createRealDiagonalMatrix).multiply(getVT());
            }
            double d = dArr2[i];
            if (d <= 0.0d) {
                throw new MathUnsupportedOperationException();
            }
            dArr[i] = FastMath.sqrt(d);
            i++;
        }
    }

    public RealMatrix getV() {
        if (this.f108485h == null) {
            int length = this.f108484g.length;
            this.f108485h = MatrixUtils.createRealMatrix(length, length);
            for (int i = 0; i < length; i++) {
                this.f108485h.setColumnVector(i, this.f108484g[i]);
            }
        }
        return this.f108485h;
    }

    public RealMatrix getVT() {
        if (this.f108487j == null) {
            int length = this.f108484g.length;
            this.f108487j = MatrixUtils.createRealMatrix(length, length);
            for (int i = 0; i < length; i++) {
                this.f108487j.setRowVector(i, this.f108484g[i]);
            }
        }
        return this.f108487j;
    }

    public boolean hasComplexEigenvalues() {
        int i = 0;
        while (true) {
            double[] dArr = this.f108483f;
            if (i >= dArr.length) {
                return false;
            }
            if (!Precision.equals(dArr[i], 0.0d, 1.0E-12d)) {
                return true;
            }
            i++;
        }
    }

    @Deprecated
    public EigenDecomposition(RealMatrix realMatrix, double d) throws MathArithmeticException {
        this(realMatrix);
    }

    public EigenDecomposition(double[] dArr, double[] dArr2) {
        this.f108478a = (byte) 30;
        this.f108488k = true;
        this.f108479b = (double[]) dArr.clone();
        this.f108480c = (double[]) dArr2.clone();
        this.f108481d = null;
        int length = dArr.length;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length);
        for (int i = 0; i < length; i++) {
            dArr3[i][i] = 1.0d;
        }
        m67810b(dArr3);
    }

    @Deprecated
    public EigenDecomposition(double[] dArr, double[] dArr2, double d) {
        this(dArr, dArr2);
    }
}
