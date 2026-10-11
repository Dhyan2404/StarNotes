package org.apache.commons.math3.analysis.differentiation;

import com.sunia.HTREnginev2.cyi;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class DSCompiler {

    /* renamed from: h */
    public static AtomicReference<DSCompiler[][]> f107773h = new AtomicReference<>(null);

    /* renamed from: a */
    public final int f107774a;

    /* renamed from: b */
    public final int f107775b;

    /* renamed from: c */
    public final int[][] f107776c;

    /* renamed from: d */
    public final int[][] f107777d;

    /* renamed from: e */
    public final int[] f107778e;

    /* renamed from: f */
    public final int[][][] f107779f;

    /* renamed from: g */
    public final int[][][] f107780g;

    public DSCompiler(int i, int i2, DSCompiler dSCompiler, DSCompiler dSCompiler2) throws NumberIsTooLargeException {
        this.f107774a = i;
        this.f107775b = i2;
        int[][] m67463e = m67463e(i, i2, dSCompiler);
        this.f107776c = m67463e;
        int[][] m67460b = m67460b(i, i2, dSCompiler, dSCompiler2);
        this.f107777d = m67460b;
        int[] m67461c = m67461c(i, i2, dSCompiler, dSCompiler2);
        this.f107778e = m67461c;
        this.f107779f = m67462d(i, i2, dSCompiler, dSCompiler2, m67461c);
        this.f107780g = m67459a(i, i2, dSCompiler, dSCompiler2, m67463e, m67460b);
    }

    /* renamed from: a */
    public static int[][][] m67459a(int i, int i2, DSCompiler dSCompiler, DSCompiler dSCompiler2, int[][] iArr, int[][] iArr2) throws NumberIsTooLargeException {
        DSCompiler dSCompiler3 = dSCompiler2;
        int i3 = 0;
        int i4 = 1;
        if (i == 0 || i2 == 0) {
            return new int[][][]{new int[][]{new int[]{1, 0}}};
        }
        int[][][] iArr3 = dSCompiler.f107780g;
        int length = iArr3.length;
        int length2 = dSCompiler3.f107780g.length;
        int[][][] iArr4 = new int[length + length2][];
        System.arraycopy(iArr3, 0, iArr4, 0, length);
        int i5 = 0;
        while (i5 < length2) {
            ArrayList arrayList = new ArrayList();
            int[][] iArr5 = dSCompiler3.f107780g[i5];
            int length3 = iArr5.length;
            int i6 = i3;
            while (i6 < length3) {
                int[] iArr6 = iArr5[i6];
                int length4 = iArr6.length + i4;
                int[] iArr7 = new int[length4];
                iArr7[i3] = iArr6[i3];
                iArr7[1] = iArr6[1] + 1;
                int[] iArr8 = new int[i];
                int i7 = i - 1;
                iArr8[i7] = 1;
                iArr7[iArr6.length] = m67465g(i, i2, iArr, iArr8);
                int i8 = length2;
                int i9 = 2;
                while (i9 < iArr6.length) {
                    iArr7[i9] = m67464f(iArr6[i9], i, dSCompiler3.f107777d, i, i2, iArr);
                    i9++;
                    length = length;
                    i6 = i6;
                    iArr4 = iArr4;
                    iArr6 = iArr6;
                    length3 = length3;
                    iArr5 = iArr5;
                    arrayList = arrayList;
                }
                int i10 = i6;
                int i11 = length3;
                int[][] iArr9 = iArr5;
                ArrayList arrayList2 = arrayList;
                int i12 = length;
                int[][][] iArr10 = iArr4;
                int i13 = 2;
                Arrays.sort(iArr7, 2, length4);
                arrayList2.add(iArr7);
                int i14 = 2;
                int[] iArr11 = iArr6;
                while (i14 < iArr11.length) {
                    int length5 = iArr11.length;
                    int[] iArr12 = new int[length5];
                    iArr12[0] = iArr11[0];
                    iArr12[1] = iArr11[1];
                    int i15 = i13;
                    while (i15 < iArr11.length) {
                        int i16 = iArr11[i15];
                        int[][] iArr13 = dSCompiler3.f107777d;
                        int i17 = i15;
                        int[] iArr14 = iArr12;
                        int[] iArr15 = iArr11;
                        int i18 = length5;
                        int m67464f = m67464f(i16, i, iArr13, i, i2, iArr);
                        iArr14[i17] = m67464f;
                        if (i17 == i14) {
                            System.arraycopy(iArr2[m67464f], 0, iArr8, 0, i);
                            iArr8[i7] = iArr8[i7] + 1;
                            iArr14[i17] = m67465g(i, i2, iArr, iArr8);
                        }
                        i15 = i17 + 1;
                        iArr12 = iArr14;
                        length5 = i18;
                        iArr11 = iArr15;
                        i13 = 2;
                        dSCompiler3 = dSCompiler2;
                    }
                    int[] iArr16 = iArr12;
                    Arrays.sort(iArr16, i13, length5);
                    arrayList2.add(iArr16);
                    i14++;
                    dSCompiler3 = dSCompiler2;
                    iArr11 = iArr11;
                }
                i6 = i10 + 1;
                dSCompiler3 = dSCompiler2;
                arrayList = arrayList2;
                length2 = i8;
                length = i12;
                iArr4 = iArr10;
                length3 = i11;
                iArr5 = iArr9;
                i3 = 0;
                i4 = 1;
            }
            int i19 = length;
            int i20 = length2;
            int[][][] iArr17 = iArr4;
            ArrayList arrayList3 = arrayList;
            ArrayList arrayList4 = new ArrayList(arrayList3.size());
            for (int i21 = 0; i21 < arrayList3.size(); i21++) {
                int[] iArr18 = (int[]) arrayList3.get(i21);
                if (iArr18[0] > 0) {
                    for (int i22 = i21 + 1; i22 < arrayList3.size(); i22++) {
                        int[] iArr19 = (int[]) arrayList3.get(i22);
                        boolean z = iArr18.length == iArr19.length;
                        for (int i23 = 1; z && i23 < iArr18.length; i23++) {
                            z &= iArr18[i23] == iArr19[i23];
                        }
                        if (z) {
                            iArr18[0] = iArr18[0] + iArr19[0];
                            iArr19[0] = 0;
                        }
                    }
                    arrayList4.add(iArr18);
                }
            }
            iArr17[i19 + i5] = (int[][]) arrayList4.toArray(new int[arrayList4.size()]);
            i5++;
            dSCompiler3 = dSCompiler2;
            length2 = i20;
            length = i19;
            iArr4 = iArr17;
            i3 = 0;
            i4 = 1;
        }
        return iArr4;
    }

    /* renamed from: b */
    public static int[][] m67460b(int i, int i2, DSCompiler dSCompiler, DSCompiler dSCompiler2) {
        if (i == 0 || i2 == 0) {
            return (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 1, i);
        }
        int length = dSCompiler.f107777d.length;
        int length2 = dSCompiler2.f107777d.length;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, length + length2, i);
        for (int i3 = 0; i3 < length; i3++) {
            System.arraycopy(dSCompiler.f107777d[i3], 0, iArr[i3], 0, i - 1);
        }
        for (int i4 = 0; i4 < length2; i4++) {
            int i5 = length + i4;
            System.arraycopy(dSCompiler2.f107777d[i4], 0, iArr[i5], 0, i);
            int[] iArr2 = iArr[i5];
            int i6 = i - 1;
            iArr2[i6] = iArr2[i6] + 1;
        }
        return iArr;
    }

    /* renamed from: c */
    public static int[] m67461c(int i, int i2, DSCompiler dSCompiler, DSCompiler dSCompiler2) {
        if (i == 0 || i2 <= 1) {
            return new int[]{0};
        }
        int[] iArr = dSCompiler.f107778e;
        int length = iArr.length;
        int length2 = dSCompiler2.f107778e.length;
        int[] iArr2 = new int[length + length2];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        for (int i3 = 0; i3 < length2; i3++) {
            iArr2[length + i3] = dSCompiler.getSize() + dSCompiler2.f107778e[i3];
        }
        return iArr2;
    }

    /* renamed from: d */
    public static int[][][] m67462d(int i, int i2, DSCompiler dSCompiler, DSCompiler dSCompiler2, int[] iArr) {
        if (i == 0 || i2 == 0) {
            return new int[][][]{new int[][]{new int[]{1, 0, 0}}};
        }
        int[][][] iArr2 = dSCompiler.f107779f;
        int length = iArr2.length;
        int length2 = dSCompiler2.f107779f.length;
        int[][][] iArr3 = new int[length + length2][];
        System.arraycopy(iArr2, 0, iArr3, 0, length);
        for (int i3 = 0; i3 < length2; i3++) {
            int[][] iArr4 = dSCompiler2.f107779f[i3];
            ArrayList arrayList = new ArrayList(iArr4.length * 2);
            for (int i4 = 0; i4 < iArr4.length; i4++) {
                int[] iArr5 = iArr4[i4];
                arrayList.add(new int[]{iArr5[0], iArr[iArr5[1]], iArr5[2] + length});
                int[] iArr6 = iArr4[i4];
                arrayList.add(new int[]{iArr6[0], iArr6[1] + length, iArr[iArr6[2]]});
            }
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                int[] iArr7 = (int[]) arrayList.get(i5);
                if (iArr7[0] > 0) {
                    for (int i6 = i5 + 1; i6 < arrayList.size(); i6++) {
                        int[] iArr8 = (int[]) arrayList.get(i6);
                        if (iArr7[1] == iArr8[1] && iArr7[2] == iArr8[2]) {
                            iArr7[0] = iArr7[0] + iArr8[0];
                            iArr8[0] = 0;
                        }
                    }
                    arrayList2.add(iArr7);
                }
            }
            iArr3[length + i3] = (int[][]) arrayList2.toArray(new int[arrayList2.size()]);
        }
        return iArr3;
    }

    /* renamed from: e */
    public static int[][] m67463e(int i, int i2, DSCompiler dSCompiler) {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i + 1, i2 + 1);
        int i3 = 0;
        if (i == 0) {
            Arrays.fill(iArr[0], 1);
        } else {
            System.arraycopy(dSCompiler.f107776c, 0, iArr, 0, i);
            iArr[i][0] = 1;
            while (i3 < i2) {
                int[] iArr2 = iArr[i];
                int i4 = i3 + 1;
                iArr2[i4] = iArr2[i3] + iArr[i - 1][i4];
                i3 = i4;
            }
        }
        return iArr;
    }

    /* renamed from: f */
    public static int m67464f(int i, int i2, int[][] iArr, int i3, int i4, int[][] iArr2) throws NumberIsTooLargeException {
        int[] iArr3 = new int[i3];
        System.arraycopy(iArr[i], 0, iArr3, 0, FastMath.min(i2, i3));
        return m67465g(i3, i4, iArr2, iArr3);
    }

    /* renamed from: g */
    public static int m67465g(int i, int i2, int[][] iArr, int... iArr2) throws NumberIsTooLargeException {
        int i3 = 0;
        int i4 = i2;
        int i5 = 0;
        for (int i6 = i - 1; i6 >= 0; i6--) {
            int i7 = iArr2[i6];
            i5 += i7;
            if (i5 > i2) {
                throw new NumberIsTooLargeException(Integer.valueOf(i5), Integer.valueOf(i2), true);
            }
            while (true) {
                int i8 = i7 - 1;
                if (i7 > 0) {
                    i3 += iArr[i6][i4];
                    i7 = i8;
                    i4--;
                }
            }
        }
        return i3;
    }

    public static DSCompiler getCompiler(int i, int i2) throws NumberIsTooLargeException {
        DSCompiler dSCompiler;
        DSCompiler[][] dSCompilerArr = f107773h.get();
        if (dSCompilerArr != null && dSCompilerArr.length > i) {
            DSCompiler[] dSCompilerArr2 = dSCompilerArr[i];
            if (dSCompilerArr2.length > i2 && (dSCompiler = dSCompilerArr2[i2]) != null) {
                return dSCompiler;
            }
        }
        DSCompiler[][] dSCompilerArr3 = (DSCompiler[][]) Array.newInstance((Class<?>) DSCompiler.class, FastMath.max(i, dSCompilerArr == null ? 0 : dSCompilerArr.length) + 1, FastMath.max(i2, dSCompilerArr == null ? 0 : dSCompilerArr[0].length) + 1);
        if (dSCompilerArr != null) {
            for (int i3 = 0; i3 < dSCompilerArr.length; i3++) {
                DSCompiler[] dSCompilerArr4 = dSCompilerArr[i3];
                System.arraycopy(dSCompilerArr4, 0, dSCompilerArr3[i3], 0, dSCompilerArr4.length);
            }
        }
        for (int i4 = 0; i4 <= i + i2; i4++) {
            int max = FastMath.max(0, i4 - i);
            while (max <= FastMath.min(i2, i4)) {
                int i5 = i4 - max;
                DSCompiler[] dSCompilerArr5 = dSCompilerArr3[i5];
                if (dSCompilerArr5[max] == null) {
                    dSCompilerArr5[max] = new DSCompiler(i5, max, i5 == 0 ? null : dSCompilerArr3[i5 - 1][max], max != 0 ? dSCompilerArr5[max - 1] : null);
                }
                max++;
            }
        }
        cyi.m53538a(f107773h, dSCompilerArr, dSCompilerArr3);
        return dSCompilerArr3[i][i2];
    }

    public void acos(double[] dArr, int i, double[] dArr2, int i2) {
        double d;
        double d2;
        int i3;
        DSCompiler dSCompiler = this;
        double[] dArr3 = new double[dSCompiler.f107775b + 1];
        double d3 = dArr[i];
        dArr3[0] = FastMath.acos(d3);
        int i4 = dSCompiler.f107775b;
        if (i4 > 0) {
            double[] dArr4 = new double[i4];
            dArr4[0] = -1.0d;
            double d4 = d3 * d3;
            double d5 = 1.0d / (1.0d - d4);
            double sqrt = FastMath.sqrt(d5);
            dArr3[1] = dArr4[0] * sqrt;
            int i5 = 2;
            int i6 = 2;
            while (i6 <= dSCompiler.f107775b) {
                int i7 = i6 - 1;
                dArr4[i7] = i7 * dArr4[i6 - 2];
                double d6 = 0.0d;
                while (i7 >= 0) {
                    double d7 = (d6 * d4) + dArr4[i7];
                    if (i7 > i5) {
                        int i8 = i7 - 1;
                        d = d7;
                        d2 = d4;
                        dArr4[i7 - 2] = (i8 * dArr4[i8]) + (((i6 * 2) - i7) * dArr4[i7 - 3]);
                        i3 = 2;
                    } else {
                        d = d7;
                        d2 = d4;
                        i3 = i5;
                        if (i7 == i3) {
                            dArr4[0] = dArr4[1];
                            i7 -= 2;
                            i5 = i3;
                            d6 = d;
                            d4 = d2;
                        }
                    }
                    i7 -= 2;
                    i5 = i3;
                    d6 = d;
                    d4 = d2;
                }
                double d8 = d4;
                int i9 = i5;
                if ((i6 & 1) == 0) {
                    d6 *= d3;
                }
                sqrt *= d5;
                dArr3[i6] = d6 * sqrt;
                i6++;
                i5 = i9;
                d4 = d8;
                dSCompiler = this;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void acosh(double[] dArr, int i, double[] dArr2, int i2) {
        double d;
        double d2;
        int i3;
        DSCompiler dSCompiler = this;
        double[] dArr3 = new double[dSCompiler.f107775b + 1];
        double d3 = dArr[i];
        dArr3[0] = FastMath.acosh(d3);
        int i4 = dSCompiler.f107775b;
        if (i4 > 0) {
            double[] dArr4 = new double[i4];
            dArr4[0] = 1.0d;
            double d4 = d3 * d3;
            double d5 = 1.0d / (d4 - 1.0d);
            double sqrt = FastMath.sqrt(d5);
            dArr3[1] = dArr4[0] * sqrt;
            int i5 = 2;
            int i6 = 2;
            while (i6 <= dSCompiler.f107775b) {
                int i7 = i6 - 1;
                double[] dArr5 = dArr3;
                dArr4[i7] = (1 - i6) * dArr4[i6 - 2];
                double d6 = 0.0d;
                while (i7 >= 0) {
                    double d7 = (d6 * d4) + dArr4[i7];
                    if (i7 > i5) {
                        d = d7;
                        d2 = d4;
                        dArr4[i7 - 2] = ((1 - i7) * dArr4[i7 - 1]) + ((i7 - (i6 * 2)) * dArr4[i7 - 3]);
                        i3 = 2;
                    } else {
                        d = d7;
                        d2 = d4;
                        i3 = i5;
                        if (i7 == i3) {
                            dArr4[0] = -dArr4[1];
                            i7 -= 2;
                            i5 = i3;
                            d6 = d;
                            d4 = d2;
                        }
                    }
                    i7 -= 2;
                    i5 = i3;
                    d6 = d;
                    d4 = d2;
                }
                double d8 = d4;
                int i8 = i5;
                if ((i6 & 1) == 0) {
                    d6 *= d3;
                }
                sqrt *= d5;
                dArr5[i6] = d6 * sqrt;
                i6++;
                i5 = i8;
                dArr3 = dArr5;
                d4 = d8;
                dSCompiler = this;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void add(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        for (int i4 = 0; i4 < getSize(); i4++) {
            dArr3[i3 + i4] = dArr[i + i4] + dArr2[i2 + i4];
        }
    }

    public void asin(double[] dArr, int i, double[] dArr2, int i2) {
        double d;
        double d2;
        int i3;
        DSCompiler dSCompiler = this;
        double[] dArr3 = new double[dSCompiler.f107775b + 1];
        double d3 = dArr[i];
        dArr3[0] = FastMath.asin(d3);
        int i4 = dSCompiler.f107775b;
        if (i4 > 0) {
            double[] dArr4 = new double[i4];
            dArr4[0] = 1.0d;
            double d4 = d3 * d3;
            double d5 = 1.0d / (1.0d - d4);
            double sqrt = FastMath.sqrt(d5);
            dArr3[1] = dArr4[0] * sqrt;
            int i5 = 2;
            int i6 = 2;
            while (i6 <= dSCompiler.f107775b) {
                int i7 = i6 - 1;
                dArr4[i7] = i7 * dArr4[i6 - 2];
                double d6 = 0.0d;
                while (i7 >= 0) {
                    double d7 = (d6 * d4) + dArr4[i7];
                    if (i7 > i5) {
                        int i8 = i7 - 1;
                        d = d7;
                        d2 = d4;
                        dArr4[i7 - 2] = (i8 * dArr4[i8]) + (((i6 * 2) - i7) * dArr4[i7 - 3]);
                        i3 = 2;
                    } else {
                        d = d7;
                        d2 = d4;
                        i3 = i5;
                        if (i7 == i3) {
                            dArr4[0] = dArr4[1];
                            i7 -= 2;
                            i5 = i3;
                            d6 = d;
                            d4 = d2;
                        }
                    }
                    i7 -= 2;
                    i5 = i3;
                    d6 = d;
                    d4 = d2;
                }
                double d8 = d4;
                int i9 = i5;
                if ((i6 & 1) == 0) {
                    d6 *= d3;
                }
                sqrt *= d5;
                dArr3[i6] = d6 * sqrt;
                i6++;
                i5 = i9;
                d4 = d8;
                dSCompiler = this;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void asinh(double[] dArr, int i, double[] dArr2, int i2) {
        double d;
        double d2;
        int i3;
        DSCompiler dSCompiler = this;
        double[] dArr3 = new double[dSCompiler.f107775b + 1];
        double d3 = dArr[i];
        dArr3[0] = FastMath.asinh(d3);
        int i4 = dSCompiler.f107775b;
        if (i4 > 0) {
            double[] dArr4 = new double[i4];
            dArr4[0] = 1.0d;
            double d4 = d3 * d3;
            double d5 = 1.0d / (d4 + 1.0d);
            double sqrt = FastMath.sqrt(d5);
            dArr3[1] = dArr4[0] * sqrt;
            int i5 = 2;
            int i6 = 2;
            while (i6 <= dSCompiler.f107775b) {
                int i7 = i6 - 1;
                double[] dArr5 = dArr3;
                dArr4[i7] = (1 - i6) * dArr4[i6 - 2];
                double d6 = 0.0d;
                while (i7 >= 0) {
                    double d7 = (d6 * d4) + dArr4[i7];
                    if (i7 > i5) {
                        int i8 = i7 - 1;
                        d = d7;
                        d2 = d4;
                        dArr4[i7 - 2] = (i8 * dArr4[i8]) + ((i7 - (i6 * 2)) * dArr4[i7 - 3]);
                        i3 = 2;
                    } else {
                        d = d7;
                        d2 = d4;
                        i3 = i5;
                        if (i7 == i3) {
                            dArr4[0] = dArr4[1];
                            i7 -= 2;
                            i5 = i3;
                            d6 = d;
                            d4 = d2;
                        }
                    }
                    i7 -= 2;
                    i5 = i3;
                    d6 = d;
                    d4 = d2;
                }
                double d8 = d4;
                int i9 = i5;
                if ((i6 & 1) == 0) {
                    d6 *= d3;
                }
                sqrt *= d5;
                dArr5[i6] = d6 * sqrt;
                i6++;
                i5 = i9;
                dArr3 = dArr5;
                d4 = d8;
                dSCompiler = this;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void atan(double[] dArr, int i, double[] dArr2, int i2) {
        double d;
        int i3;
        double d2;
        DSCompiler dSCompiler = this;
        double[] dArr3 = new double[dSCompiler.f107775b + 1];
        double d3 = dArr[i];
        dArr3[0] = FastMath.atan(d3);
        int i4 = dSCompiler.f107775b;
        if (i4 > 0) {
            double[] dArr4 = new double[i4];
            dArr4[0] = 1.0d;
            double d4 = d3 * d3;
            double d5 = 1.0d / (d4 + 1.0d);
            dArr3[1] = 1.0d * d5;
            int i5 = 2;
            int i6 = 2;
            double d6 = d5;
            while (i6 <= dSCompiler.f107775b) {
                int i7 = i6 - 1;
                double[] dArr5 = dArr3;
                dArr4[i7] = (-i6) * dArr4[i6 - 2];
                double d7 = 0.0d;
                while (i7 >= 0) {
                    double d8 = (d7 * d4) + dArr4[i7];
                    if (i7 > i5) {
                        int i8 = i7 - 1;
                        d = d8;
                        d2 = d4;
                        dArr4[i7 - 2] = (i8 * dArr4[i8]) + ((i8 - (i6 * 2)) * dArr4[i7 - 3]);
                        i3 = 2;
                    } else {
                        d = d8;
                        i3 = i5;
                        d2 = d4;
                        if (i7 == i3) {
                            dArr4[0] = dArr4[1];
                            i7 -= 2;
                            i5 = i3;
                            d7 = d;
                            d4 = d2;
                        }
                    }
                    i7 -= 2;
                    i5 = i3;
                    d7 = d;
                    d4 = d2;
                }
                int i9 = i5;
                double d9 = d4;
                if ((i6 & 1) == 0) {
                    d7 *= d3;
                }
                d6 *= d5;
                dArr5[i6] = d7 * d6;
                i6++;
                dArr3 = dArr5;
                d4 = d9;
                i5 = i9;
                dSCompiler = this;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void atan2(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        double[] dArr4 = new double[getSize()];
        multiply(dArr2, i2, dArr2, i2, dArr4, 0);
        int size = getSize();
        double[] dArr5 = new double[size];
        multiply(dArr, i, dArr, i, dArr5, 0);
        add(dArr4, 0, dArr5, 0, dArr5, 0);
        rootN(dArr5, 0, 2, dArr4, 0);
        if (dArr2[i2] >= 0.0d) {
            add(dArr4, 0, dArr2, i2, dArr5, 0);
            divide(dArr, i, dArr5, 0, dArr4, 0);
            atan(dArr4, 0, dArr5, 0);
            for (int i4 = 0; i4 < size; i4++) {
                dArr3[i3 + i4] = dArr5[i4] * 2.0d;
            }
        } else {
            subtract(dArr4, 0, dArr2, i2, dArr5, 0);
            divide(dArr, i, dArr5, 0, dArr4, 0);
            atan(dArr4, 0, dArr5, 0);
            double d = dArr5[0];
            dArr3[i3] = (d <= 0.0d ? -3.141592653589793d : 3.141592653589793d) - (d * 2.0d);
            for (int i5 = 1; i5 < size; i5++) {
                dArr3[i3 + i5] = dArr5[i5] * (-2.0d);
            }
        }
        dArr3[i3] = FastMath.atan2(dArr[i], dArr2[i2]);
    }

    public void atanh(double[] dArr, int i, double[] dArr2, int i2) {
        double d;
        int i3;
        int i4;
        DSCompiler dSCompiler = this;
        double[] dArr3 = new double[dSCompiler.f107775b + 1];
        double d2 = dArr[i];
        dArr3[0] = FastMath.atanh(d2);
        int i5 = dSCompiler.f107775b;
        if (i5 > 0) {
            double[] dArr4 = new double[i5];
            dArr4[0] = 1.0d;
            double d3 = d2 * d2;
            double d4 = 1.0d / (1.0d - d3);
            dArr3[1] = 1.0d * d4;
            int i6 = 2;
            int i7 = 2;
            double d5 = d4;
            while (i7 <= dSCompiler.f107775b) {
                int i8 = i7 - 1;
                dArr4[i8] = i7 * dArr4[i7 - 2];
                double d6 = 0.0d;
                while (i8 >= 0) {
                    double d7 = (d6 * d3) + dArr4[i8];
                    if (i8 > i6) {
                        int i9 = i8 - 1;
                        d = d7;
                        i4 = i7;
                        dArr4[i8 - 2] = (i9 * dArr4[i9]) + ((((i7 * 2) - i8) + 1) * dArr4[i8 - 3]);
                        i3 = 2;
                    } else {
                        d = d7;
                        i3 = i6;
                        i4 = i7;
                        if (i8 == i3) {
                            dArr4[0] = dArr4[1];
                            i8 -= 2;
                            i6 = i3;
                            i7 = i4;
                            d6 = d;
                        }
                    }
                    i8 -= 2;
                    i6 = i3;
                    i7 = i4;
                    d6 = d;
                }
                int i10 = i6;
                int i11 = i7;
                if ((i11 & 1) == 0) {
                    d6 *= d2;
                }
                d5 *= d4;
                dArr3[i11] = d6 * d5;
                i6 = i10;
                dSCompiler = this;
                i7 = i11 + 1;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void checkCompatibility(DSCompiler dSCompiler) throws DimensionMismatchException {
        if (this.f107774a != dSCompiler.f107774a) {
            throw new DimensionMismatchException(this.f107774a, dSCompiler.f107774a);
        }
        if (this.f107775b != dSCompiler.f107775b) {
            throw new DimensionMismatchException(this.f107775b, dSCompiler.f107775b);
        }
    }

    public void compose(double[] dArr, int i, double[] dArr2, double[] dArr3, int i2) {
        int i3 = 0;
        while (true) {
            int[][][] iArr = this.f107780g;
            if (i3 >= iArr.length) {
                return;
            }
            double d = 0.0d;
            for (int[] iArr2 : iArr[i3]) {
                double d2 = iArr2[0] * dArr2[iArr2[1]];
                for (int i4 = 2; i4 < iArr2.length; i4++) {
                    d2 *= dArr[iArr2[i4] + i];
                }
                d += d2;
            }
            dArr3[i2 + i3] = d;
            i3++;
        }
    }

    public void cos(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.f107775b + 1];
        dArr3[0] = FastMath.cos(dArr[i]);
        if (this.f107775b > 0) {
            dArr3[1] = -FastMath.sin(dArr[i]);
            for (int i3 = 2; i3 <= this.f107775b; i3++) {
                dArr3[i3] = -dArr3[i3 - 2];
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void cosh(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.f107775b + 1];
        dArr3[0] = FastMath.cosh(dArr[i]);
        if (this.f107775b > 0) {
            dArr3[1] = FastMath.sinh(dArr[i]);
            for (int i3 = 2; i3 <= this.f107775b; i3++) {
                dArr3[i3] = dArr3[i3 - 2];
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void divide(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        double[] dArr4 = new double[getSize()];
        pow(dArr2, i, -1, dArr4, 0);
        multiply(dArr, i, dArr4, 0, dArr3, i3);
    }

    public void exp(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.f107775b + 1];
        Arrays.fill(dArr3, FastMath.exp(dArr[i]));
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void expm1(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.f107775b + 1];
        dArr3[0] = FastMath.expm1(dArr[i]);
        Arrays.fill(dArr3, 1, this.f107775b + 1, FastMath.exp(dArr[i]));
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public int getFreeParameters() {
        return this.f107774a;
    }

    public int getOrder() {
        return this.f107775b;
    }

    public int getPartialDerivativeIndex(int... iArr) throws DimensionMismatchException, NumberIsTooLargeException {
        if (iArr.length == getFreeParameters()) {
            return m67465g(this.f107774a, this.f107775b, this.f107776c, iArr);
        }
        throw new DimensionMismatchException(iArr.length, getFreeParameters());
    }

    public int[] getPartialDerivativeOrders(int i) {
        return this.f107777d[i];
    }

    public int getSize() {
        return this.f107776c[this.f107774a][this.f107775b];
    }

    public void linearCombination(double d, double[] dArr, int i, double d2, double[] dArr2, int i2, double[] dArr3, int i3) {
        for (int i4 = 0; i4 < getSize(); i4++) {
            dArr3[i3 + i4] = MathArrays.linearCombination(d, dArr[i + i4], d2, dArr2[i2 + i4]);
        }
    }

    public void log(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.f107775b + 1];
        dArr3[0] = FastMath.log(dArr[i]);
        if (this.f107775b > 0) {
            double d = 1.0d / dArr[i];
            double d2 = d;
            for (int i3 = 1; i3 <= this.f107775b; i3++) {
                dArr3[i3] = d2;
                d2 *= (-i3) * d;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void log10(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.f107775b + 1];
        dArr3[0] = FastMath.log10(dArr[i]);
        if (this.f107775b > 0) {
            double d = 1.0d / dArr[i];
            double log = d / FastMath.log(10.0d);
            for (int i3 = 1; i3 <= this.f107775b; i3++) {
                dArr3[i3] = log;
                log *= (-i3) * d;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void log1p(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.f107775b + 1];
        dArr3[0] = FastMath.log1p(dArr[i]);
        if (this.f107775b > 0) {
            double d = 1.0d / (dArr[i] + 1.0d);
            double d2 = d;
            for (int i3 = 1; i3 <= this.f107775b; i3++) {
                dArr3[i3] = d2;
                d2 *= (-i3) * d;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void multiply(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        int i4 = 0;
        while (true) {
            int[][][] iArr = this.f107779f;
            if (i4 >= iArr.length) {
                return;
            }
            double d = 0.0d;
            for (int[] iArr2 : iArr[i4]) {
                d += iArr2[0] * dArr[iArr2[1] + i] * dArr2[i2 + iArr2[2]];
            }
            dArr3[i3 + i4] = d;
            i4++;
        }
    }

    public void pow(double d, double[] dArr, int i, double[] dArr2, int i2) {
        int i3 = 1;
        int i4 = this.f107775b + 1;
        double[] dArr3 = new double[i4];
        if (d == 0.0d) {
            double d2 = dArr[i];
            if (d2 == 0.0d) {
                dArr3[0] = 1.0d;
                double d3 = Double.POSITIVE_INFINITY;
                while (i3 < i4) {
                    d3 = -d3;
                    dArr3[i3] = d3;
                    i3++;
                }
            } else if (d2 < 0.0d) {
                Arrays.fill(dArr3, Double.NaN);
            }
        } else {
            dArr3[0] = FastMath.pow(d, dArr[i]);
            double log = FastMath.log(d);
            while (i3 < i4) {
                dArr3[i3] = dArr3[i3 - 1] * log;
                i3++;
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void remainder(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        double IEEEremainder = FastMath.IEEEremainder(dArr[i], dArr2[i2]);
        double rint = FastMath.rint((dArr[i] - IEEEremainder) / dArr2[i2]);
        dArr3[i3] = IEEEremainder;
        for (int i4 = 1; i4 < getSize(); i4++) {
            dArr3[i3 + i4] = dArr[i + i4] - (dArr2[i2 + i4] * rint);
        }
    }

    public void rootN(double[] dArr, int i, int i2, double[] dArr2, int i3) {
        double d;
        double pow;
        double d2;
        double[] dArr3 = new double[this.f107775b + 1];
        if (i2 == 2) {
            double sqrt = FastMath.sqrt(dArr[i]);
            dArr3[0] = sqrt;
            d2 = 0.5d / sqrt;
        } else {
            if (i2 == 3) {
                pow = FastMath.cbrt(dArr[i]);
                dArr3[0] = pow;
                d = 3.0d * pow;
            } else {
                d = i2;
                double pow2 = FastMath.pow(dArr[i], 1.0d / d);
                dArr3[0] = pow2;
                pow = FastMath.pow(pow2, i2 - 1);
            }
            d2 = 1.0d / (d * pow);
        }
        double d3 = 1.0d / i2;
        double d4 = 1.0d / dArr[i];
        for (int i4 = 1; i4 <= this.f107775b; i4++) {
            dArr3[i4] = d2;
            d2 *= (d3 - i4) * d4;
        }
        compose(dArr, i, dArr3, dArr2, i3);
    }

    public void sin(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.f107775b + 1];
        dArr3[0] = FastMath.sin(dArr[i]);
        if (this.f107775b > 0) {
            dArr3[1] = FastMath.cos(dArr[i]);
            for (int i3 = 2; i3 <= this.f107775b; i3++) {
                dArr3[i3] = -dArr3[i3 - 2];
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void sinh(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3 = new double[this.f107775b + 1];
        dArr3[0] = FastMath.sinh(dArr[i]);
        if (this.f107775b > 0) {
            dArr3[1] = FastMath.cosh(dArr[i]);
            for (int i3 = 2; i3 <= this.f107775b; i3++) {
                dArr3[i3] = dArr3[i3 - 2];
            }
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void subtract(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        for (int i4 = 0; i4 < getSize(); i4++) {
            dArr3[i3 + i4] = dArr[i + i4] - dArr2[i2 + i4];
        }
    }

    public void tan(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3;
        int i3;
        double d;
        boolean z;
        double[] dArr4 = new double[this.f107775b + 1];
        double tan = FastMath.tan(dArr[i]);
        boolean z2 = false;
        dArr4[0] = tan;
        int i4 = this.f107775b;
        if (i4 > 0) {
            int i5 = 2;
            double[] dArr5 = new double[i4 + 2];
            dArr5[1] = 1.0d;
            double d2 = tan * tan;
            int i6 = 1;
            while (i6 <= this.f107775b) {
                int i7 = i6 + 1;
                dArr5[i7] = i6 * dArr5[i6];
                double d3 = 0.0d;
                int i8 = i7;
                while (i8 >= 0) {
                    d3 = (d3 * d2) + dArr5[i8];
                    if (i8 > i5) {
                        int i9 = i8 - 1;
                        dArr3 = dArr4;
                        double d4 = i9 * dArr5[i9];
                        int i10 = i8 - 3;
                        d = d2;
                        dArr5[i8 - 2] = d4 + (i10 * dArr5[i10]);
                        i3 = 2;
                    } else {
                        dArr3 = dArr4;
                        i3 = i5;
                        d = d2;
                        if (i8 == i3) {
                            z = false;
                            dArr5[0] = dArr5[1];
                            i8 -= 2;
                            i5 = i3;
                            z2 = z;
                            dArr4 = dArr3;
                            d2 = d;
                        }
                    }
                    z = false;
                    i8 -= 2;
                    i5 = i3;
                    z2 = z;
                    dArr4 = dArr3;
                    d2 = d;
                }
                double[] dArr6 = dArr4;
                double d5 = d2;
                boolean z3 = z2;
                int i11 = i5;
                if ((i6 & 1) == 0) {
                    d3 *= tan;
                }
                dArr6[i6] = d3;
                i5 = i11;
                z2 = z3;
                i6 = i7;
                dArr4 = dArr6;
                d2 = d5;
            }
        }
        compose(dArr, i, dArr4, dArr2, i2);
    }

    public void tanh(double[] dArr, int i, double[] dArr2, int i2) {
        double[] dArr3;
        int i3;
        double d;
        boolean z;
        double[] dArr4 = new double[this.f107775b + 1];
        double tanh = FastMath.tanh(dArr[i]);
        boolean z2 = false;
        dArr4[0] = tanh;
        int i4 = this.f107775b;
        if (i4 > 0) {
            int i5 = 2;
            double[] dArr5 = new double[i4 + 2];
            dArr5[1] = 1.0d;
            double d2 = tanh * tanh;
            int i6 = 1;
            while (i6 <= this.f107775b) {
                int i7 = i6 + 1;
                dArr5[i7] = (-i6) * dArr5[i6];
                double d3 = 0.0d;
                int i8 = i7;
                while (i8 >= 0) {
                    d3 = (d3 * d2) + dArr5[i8];
                    if (i8 > i5) {
                        int i9 = i8 - 1;
                        dArr3 = dArr4;
                        double d4 = i9 * dArr5[i9];
                        int i10 = i8 - 3;
                        d = d2;
                        dArr5[i8 - 2] = d4 - (i10 * dArr5[i10]);
                        i3 = 2;
                    } else {
                        dArr3 = dArr4;
                        i3 = i5;
                        d = d2;
                        if (i8 == i3) {
                            z = false;
                            dArr5[0] = dArr5[1];
                            i8 -= 2;
                            i5 = i3;
                            z2 = z;
                            dArr4 = dArr3;
                            d2 = d;
                        }
                    }
                    z = false;
                    i8 -= 2;
                    i5 = i3;
                    z2 = z;
                    dArr4 = dArr3;
                    d2 = d;
                }
                double[] dArr6 = dArr4;
                double d5 = d2;
                boolean z3 = z2;
                int i11 = i5;
                if ((i6 & 1) == 0) {
                    d3 *= tanh;
                }
                dArr6[i6] = d3;
                i5 = i11;
                z2 = z3;
                i6 = i7;
                dArr4 = dArr6;
                d2 = d5;
            }
        }
        compose(dArr, i, dArr4, dArr2, i2);
    }

    public double taylor(double[] dArr, int i, double... dArr2) throws MathArithmeticException {
        double d = 0.0d;
        for (int size = getSize() - 1; size >= 0; size--) {
            int[] partialDerivativeOrders = getPartialDerivativeOrders(size);
            double d2 = dArr[i + size];
            for (int i2 = 0; i2 < partialDerivativeOrders.length; i2++) {
                int i3 = partialDerivativeOrders[i2];
                if (i3 > 0) {
                    try {
                        d2 *= FastMath.pow(dArr2[i2], i3) / CombinatoricsUtils.factorial(partialDerivativeOrders[i2]);
                    } catch (NotPositiveException e) {
                        throw new MathInternalError(e);
                    }
                }
            }
            d += d2;
        }
        return d;
    }

    public void linearCombination(double d, double[] dArr, int i, double d2, double[] dArr2, int i2, double d3, double[] dArr3, int i3, double[] dArr4, int i4) {
        for (int i5 = 0; i5 < getSize(); i5++) {
            dArr4[i4 + i5] = MathArrays.linearCombination(d, dArr[i + i5], d2, dArr2[i2 + i5], d3, dArr3[i3 + i5]);
        }
    }

    public void linearCombination(double d, double[] dArr, int i, double d2, double[] dArr2, int i2, double d3, double[] dArr3, int i3, double d4, double[] dArr4, int i4, double[] dArr5, int i5) {
        for (int i6 = 0; i6 < getSize(); i6++) {
            dArr5[i5 + i6] = MathArrays.linearCombination(d, dArr[i + i6], d2, dArr2[i2 + i6], d3, dArr3[i3 + i6], d4, dArr4[i4 + i6]);
        }
    }

    public void pow(double[] dArr, int i, double d, double[] dArr2, int i2) {
        int i3 = this.f107775b;
        double[] dArr3 = new double[i3 + 1];
        double pow = FastMath.pow(dArr[i], d - i3);
        for (int i4 = this.f107775b; i4 > 0; i4--) {
            dArr3[i4] = pow;
            pow *= dArr[i];
        }
        dArr3[0] = pow;
        double d2 = d;
        for (int i5 = 1; i5 <= this.f107775b; i5++) {
            dArr3[i5] = dArr3[i5] * d2;
            d2 *= d - i5;
        }
        compose(dArr, i, dArr3, dArr2, i2);
    }

    public void pow(double[] dArr, int i, int i2, double[] dArr2, int i3) {
        if (i2 == 0) {
            dArr2[i3] = 1.0d;
            Arrays.fill(dArr2, i3 + 1, i3 + getSize(), 0.0d);
            return;
        }
        int i4 = this.f107775b;
        double[] dArr3 = new double[i4 + 1];
        if (i2 > 0) {
            int min = FastMath.min(i4, i2);
            double pow = FastMath.pow(dArr[i], i2 - min);
            while (min > 0) {
                dArr3[min] = pow;
                pow *= dArr[i];
                min--;
            }
            dArr3[0] = pow;
        } else {
            double d = 1.0d / dArr[i];
            double pow2 = FastMath.pow(d, -i2);
            for (int i5 = 0; i5 <= this.f107775b; i5++) {
                dArr3[i5] = pow2;
                pow2 *= d;
            }
        }
        double d2 = i2;
        for (int i6 = 1; i6 <= this.f107775b; i6++) {
            dArr3[i6] = dArr3[i6] * d2;
            d2 *= i2 - i6;
        }
        compose(dArr, i, dArr3, dArr2, i3);
    }

    public void pow(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        double[] dArr4 = new double[getSize()];
        log(dArr, i, dArr4, 0);
        double[] dArr5 = new double[getSize()];
        multiply(dArr4, 0, dArr2, i2, dArr5, 0);
        exp(dArr5, 0, dArr3, i3);
    }
}
