package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class LUDecomposition {

    /* renamed from: h */
    public static final double f108508h = 1.0E-11d;

    /* renamed from: a */
    public final double[][] f108509a;

    /* renamed from: b */
    public final int[] f108510b;

    /* renamed from: c */
    public boolean f108511c;

    /* renamed from: d */
    public boolean f108512d;

    /* renamed from: e */
    public RealMatrix f108513e;

    /* renamed from: f */
    public RealMatrix f108514f;

    /* renamed from: g */
    public RealMatrix f108515g;

    /* renamed from: org.apache.commons.math3.linear.LUDecomposition$b */
    /* loaded from: classes12.dex */
    public static class C19167b implements DecompositionSolver {

        /* renamed from: a */
        public final double[][] f108516a;

        /* renamed from: b */
        public final int[] f108517b;

        /* renamed from: c */
        public final boolean f108518c;

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix getInverse() {
            return solve(MatrixUtils.createRealIdentityMatrix(this.f108517b.length));
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public boolean isNonSingular() {
            return !this.f108518c;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealVector solve(RealVector realVector) {
            int length = this.f108517b.length;
            if (realVector.getDimension() == length) {
                if (!this.f108518c) {
                    double[] dArr = new double[length];
                    for (int i = 0; i < length; i++) {
                        dArr[i] = realVector.getEntry(this.f108517b[i]);
                    }
                    int i2 = 0;
                    while (i2 < length) {
                        double d = dArr[i2];
                        int i3 = i2 + 1;
                        for (int i4 = i3; i4 < length; i4++) {
                            dArr[i4] = dArr[i4] - (this.f108516a[i4][i2] * d);
                        }
                        i2 = i3;
                    }
                    for (int i5 = length - 1; i5 >= 0; i5--) {
                        double d2 = dArr[i5] / this.f108516a[i5][i5];
                        dArr[i5] = d2;
                        for (int i6 = 0; i6 < i5; i6++) {
                            dArr[i6] = dArr[i6] - (this.f108516a[i6][i5] * d2);
                        }
                    }
                    return new ArrayRealVector(dArr, false);
                }
                throw new SingularMatrixException();
            }
            throw new DimensionMismatchException(realVector.getDimension(), length);
        }

        public C19167b(double[][] dArr, int[] iArr, boolean z) {
            this.f108516a = dArr;
            this.f108517b = iArr;
            this.f108518c = z;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix solve(RealMatrix realMatrix) {
            int length = this.f108517b.length;
            if (realMatrix.getRowDimension() == length) {
                if (!this.f108518c) {
                    int columnDimension = realMatrix.getColumnDimension();
                    double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, columnDimension);
                    for (int i = 0; i < length; i++) {
                        double[] dArr2 = dArr[i];
                        int i2 = this.f108517b[i];
                        for (int i3 = 0; i3 < columnDimension; i3++) {
                            dArr2[i3] = realMatrix.getEntry(i2, i3);
                        }
                    }
                    int i4 = 0;
                    while (i4 < length) {
                        double[] dArr3 = dArr[i4];
                        int i5 = i4 + 1;
                        for (int i6 = i5; i6 < length; i6++) {
                            double[] dArr4 = dArr[i6];
                            double d = this.f108516a[i6][i4];
                            for (int i7 = 0; i7 < columnDimension; i7++) {
                                dArr4[i7] = dArr4[i7] - (dArr3[i7] * d);
                            }
                        }
                        i4 = i5;
                    }
                    for (int i8 = length - 1; i8 >= 0; i8--) {
                        double[] dArr5 = dArr[i8];
                        double d2 = this.f108516a[i8][i8];
                        for (int i9 = 0; i9 < columnDimension; i9++) {
                            dArr5[i9] = dArr5[i9] / d2;
                        }
                        for (int i10 = 0; i10 < i8; i10++) {
                            double[] dArr6 = dArr[i10];
                            double d3 = this.f108516a[i10][i8];
                            for (int i11 = 0; i11 < columnDimension; i11++) {
                                dArr6[i11] = dArr6[i11] - (dArr5[i11] * d3);
                            }
                        }
                    }
                    return new Array2DRowRealMatrix(dArr, false);
                }
                throw new SingularMatrixException();
            }
            throw new DimensionMismatchException(realMatrix.getRowDimension(), length);
        }
    }

    public LUDecomposition(RealMatrix realMatrix) {
        this(realMatrix, 1.0E-11d);
    }

    public double getDeterminant() {
        if (this.f108512d) {
            return 0.0d;
        }
        int length = this.f108510b.length;
        double d = this.f108511c ? 1.0d : -1.0d;
        for (int i = 0; i < length; i++) {
            d *= this.f108509a[i][i];
        }
        return d;
    }

    public RealMatrix getL() {
        if (this.f108513e == null && !this.f108512d) {
            int length = this.f108510b.length;
            this.f108513e = MatrixUtils.createRealMatrix(length, length);
            for (int i = 0; i < length; i++) {
                double[] dArr = this.f108509a[i];
                for (int i2 = 0; i2 < i; i2++) {
                    this.f108513e.setEntry(i, i2, dArr[i2]);
                }
                this.f108513e.setEntry(i, i, 1.0d);
            }
        }
        return this.f108513e;
    }

    public RealMatrix getP() {
        if (this.f108515g == null && !this.f108512d) {
            int length = this.f108510b.length;
            this.f108515g = MatrixUtils.createRealMatrix(length, length);
            for (int i = 0; i < length; i++) {
                this.f108515g.setEntry(i, this.f108510b[i], 1.0d);
            }
        }
        return this.f108515g;
    }

    public int[] getPivot() {
        return (int[]) this.f108510b.clone();
    }

    public DecompositionSolver getSolver() {
        return new C19167b(this.f108509a, this.f108510b, this.f108512d);
    }

    public RealMatrix getU() {
        if (this.f108514f == null && !this.f108512d) {
            int length = this.f108510b.length;
            this.f108514f = MatrixUtils.createRealMatrix(length, length);
            for (int i = 0; i < length; i++) {
                double[] dArr = this.f108509a[i];
                for (int i2 = i; i2 < length; i2++) {
                    this.f108514f.setEntry(i, i2, dArr[i2]);
                }
            }
        }
        return this.f108514f;
    }

    public LUDecomposition(RealMatrix realMatrix, double d) {
        if (realMatrix.isSquare()) {
            int columnDimension = realMatrix.getColumnDimension();
            this.f108509a = realMatrix.getData();
            this.f108510b = new int[columnDimension];
            this.f108513e = null;
            this.f108514f = null;
            this.f108515g = null;
            for (int i = 0; i < columnDimension; i++) {
                this.f108510b[i] = i;
            }
            this.f108511c = true;
            this.f108512d = false;
            int i2 = 0;
            while (i2 < columnDimension) {
                for (int i3 = 0; i3 < i2; i3++) {
                    double[] dArr = this.f108509a[i3];
                    double d2 = dArr[i2];
                    for (int i4 = 0; i4 < i3; i4++) {
                        d2 -= dArr[i4] * this.f108509a[i4][i2];
                    }
                    dArr[i2] = d2;
                }
                double d3 = Double.NEGATIVE_INFINITY;
                int i5 = i2;
                int i6 = i5;
                while (i5 < columnDimension) {
                    double[] dArr2 = this.f108509a[i5];
                    double d4 = dArr2[i2];
                    for (int i7 = 0; i7 < i2; i7++) {
                        d4 -= dArr2[i7] * this.f108509a[i7][i2];
                    }
                    dArr2[i2] = d4;
                    if (FastMath.abs(d4) > d3) {
                        d3 = FastMath.abs(d4);
                        i6 = i5;
                    }
                    i5++;
                }
                if (FastMath.abs(this.f108509a[i6][i2]) < d) {
                    this.f108512d = true;
                    return;
                }
                if (i6 != i2) {
                    double[][] dArr3 = this.f108509a;
                    double[] dArr4 = dArr3[i6];
                    double[] dArr5 = dArr3[i2];
                    for (int i8 = 0; i8 < columnDimension; i8++) {
                        double d5 = dArr4[i8];
                        dArr4[i8] = dArr5[i8];
                        dArr5[i8] = d5;
                    }
                    int[] iArr = this.f108510b;
                    int i9 = iArr[i6];
                    iArr[i6] = iArr[i2];
                    iArr[i2] = i9;
                    this.f108511c = !this.f108511c;
                }
                double d6 = this.f108509a[i2][i2];
                int i10 = i2 + 1;
                for (int i11 = i10; i11 < columnDimension; i11++) {
                    double[] dArr6 = this.f108509a[i11];
                    dArr6[i2] = dArr6[i2] / d6;
                }
                i2 = i10;
            }
            return;
        }
        throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
    }
}
