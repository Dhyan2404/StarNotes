package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class QRDecomposition {

    /* renamed from: a */
    public double[][] f108526a;

    /* renamed from: b */
    public double[] f108527b;

    /* renamed from: c */
    public RealMatrix f108528c;

    /* renamed from: d */
    public RealMatrix f108529d;

    /* renamed from: e */
    public RealMatrix f108530e;

    /* renamed from: f */
    public RealMatrix f108531f;

    /* renamed from: g */
    public final double f108532g;

    /* renamed from: org.apache.commons.math3.linear.QRDecomposition$b */
    /* loaded from: classes12.dex */
    public static class C19171b implements DecompositionSolver {

        /* renamed from: a */
        public final double[][] f108533a;

        /* renamed from: b */
        public final double[] f108534b;

        /* renamed from: c */
        public final double f108535c;

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix getInverse() {
            return solve(MatrixUtils.createRealIdentityMatrix(this.f108533a[0].length));
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public boolean isNonSingular() {
            for (double d : this.f108534b) {
                if (FastMath.abs(d) <= this.f108535c) {
                    return false;
                }
            }
            return true;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealVector solve(RealVector realVector) {
            double[][] dArr = this.f108533a;
            int length = dArr.length;
            int length2 = dArr[0].length;
            if (realVector.getDimension() == length2) {
                if (isNonSingular()) {
                    double[] dArr2 = new double[length];
                    double[] array = realVector.toArray();
                    for (int i = 0; i < FastMath.min(length2, length); i++) {
                        double[] dArr3 = this.f108533a[i];
                        double d = 0.0d;
                        for (int i2 = i; i2 < length2; i2++) {
                            d += array[i2] * dArr3[i2];
                        }
                        double d2 = d / (this.f108534b[i] * dArr3[i]);
                        for (int i3 = i; i3 < length2; i3++) {
                            array[i3] = array[i3] + (dArr3[i3] * d2);
                        }
                    }
                    for (int length3 = this.f108534b.length - 1; length3 >= 0; length3--) {
                        double d3 = array[length3] / this.f108534b[length3];
                        array[length3] = d3;
                        double[] dArr4 = this.f108533a[length3];
                        dArr2[length3] = d3;
                        for (int i4 = 0; i4 < length3; i4++) {
                            array[i4] = array[i4] - (dArr4[i4] * d3);
                        }
                    }
                    return new ArrayRealVector(dArr2, false);
                }
                throw new SingularMatrixException();
            }
            throw new DimensionMismatchException(realVector.getDimension(), length2);
        }

        public C19171b(double[][] dArr, double[] dArr2, double d) {
            this.f108533a = dArr;
            this.f108534b = dArr2;
            this.f108535c = d;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix solve(RealMatrix realMatrix) {
            double d;
            double[][] dArr = this.f108533a;
            int length = dArr.length;
            int i = 0;
            int length2 = dArr[0].length;
            if (realMatrix.getRowDimension() == length2) {
                if (isNonSingular()) {
                    int columnDimension = realMatrix.getColumnDimension();
                    int i2 = ((columnDimension + 52) - 1) / 52;
                    double[][] createBlocksLayout = BlockRealMatrix.createBlocksLayout(length, columnDimension);
                    double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, realMatrix.getRowDimension(), 52);
                    double[] dArr3 = new double[52];
                    int i3 = 0;
                    while (i3 < i2) {
                        int i4 = i3 * 52;
                        int min = FastMath.min(i4 + 52, columnDimension);
                        int i5 = min - i4;
                        int i6 = columnDimension;
                        realMatrix.copySubMatrix(0, length2 - 1, i4, min - 1, dArr2);
                        int i7 = i;
                        while (true) {
                            d = 1.0d;
                            if (i7 >= FastMath.min(length2, length)) {
                                break;
                            }
                            double[] dArr4 = this.f108533a[i7];
                            double d2 = 1.0d / (this.f108534b[i7] * dArr4[i7]);
                            Arrays.fill(dArr3, i, i5, 0.0d);
                            int i8 = i7;
                            while (i8 < length2) {
                                double d3 = dArr4[i8];
                                double[] dArr5 = dArr2[i8];
                                while (i < i5) {
                                    dArr3[i] = dArr3[i] + (dArr5[i] * d3);
                                    i++;
                                }
                                i8++;
                                i = 0;
                            }
                            for (int i9 = 0; i9 < i5; i9++) {
                                dArr3[i9] = dArr3[i9] * d2;
                            }
                            for (int i10 = i7; i10 < length2; i10++) {
                                double d4 = dArr4[i10];
                                double[] dArr6 = dArr2[i10];
                                for (int i11 = 0; i11 < i5; i11++) {
                                    dArr6[i11] = dArr6[i11] + (dArr3[i11] * d4);
                                }
                            }
                            i7++;
                            i = 0;
                        }
                        int length3 = this.f108534b.length - 1;
                        while (length3 >= 0) {
                            int i12 = length3 / 52;
                            int i13 = i12 * 52;
                            double d5 = d / this.f108534b[length3];
                            double[] dArr7 = dArr2[length3];
                            double[] dArr8 = createBlocksLayout[(i12 * i2) + i3];
                            int i14 = (length3 - i13) * i5;
                            int i15 = 0;
                            while (i15 < i5) {
                                double d6 = dArr7[i15] * d5;
                                dArr7[i15] = d6;
                                dArr8[i14] = d6;
                                i15++;
                                i14++;
                            }
                            double[] dArr9 = this.f108533a[length3];
                            for (int i16 = 0; i16 < length3; i16++) {
                                double d7 = dArr9[i16];
                                double[] dArr10 = dArr2[i16];
                                for (int i17 = 0; i17 < i5; i17++) {
                                    dArr10[i17] = dArr10[i17] - (dArr7[i17] * d7);
                                }
                            }
                            length3--;
                            d = 1.0d;
                        }
                        i3++;
                        columnDimension = i6;
                        i = 0;
                    }
                    return new BlockRealMatrix(length, columnDimension, createBlocksLayout, false);
                }
                throw new SingularMatrixException();
            }
            throw new DimensionMismatchException(realMatrix.getRowDimension(), length2);
        }
    }

    public QRDecomposition(RealMatrix realMatrix) {
        this(realMatrix, 0.0d);
    }

    public void decompose(double[][] dArr) {
        for (int i = 0; i < FastMath.min(dArr.length, dArr[0].length); i++) {
            performHouseholderReflection(i, dArr);
        }
    }

    public RealMatrix getH() {
        int i;
        if (this.f108531f == null) {
            double[][] dArr = this.f108526a;
            int length = dArr.length;
            int length2 = dArr[0].length;
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length2, length);
            int i2 = 0;
            while (i2 < length2) {
                int i3 = 0;
                while (true) {
                    i = i2 + 1;
                    if (i3 < FastMath.min(i, length)) {
                        dArr2[i2][i3] = this.f108526a[i3][i2] / (-this.f108527b[i3]);
                        i3++;
                    }
                }
                i2 = i;
            }
            this.f108531f = MatrixUtils.createRealMatrix(dArr2);
        }
        return this.f108531f;
    }

    public RealMatrix getQ() {
        if (this.f108528c == null) {
            this.f108528c = getQT().transpose();
        }
        return this.f108528c;
    }

    public RealMatrix getQT() {
        double d;
        if (this.f108529d == null) {
            double[][] dArr = this.f108526a;
            int length = dArr.length;
            int length2 = dArr[0].length;
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length2, length2);
            int i = length2 - 1;
            while (true) {
                d = 1.0d;
                if (i < FastMath.min(length2, length)) {
                    break;
                }
                dArr2[i][i] = 1.0d;
                i--;
            }
            int min = FastMath.min(length2, length) - 1;
            while (min >= 0) {
                double[] dArr3 = this.f108526a[min];
                dArr2[min][min] = d;
                if (dArr3[min] != 0.0d) {
                    for (int i2 = min; i2 < length2; i2++) {
                        double d2 = 0.0d;
                        for (int i3 = min; i3 < length2; i3++) {
                            d2 -= dArr2[i2][i3] * dArr3[i3];
                        }
                        double d3 = d2 / (this.f108527b[min] * dArr3[min]);
                        for (int i4 = min; i4 < length2; i4++) {
                            double[] dArr4 = dArr2[i2];
                            dArr4[i4] = dArr4[i4] + ((-d3) * dArr3[i4]);
                        }
                    }
                }
                min--;
                d = 1.0d;
            }
            this.f108529d = MatrixUtils.createRealMatrix(dArr2);
        }
        return this.f108529d;
    }

    public RealMatrix getR() {
        if (this.f108530e == null) {
            double[][] dArr = this.f108526a;
            int length = dArr.length;
            int length2 = dArr[0].length;
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length2, length);
            for (int min = FastMath.min(length2, length) - 1; min >= 0; min--) {
                dArr2[min][min] = this.f108527b[min];
                for (int i = min + 1; i < length; i++) {
                    dArr2[min][i] = this.f108526a[i][min];
                }
            }
            this.f108530e = MatrixUtils.createRealMatrix(dArr2);
        }
        return this.f108530e;
    }

    public DecompositionSolver getSolver() {
        return new C19171b(this.f108526a, this.f108527b, this.f108532g);
    }

    public void performHouseholderReflection(int i, double[][] dArr) {
        double[] dArr2 = dArr[i];
        double d = 0.0d;
        for (int i2 = i; i2 < dArr2.length; i2++) {
            double d2 = dArr2[i2];
            d += d2 * d2;
        }
        double sqrt = dArr2[i] > 0.0d ? -FastMath.sqrt(d) : FastMath.sqrt(d);
        this.f108527b[i] = sqrt;
        if (sqrt != 0.0d) {
            dArr2[i] = dArr2[i] - sqrt;
            for (int i3 = i + 1; i3 < dArr.length; i3++) {
                double[] dArr3 = dArr[i3];
                double d3 = 0.0d;
                for (int i4 = i; i4 < dArr3.length; i4++) {
                    d3 -= dArr3[i4] * dArr2[i4];
                }
                double d4 = d3 / (dArr2[i] * sqrt);
                for (int i5 = i; i5 < dArr3.length; i5++) {
                    dArr3[i5] = dArr3[i5] - (dArr2[i5] * d4);
                }
            }
        }
    }

    public QRDecomposition(RealMatrix realMatrix, double d) {
        this.f108532g = d;
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        this.f108526a = realMatrix.transpose().getData();
        this.f108527b = new double[FastMath.min(rowDimension, columnDimension)];
        this.f108528c = null;
        this.f108529d = null;
        this.f108530e = null;
        this.f108531f = null;
        decompose(this.f108526a);
    }
}
