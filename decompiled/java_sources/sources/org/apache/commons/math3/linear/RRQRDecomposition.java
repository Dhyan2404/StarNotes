package org.apache.commons.math3.linear;

import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class RRQRDecomposition extends QRDecomposition {

    /* renamed from: h */
    public int[] f108536h;

    /* renamed from: i */
    public RealMatrix f108537i;

    /* renamed from: org.apache.commons.math3.linear.RRQRDecomposition$b */
    /* loaded from: classes12.dex */
    public static class C19173b implements DecompositionSolver {

        /* renamed from: a */
        public final DecompositionSolver f108538a;

        /* renamed from: b */
        public RealMatrix f108539b;

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix getInverse() {
            return solve(MatrixUtils.createRealIdentityMatrix(this.f108539b.getRowDimension()));
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public boolean isNonSingular() {
            return this.f108538a.isNonSingular();
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealVector solve(RealVector realVector) {
            return this.f108539b.operate(this.f108538a.solve(realVector));
        }

        public C19173b(DecompositionSolver decompositionSolver, RealMatrix realMatrix) {
            this.f108538a = decompositionSolver;
            this.f108539b = realMatrix;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix solve(RealMatrix realMatrix) {
            return this.f108539b.multiply(this.f108538a.solve(realMatrix));
        }
    }

    public RRQRDecomposition(RealMatrix realMatrix) {
        this(realMatrix, 0.0d);
    }

    @Override // org.apache.commons.math3.linear.QRDecomposition
    public void decompose(double[][] dArr) {
        this.f108536h = new int[dArr.length];
        int i = 0;
        while (true) {
            int[] iArr = this.f108536h;
            if (i >= iArr.length) {
                super.decompose(dArr);
                return;
            } else {
                iArr[i] = i;
                i++;
            }
        }
    }

    public RealMatrix getP() {
        if (this.f108537i == null) {
            int length = this.f108536h.length;
            this.f108537i = MatrixUtils.createRealMatrix(length, length);
            for (int i = 0; i < length; i++) {
                this.f108537i.setEntry(this.f108536h[i], i, 1.0d);
            }
        }
        return this.f108537i;
    }

    public int getRank(double d) {
        RealMatrix r = getR();
        int rowDimension = r.getRowDimension();
        int columnDimension = r.getColumnDimension();
        double frobeniusNorm = r.getFrobeniusNorm();
        int i = 1;
        double d2 = frobeniusNorm;
        while (i < FastMath.min(rowDimension, columnDimension)) {
            double frobeniusNorm2 = r.getSubMatrix(i, rowDimension - 1, i, columnDimension - 1).getFrobeniusNorm();
            if (frobeniusNorm2 == 0.0d || (frobeniusNorm2 / d2) * frobeniusNorm < d) {
                break;
            }
            i++;
            d2 = frobeniusNorm2;
        }
        return i;
    }

    @Override // org.apache.commons.math3.linear.QRDecomposition
    public DecompositionSolver getSolver() {
        return new C19173b(super.getSolver(), getP());
    }

    @Override // org.apache.commons.math3.linear.QRDecomposition
    public void performHouseholderReflection(int i, double[][] dArr) {
        int i2 = i;
        int i3 = i2;
        double d = 0.0d;
        while (i2 < dArr.length) {
            int i4 = 0;
            double d2 = 0.0d;
            while (true) {
                double[] dArr2 = dArr[i2];
                if (i4 >= dArr2.length) {
                    break;
                }
                double d3 = dArr2[i4];
                d2 += d3 * d3;
                i4++;
            }
            if (d2 > d) {
                i3 = i2;
                d = d2;
            }
            i2++;
        }
        if (i3 != i) {
            double[] dArr3 = dArr[i];
            dArr[i] = dArr[i3];
            dArr[i3] = dArr3;
            int[] iArr = this.f108536h;
            int i5 = iArr[i];
            iArr[i] = iArr[i3];
            iArr[i3] = i5;
        }
        super.performHouseholderReflection(i, dArr);
    }

    public RRQRDecomposition(RealMatrix realMatrix, double d) {
        super(realMatrix, d);
    }
}
