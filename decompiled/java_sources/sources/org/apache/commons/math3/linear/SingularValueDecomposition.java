package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class SingularValueDecomposition {

    /* renamed from: k */
    public static final double f108583k = 2.220446049250313E-16d;

    /* renamed from: l */
    public static final double f108584l = 1.6033346880071782E-291d;

    /* renamed from: a */
    public final double[] f108585a;

    /* renamed from: b */
    public final int f108586b;

    /* renamed from: c */
    public final int f108587c;

    /* renamed from: d */
    public final boolean f108588d;

    /* renamed from: e */
    public final RealMatrix f108589e;

    /* renamed from: f */
    public RealMatrix f108590f;

    /* renamed from: g */
    public RealMatrix f108591g;

    /* renamed from: h */
    public final RealMatrix f108592h;

    /* renamed from: i */
    public RealMatrix f108593i;

    /* renamed from: j */
    public final double f108594j;

    /* renamed from: org.apache.commons.math3.linear.SingularValueDecomposition$a */
    /* loaded from: classes12.dex */
    public class C19176a extends DefaultRealMatrixPreservingVisitor {

        /* renamed from: a */
        public final /* synthetic */ double[][] f108595a;

        public C19176a(double[][] dArr) {
            this.f108595a = dArr;
        }

        @Override // org.apache.commons.math3.linear.DefaultRealMatrixPreservingVisitor, org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public void visit(int i, int i2, double d) {
            this.f108595a[i][i2] = d / SingularValueDecomposition.this.f108585a[i];
        }
    }

    /* renamed from: org.apache.commons.math3.linear.SingularValueDecomposition$b */
    /* loaded from: classes12.dex */
    public static class C19177b implements DecompositionSolver {

        /* renamed from: a */
        public final RealMatrix f108597a;

        /* renamed from: b */
        public boolean f108598b;

        public /* synthetic */ C19177b(double[] dArr, RealMatrix realMatrix, RealMatrix realMatrix2, boolean z, double d, C19176a c19176a) {
            this(dArr, realMatrix, realMatrix2, z, d);
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix getInverse() {
            return this.f108597a;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public boolean isNonSingular() {
            return this.f108598b;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealVector solve(RealVector realVector) {
            return this.f108597a.operate(realVector);
        }

        public C19177b(double[] dArr, RealMatrix realMatrix, RealMatrix realMatrix2, boolean z, double d) {
            double[][] data = realMatrix.getData();
            for (int i = 0; i < dArr.length; i++) {
                double d2 = dArr[i];
                double d3 = d2 > d ? 1.0d / d2 : 0.0d;
                double[] dArr2 = data[i];
                for (int i2 = 0; i2 < dArr2.length; i2++) {
                    dArr2[i2] = dArr2[i2] * d3;
                }
            }
            this.f108597a = realMatrix2.multiply(new Array2DRowRealMatrix(data, false));
            this.f108598b = z;
        }

        @Override // org.apache.commons.math3.linear.DecompositionSolver
        public RealMatrix solve(RealMatrix realMatrix) {
            return this.f108597a.multiply(realMatrix);
        }
    }

    public SingularValueDecomposition(RealMatrix realMatrix) {
        double[][] data;
        double d;
        char c;
        int i;
        double[][] dArr;
        int i2;
        double d2;
        double[][] dArr2;
        int i3;
        if (realMatrix.getRowDimension() < realMatrix.getColumnDimension()) {
            this.f108588d = true;
            data = realMatrix.transpose().getData();
            this.f108586b = realMatrix.getColumnDimension();
            this.f108587c = realMatrix.getRowDimension();
        } else {
            this.f108588d = false;
            data = realMatrix.getData();
            this.f108586b = realMatrix.getRowDimension();
            this.f108587c = realMatrix.getColumnDimension();
        }
        int i4 = this.f108587c;
        this.f108585a = new double[i4];
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.f108586b, i4);
        int i5 = this.f108587c;
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i5, i5);
        int i6 = this.f108587c;
        double[] dArr5 = new double[i6];
        int i7 = this.f108586b;
        double[] dArr6 = new double[i7];
        int min = FastMath.min(i7 - 1, i6);
        char c2 = 2;
        int max = FastMath.max(0, this.f108587c - 2);
        int i8 = 0;
        while (true) {
            d = 0.0d;
            if (i8 >= FastMath.max(min, max)) {
                break;
            }
            if (i8 < min) {
                this.f108585a[i8] = 0.0d;
                int i9 = i8;
                while (i9 < this.f108586b) {
                    double[] dArr7 = this.f108585a;
                    dArr7[i8] = FastMath.hypot(dArr7[i8], data[i9][i8]);
                    i9++;
                    dArr4 = dArr4;
                }
                dArr2 = dArr4;
                double[] dArr8 = this.f108585a;
                double d3 = dArr8[i8];
                if (d3 != 0.0d) {
                    if (data[i8][i8] < 0.0d) {
                        dArr8[i8] = -d3;
                    }
                    for (int i10 = i8; i10 < this.f108586b; i10++) {
                        double[] dArr9 = data[i10];
                        dArr9[i8] = dArr9[i8] / this.f108585a[i8];
                    }
                    double[] dArr10 = data[i8];
                    dArr10[i8] = dArr10[i8] + 1.0d;
                }
                double[] dArr11 = this.f108585a;
                dArr11[i8] = -dArr11[i8];
            } else {
                dArr2 = dArr4;
            }
            int i11 = i8 + 1;
            for (int i12 = i11; i12 < this.f108587c; i12++) {
                if (i8 < min && this.f108585a[i8] != 0.0d) {
                    double d4 = 0.0d;
                    for (int i13 = i8; i13 < this.f108586b; i13++) {
                        double[] dArr12 = data[i13];
                        d4 += dArr12[i8] * dArr12[i12];
                    }
                    double d5 = (-d4) / data[i8][i8];
                    for (int i14 = i8; i14 < this.f108586b; i14++) {
                        double[] dArr13 = data[i14];
                        dArr13[i12] = dArr13[i12] + (dArr13[i8] * d5);
                    }
                }
                dArr5[i12] = data[i8][i12];
            }
            if (i8 < min) {
                for (int i15 = i8; i15 < this.f108586b; i15++) {
                    dArr3[i15][i8] = data[i15][i8];
                }
            }
            if (i8 < max) {
                dArr5[i8] = 0.0d;
                int i16 = i11;
                while (i16 < this.f108587c) {
                    dArr5[i8] = FastMath.hypot(dArr5[i8], dArr5[i16]);
                    i16++;
                    min = min;
                }
                i3 = min;
                double d6 = dArr5[i8];
                if (d6 != 0.0d) {
                    if (dArr5[i11] < 0.0d) {
                        dArr5[i8] = -d6;
                    }
                    for (int i17 = i11; i17 < this.f108587c; i17++) {
                        dArr5[i17] = dArr5[i17] / dArr5[i8];
                    }
                    dArr5[i11] = dArr5[i11] + 1.0d;
                }
                double d7 = -dArr5[i8];
                dArr5[i8] = d7;
                if (i11 < this.f108586b && d7 != 0.0d) {
                    for (int i18 = i11; i18 < this.f108586b; i18++) {
                        dArr6[i18] = 0.0d;
                    }
                    for (int i19 = i11; i19 < this.f108587c; i19++) {
                        for (int i20 = i11; i20 < this.f108586b; i20++) {
                            dArr6[i20] = dArr6[i20] + (dArr5[i19] * data[i20][i19]);
                        }
                    }
                    for (int i21 = i11; i21 < this.f108587c; i21++) {
                        double d8 = (-dArr5[i21]) / dArr5[i11];
                        for (int i22 = i11; i22 < this.f108586b; i22++) {
                            double[] dArr14 = data[i22];
                            dArr14[i21] = dArr14[i21] + (dArr6[i22] * d8);
                        }
                    }
                }
                for (int i23 = i11; i23 < this.f108587c; i23++) {
                    dArr2[i23][i8] = dArr5[i23];
                }
            } else {
                i3 = min;
            }
            dArr4 = dArr2;
            i8 = i11;
            min = i3;
        }
        double[][] dArr15 = dArr4;
        int i24 = min;
        int i25 = this.f108587c;
        if (i24 < i25) {
            this.f108585a[i24] = data[i24][i24];
        }
        if (this.f108586b < i25) {
            this.f108585a[i25 - 1] = 0.0d;
        }
        if (max + 1 < i25) {
            dArr5[max] = data[max][i25 - 1];
        }
        int i26 = i25 - 1;
        dArr5[i26] = 0.0d;
        for (int i27 = i24; i27 < this.f108587c; i27++) {
            for (int i28 = 0; i28 < this.f108586b; i28++) {
                dArr3[i28][i27] = 0.0d;
            }
            dArr3[i27][i27] = 1.0d;
        }
        for (int i29 = i24 - 1; i29 >= 0; i29--) {
            if (this.f108585a[i29] != 0.0d) {
                for (int i30 = i29 + 1; i30 < this.f108587c; i30++) {
                    double d9 = 0.0d;
                    for (int i31 = i29; i31 < this.f108586b; i31++) {
                        double[] dArr16 = dArr3[i31];
                        d9 += dArr16[i29] * dArr16[i30];
                    }
                    double d10 = (-d9) / dArr3[i29][i29];
                    for (int i32 = i29; i32 < this.f108586b; i32++) {
                        double[] dArr17 = dArr3[i32];
                        dArr17[i30] = dArr17[i30] + (dArr17[i29] * d10);
                    }
                }
                for (int i33 = i29; i33 < this.f108586b; i33++) {
                    double[] dArr18 = dArr3[i33];
                    dArr18[i29] = -dArr18[i29];
                }
                double[] dArr19 = dArr3[i29];
                dArr19[i29] = dArr19[i29] + 1.0d;
                for (int i34 = 0; i34 < i29 - 1; i34++) {
                    dArr3[i34][i29] = 0.0d;
                }
            } else {
                for (int i35 = 0; i35 < this.f108586b; i35++) {
                    dArr3[i35][i29] = 0.0d;
                }
                dArr3[i29][i29] = 1.0d;
            }
        }
        for (int i36 = this.f108587c - 1; i36 >= 0; i36--) {
            if (i36 < max && dArr5[i36] != 0.0d) {
                int i37 = i36 + 1;
                for (int i38 = i37; i38 < this.f108587c; i38++) {
                    double d11 = 0.0d;
                    for (int i39 = i37; i39 < this.f108587c; i39++) {
                        double[] dArr20 = dArr15[i39];
                        d11 += dArr20[i36] * dArr20[i38];
                    }
                    double d12 = (-d11) / dArr15[i37][i36];
                    for (int i40 = i37; i40 < this.f108587c; i40++) {
                        double[] dArr21 = dArr15[i40];
                        dArr21[i38] = dArr21[i38] + (dArr21[i36] * d12);
                    }
                }
            }
            for (int i41 = 0; i41 < this.f108587c; i41++) {
                dArr15[i41][i36] = 0.0d;
            }
            dArr15[i36][i36] = 1.0d;
        }
        while (i25 > 0) {
            int i42 = i25 - 2;
            int i43 = i42;
            while (true) {
                if (i43 < 0) {
                    break;
                }
                if (FastMath.abs(dArr5[i43]) <= ((FastMath.abs(this.f108585a[i43]) + FastMath.abs(this.f108585a[i43 + 1])) * 2.220446049250313E-16d) + 1.6033346880071782E-291d) {
                    dArr5[i43] = d;
                    break;
                }
                i43--;
            }
            if (i43 == i42) {
                c = 4;
            } else {
                int i44 = i25 - 1;
                int i45 = i44;
                while (true) {
                    if (i45 < i43 || i45 == i43) {
                        break;
                    }
                    if (FastMath.abs(this.f108585a[i45]) <= (((i45 != i25 ? FastMath.abs(dArr5[i45]) : d) + (i45 != i43 + 1 ? FastMath.abs(dArr5[i45 - 1]) : d)) * 2.220446049250313E-16d) + 1.6033346880071782E-291d) {
                        this.f108585a[i45] = d;
                        break;
                    }
                    i45--;
                }
                if (i45 == i43) {
                    c = 3;
                } else if (i45 == i44) {
                    c = 1;
                } else {
                    c = c2;
                    i43 = i45;
                }
            }
            int i46 = i43 + 1;
            if (c == 1) {
                i = i26;
                dArr = dArr3;
                i2 = i25;
                double d13 = dArr5[i42];
                dArr5[i42] = 0.0d;
                while (i42 >= i46) {
                    double hypot = FastMath.hypot(this.f108585a[i42], d13);
                    double[] dArr22 = this.f108585a;
                    double d14 = dArr22[i42] / hypot;
                    double d15 = d13 / hypot;
                    dArr22[i42] = hypot;
                    if (i42 != i46) {
                        int i47 = i42 - 1;
                        double d16 = dArr5[i47];
                        d13 = (-d15) * d16;
                        dArr5[i47] = d16 * d14;
                    }
                    int i48 = 0;
                    while (i48 < this.f108587c) {
                        double[] dArr23 = dArr15[i48];
                        double d17 = dArr23[i42];
                        int i49 = i2 - 1;
                        double d18 = dArr23[i49];
                        dArr23[i49] = ((-d15) * d17) + (d18 * d14);
                        dArr23[i42] = (d14 * d17) + (d15 * d18);
                        i48++;
                        d13 = d13;
                    }
                    i42--;
                }
            } else if (c == c2) {
                i = i26;
                dArr = dArr3;
                int i50 = i25;
                int i51 = i46 - 1;
                double d19 = dArr5[i51];
                dArr5[i51] = 0.0d;
                i2 = i50;
                while (i46 < i2) {
                    double hypot2 = FastMath.hypot(this.f108585a[i46], d19);
                    double[] dArr24 = this.f108585a;
                    double d20 = dArr24[i46] / hypot2;
                    double d21 = d19 / hypot2;
                    dArr24[i46] = hypot2;
                    double d22 = -d21;
                    double d23 = dArr5[i46];
                    double d24 = d22 * d23;
                    dArr5[i46] = d23 * d20;
                    for (int i52 = 0; i52 < this.f108586b; i52++) {
                        double[] dArr25 = dArr[i52];
                        double d25 = dArr25[i46];
                        double d26 = dArr25[i51];
                        dArr25[i51] = (d25 * d22) + (d26 * d20);
                        dArr25[i46] = (d20 * d25) + (d21 * d26);
                    }
                    i46++;
                    d19 = d24;
                }
            } else if (c != 3) {
                double[] dArr26 = this.f108585a;
                double d27 = dArr26[i46];
                if (d27 <= d) {
                    dArr26[i46] = d27 < d ? -d27 : d;
                    for (int i53 = 0; i53 <= i26; i53++) {
                        double[] dArr27 = dArr15[i53];
                        dArr27[i46] = -dArr27[i46];
                    }
                }
                while (i46 < i26) {
                    double[] dArr28 = this.f108585a;
                    double d28 = dArr28[i46];
                    int i54 = i46 + 1;
                    double d29 = dArr28[i54];
                    if (d28 >= d29) {
                        break;
                    }
                    dArr28[i46] = d29;
                    dArr28[i54] = d28;
                    if (i46 < this.f108587c - 1) {
                        for (int i55 = 0; i55 < this.f108587c; i55++) {
                            double[] dArr29 = dArr15[i55];
                            double d30 = dArr29[i54];
                            dArr29[i54] = dArr29[i46];
                            dArr29[i46] = d30;
                        }
                    }
                    if (i46 < this.f108586b - 1) {
                        for (int i56 = 0; i56 < this.f108586b; i56++) {
                            double[] dArr30 = dArr3[i56];
                            double d31 = dArr30[i54];
                            dArr30[i54] = dArr30[i46];
                            dArr30[i46] = d31;
                        }
                    }
                    i46 = i54;
                }
                i25--;
                i = i26;
                dArr = dArr3;
                i26 = i;
                dArr3 = dArr;
                c2 = 2;
                d = 0.0d;
            } else {
                int i57 = i25 - 1;
                double max2 = FastMath.max(FastMath.max(FastMath.max(FastMath.max(FastMath.abs(this.f108585a[i57]), FastMath.abs(this.f108585a[i42])), FastMath.abs(dArr5[i42])), FastMath.abs(this.f108585a[i46])), FastMath.abs(dArr5[i46]));
                double[] dArr31 = this.f108585a;
                double d32 = dArr31[i57] / max2;
                double d33 = dArr31[i42] / max2;
                double d34 = dArr5[i42] / max2;
                double d35 = dArr31[i46] / max2;
                double d36 = dArr5[i46] / max2;
                double d37 = (((d33 + d32) * (d33 - d32)) + (d34 * d34)) / 2.0d;
                double d38 = d34 * d32;
                double d39 = d38 * d38;
                if (d37 == d && d39 == d) {
                    d2 = d;
                } else {
                    double sqrt = FastMath.sqrt((d37 * d37) + d39);
                    d2 = d39 / (d37 + (d37 < d ? -sqrt : sqrt));
                }
                double d40 = ((d35 + d32) * (d35 - d32)) + d2;
                int i58 = i46;
                double d41 = d35 * d36;
                while (i58 < i57) {
                    double hypot3 = FastMath.hypot(d40, d41);
                    double d42 = d40 / hypot3;
                    double d43 = d41 / hypot3;
                    if (i58 != i46) {
                        dArr5[i58 - 1] = hypot3;
                    }
                    double[] dArr32 = this.f108585a;
                    double d44 = dArr32[i58];
                    double d45 = dArr5[i58];
                    double d46 = (d42 * d44) + (d43 * d45);
                    dArr5[i58] = (d45 * d42) - (d44 * d43);
                    int i59 = i58 + 1;
                    double d47 = dArr32[i59];
                    int i60 = i57;
                    int i61 = i42;
                    double d48 = d43 * d47;
                    dArr32[i59] = d47 * d42;
                    int i62 = i26;
                    int i63 = 0;
                    while (i63 < this.f108587c) {
                        double[] dArr33 = dArr15[i63];
                        double d49 = dArr33[i58];
                        double d50 = dArr33[i59];
                        dArr33[i59] = ((-d43) * d49) + (d50 * d42);
                        dArr33[i58] = (d42 * d49) + (d43 * d50);
                        i63++;
                        dArr3 = dArr3;
                        i25 = i25;
                    }
                    double[][] dArr34 = dArr3;
                    int i64 = i25;
                    double hypot4 = FastMath.hypot(d46, d48);
                    double d51 = d46 / hypot4;
                    double d52 = d48 / hypot4;
                    double[] dArr35 = this.f108585a;
                    dArr35[i58] = hypot4;
                    double d53 = dArr5[i58];
                    double d54 = dArr35[i59];
                    double d55 = (d51 * d53) + (d52 * d54);
                    double d56 = -d52;
                    dArr35[i59] = (d53 * d56) + (d54 * d51);
                    double d57 = dArr5[i59];
                    d41 = d52 * d57;
                    dArr5[i59] = d57 * d51;
                    if (i58 < this.f108586b - 1) {
                        for (int i65 = 0; i65 < this.f108586b; i65++) {
                            double[] dArr36 = dArr34[i65];
                            double d58 = dArr36[i58];
                            double d59 = dArr36[i59];
                            dArr36[i59] = (d58 * d56) + (d59 * d51);
                            dArr36[i58] = (d51 * d58) + (d52 * d59);
                        }
                    }
                    i58 = i59;
                    i26 = i62;
                    dArr3 = dArr34;
                    i42 = i61;
                    i57 = i60;
                    d40 = d55;
                    i25 = i64;
                }
                i = i26;
                dArr = dArr3;
                dArr5[i42] = d40;
                i2 = i25;
            }
            i25 = i2;
            i26 = i;
            dArr3 = dArr;
            c2 = 2;
            d = 0.0d;
        }
        double[][] dArr37 = dArr3;
        this.f108594j = FastMath.max(this.f108586b * this.f108585a[0] * 2.220446049250313E-16d, FastMath.sqrt(Precision.SAFE_MIN));
        if (this.f108588d) {
            this.f108589e = MatrixUtils.createRealMatrix(dArr15);
            this.f108592h = MatrixUtils.createRealMatrix(dArr37);
        } else {
            this.f108589e = MatrixUtils.createRealMatrix(dArr37);
            this.f108592h = MatrixUtils.createRealMatrix(dArr15);
        }
    }

    public double getConditionNumber() {
        double[] dArr = this.f108585a;
        return dArr[0] / dArr[this.f108587c - 1];
    }

    public RealMatrix getCovariance(double d) {
        int length = this.f108585a.length;
        int i = 0;
        while (i < length && this.f108585a[i] >= d) {
            i++;
        }
        if (i == 0) {
            throw new NumberIsTooLargeException(LocalizedFormats.TOO_LARGE_CUTOFF_SINGULAR_VALUE, Double.valueOf(d), Double.valueOf(this.f108585a[0]), true);
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, length);
        getVT().walkInOptimizedOrder(new C19176a(dArr), 0, i - 1, 0, length - 1);
        RealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(dArr, false);
        return array2DRowRealMatrix.transpose().multiply(array2DRowRealMatrix);
    }

    public double getInverseConditionNumber() {
        double[] dArr = this.f108585a;
        return dArr[this.f108587c - 1] / dArr[0];
    }

    public double getNorm() {
        return this.f108585a[0];
    }

    public int getRank() {
        int i = 0;
        int i2 = 0;
        while (true) {
            double[] dArr = this.f108585a;
            if (i >= dArr.length) {
                return i2;
            }
            if (dArr[i] > this.f108594j) {
                i2++;
            }
            i++;
        }
    }

    public RealMatrix getS() {
        if (this.f108591g == null) {
            this.f108591g = MatrixUtils.createRealDiagonalMatrix(this.f108585a);
        }
        return this.f108591g;
    }

    public double[] getSingularValues() {
        return (double[]) this.f108585a.clone();
    }

    public DecompositionSolver getSolver() {
        return new C19177b(this.f108585a, getUT(), getV(), getRank() == this.f108586b, this.f108594j, null);
    }

    public RealMatrix getU() {
        return this.f108589e;
    }

    public RealMatrix getUT() {
        if (this.f108590f == null) {
            this.f108590f = getU().transpose();
        }
        return this.f108590f;
    }

    public RealMatrix getV() {
        return this.f108592h;
    }

    public RealMatrix getVT() {
        if (this.f108593i == null) {
            this.f108593i = getV().transpose();
        }
        return this.f108593i;
    }
}
