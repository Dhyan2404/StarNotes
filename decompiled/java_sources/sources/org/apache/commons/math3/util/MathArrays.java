package org.apache.commons.math3.util;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.TreeSet;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.distribution.UniformIntegerDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NotANumberException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;

/* loaded from: classes12.dex */
public class MathArrays {

    /* loaded from: classes12.dex */
    public interface Function {
        double evaluate(double[] dArr);

        double evaluate(double[] dArr, int i, int i2);
    }

    /* loaded from: classes12.dex */
    public enum OrderDirection {
        INCREASING,
        DECREASING
    }

    /* loaded from: classes12.dex */
    public enum Position {
        HEAD,
        TAIL
    }

    /* renamed from: org.apache.commons.math3.util.MathArrays$a */
    /* loaded from: classes12.dex */
    public static class C19297a implements Comparator<C19300d> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C19300d c19300d, C19300d c19300d2) {
            return Double.compare(c19300d.m68228a(), c19300d2.m68228a());
        }
    }

    /* renamed from: org.apache.commons.math3.util.MathArrays$b */
    /* loaded from: classes12.dex */
    public static class C19298b implements Comparator<C19300d> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C19300d c19300d, C19300d c19300d2) {
            return Double.compare(c19300d2.m68228a(), c19300d.m68228a());
        }
    }

    /* renamed from: org.apache.commons.math3.util.MathArrays$c */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19299c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f109910a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f109911b;

        static {
            int[] iArr = new int[Position.values().length];
            f109911b = iArr;
            try {
                iArr[Position.TAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f109911b[Position.HEAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[OrderDirection.values().length];
            f109910a = iArr2;
            try {
                iArr2[OrderDirection.INCREASING.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f109910a[OrderDirection.DECREASING.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: org.apache.commons.math3.util.MathArrays$d */
    /* loaded from: classes12.dex */
    public static class C19300d {

        /* renamed from: a */
        public final double f109912a;

        /* renamed from: b */
        public final int f109913b;

        public C19300d(double d, int i) {
            this.f109912a = d;
            this.f109913b = i;
        }

        /* renamed from: a */
        public double m68228a() {
            return this.f109912a;
        }

        /* renamed from: b */
        public int m68229b() {
            return this.f109913b;
        }
    }

    public static <T> T[] buildArray(Field<T> field, int i) {
        T[] tArr = (T[]) ((Object[]) Array.newInstance(field.getRuntimeClass(), i));
        Arrays.fill(tArr, field.getZero());
        return tArr;
    }

    public static boolean checkEqualLength(double[] dArr, double[] dArr2, boolean z) {
        if (dArr.length == dArr2.length) {
            return true;
        }
        if (z) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        return false;
    }

    public static void checkNonNegative(long[] jArr) throws NotPositiveException {
        for (int i = 0; i < jArr.length; i++) {
            if (jArr[i] < 0) {
                throw new NotPositiveException(Long.valueOf(jArr[i]));
            }
        }
    }

    public static void checkNotNaN(double[] dArr) throws NotANumberException {
        for (double d : dArr) {
            if (Double.isNaN(d)) {
                throw new NotANumberException();
            }
        }
    }

    public static boolean checkOrder(double[] dArr, OrderDirection orderDirection, boolean z, boolean z2) throws NonMonotonicSequenceException {
        double d = dArr[0];
        int length = dArr.length;
        int i = 1;
        while (i < length) {
            int i2 = C19299c.f109910a[orderDirection.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new MathInternalError();
                }
                if (z) {
                    if (dArr[i] >= d) {
                        break;
                    }
                    d = dArr[i];
                    i++;
                } else {
                    if (dArr[i] > d) {
                        break;
                    }
                    d = dArr[i];
                    i++;
                }
            } else if (z) {
                if (dArr[i] <= d) {
                    break;
                }
                d = dArr[i];
                i++;
            } else {
                if (dArr[i] < d) {
                    break;
                }
                d = dArr[i];
                i++;
            }
        }
        if (i == length) {
            return true;
        }
        if (z2) {
            throw new NonMonotonicSequenceException(Double.valueOf(dArr[i]), Double.valueOf(d), i, orderDirection, z);
        }
        return false;
    }

    public static void checkPositive(double[] dArr) throws NotStrictlyPositiveException {
        for (int i = 0; i < dArr.length; i++) {
            if (dArr[i] <= 0.0d) {
                throw new NotStrictlyPositiveException(Double.valueOf(dArr[i]));
            }
        }
    }

    public static void checkRectangular(long[][] jArr) throws NullArgumentException, DimensionMismatchException {
        MathUtils.checkNotNull(jArr);
        for (int i = 1; i < jArr.length; i++) {
            if (jArr[i].length != jArr[0].length) {
                throw new DimensionMismatchException(LocalizedFormats.DIFFERENT_ROWS_LENGTHS, jArr[i].length, jArr[0].length);
            }
        }
    }

    public static double[] concatenate(double[]... dArr) {
        int i = 0;
        for (double[] dArr2 : dArr) {
            i += dArr2.length;
        }
        double[] dArr3 = new double[i];
        int i2 = 0;
        for (double[] dArr4 : dArr) {
            int length = dArr4.length;
            System.arraycopy(dArr4, 0, dArr3, i2, length);
            i2 += length;
        }
        return dArr3;
    }

    public static double[] convolve(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException {
        MathUtils.checkNotNull(dArr);
        MathUtils.checkNotNull(dArr2);
        int length = dArr.length;
        int length2 = dArr2.length;
        if (length == 0 || length2 == 0) {
            throw new NoDataException();
        }
        int i = (length + length2) - 1;
        double[] dArr3 = new double[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = i2 + 1;
            int max = FastMath.max(0, i3 - length);
            double d = 0.0d;
            for (int i4 = i2 - max; max < length2 && i4 >= 0; i4--) {
                d += dArr[i4] * dArr2[max];
                max++;
            }
            dArr3[i2] = d;
            i2 = i3;
        }
        return dArr3;
    }

    public static int[] copyOf(int[] iArr) {
        return copyOf(iArr, iArr.length);
    }

    public static double[] copyOfRange(double[] dArr, int i, int i2) {
        int i3 = i2 - i;
        double[] dArr2 = new double[i3];
        System.arraycopy(dArr, i, dArr2, 0, FastMath.min(i3, dArr.length - i));
        return dArr2;
    }

    public static double cosAngle(double[] dArr, double[] dArr2) {
        return linearCombination(dArr, dArr2) / (safeNorm(dArr) * safeNorm(dArr2));
    }

    public static double distance(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i] - dArr2[i];
            d += d2 * d2;
        }
        return FastMath.sqrt(d);
    }

    public static double distance1(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d += FastMath.abs(dArr[i] - dArr2[i]);
        }
        return d;
    }

    public static double distanceInf(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d = FastMath.max(d, FastMath.abs(dArr[i] - dArr2[i]));
        }
        return d;
    }

    public static double[] ebeAdd(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double[] dArr3 = (double[]) dArr.clone();
        for (int i = 0; i < dArr.length; i++) {
            dArr3[i] = dArr3[i] + dArr2[i];
        }
        return dArr3;
    }

    public static double[] ebeDivide(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double[] dArr3 = (double[]) dArr.clone();
        for (int i = 0; i < dArr.length; i++) {
            dArr3[i] = dArr3[i] / dArr2[i];
        }
        return dArr3;
    }

    public static double[] ebeMultiply(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double[] dArr3 = (double[]) dArr.clone();
        for (int i = 0; i < dArr.length; i++) {
            dArr3[i] = dArr3[i] * dArr2[i];
        }
        return dArr3;
    }

    public static double[] ebeSubtract(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        double[] dArr3 = (double[]) dArr.clone();
        for (int i = 0; i < dArr.length; i++) {
            dArr3[i] = dArr3[i] - dArr2[i];
        }
        return dArr3;
    }

    public static boolean equals(float[] fArr, float[] fArr2) {
        if (fArr == null || fArr2 == null) {
            return !((fArr == null) ^ (fArr2 == null));
        }
        if (fArr.length != fArr2.length) {
            return false;
        }
        for (int i = 0; i < fArr.length; i++) {
            if (!Precision.equals(fArr[i], fArr2[i])) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalsIncludingNaN(float[] fArr, float[] fArr2) {
        if (fArr == null || fArr2 == null) {
            return !((fArr == null) ^ (fArr2 == null));
        }
        if (fArr.length != fArr2.length) {
            return false;
        }
        for (int i = 0; i < fArr.length; i++) {
            if (!Precision.equalsIncludingNaN(fArr[i], fArr2[i])) {
                return false;
            }
        }
        return true;
    }

    public static <T extends Comparable<? super T>> boolean isMonotonic(T[] tArr, OrderDirection orderDirection, boolean z) {
        T t = tArr[0];
        int length = tArr.length;
        for (int i = 1; i < length; i++) {
            int i2 = C19299c.f109910a[orderDirection.ordinal()];
            if (i2 == 1) {
                int compareTo = t.compareTo(tArr[i]);
                if (z) {
                    if (compareTo >= 0) {
                        return false;
                    }
                } else if (compareTo > 0) {
                    return false;
                }
            } else if (i2 == 2) {
                int compareTo2 = tArr[i].compareTo(t);
                if (z) {
                    if (compareTo2 >= 0) {
                        return false;
                    }
                } else if (compareTo2 > 0) {
                    return false;
                }
            } else {
                throw new MathInternalError();
            }
            t = tArr[i];
        }
        return true;
    }

    public static double linearCombination(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        checkEqualLength(dArr, dArr2);
        int length = dArr.length;
        int i = 1;
        if (length == 1) {
            return dArr[0] * dArr2[0];
        }
        double[] dArr3 = new double[length];
        double d = 0.0d;
        double d2 = 0.0d;
        for (int i2 = 0; i2 < length; i2++) {
            double d3 = dArr[i2];
            double longBitsToDouble = Double.longBitsToDouble(Double.doubleToRawLongBits(d3) & (-134217728));
            double d4 = d3 - longBitsToDouble;
            double d5 = dArr2[i2];
            double longBitsToDouble2 = Double.longBitsToDouble(Double.doubleToRawLongBits(d5) & (-134217728));
            double d6 = d5 - longBitsToDouble2;
            double d7 = d3 * d5;
            dArr3[i2] = d7;
            d2 += (d4 * d6) - (((d7 - (longBitsToDouble * longBitsToDouble2)) - (d4 * longBitsToDouble2)) - (longBitsToDouble * d6));
        }
        double d8 = dArr3[0];
        double d9 = dArr3[1];
        double d10 = d8 + d9;
        double d11 = d10 - d9;
        double d12 = (d9 - (d10 - d11)) + (d8 - d11);
        int i3 = length - 1;
        while (i < i3) {
            i++;
            double d13 = dArr3[i];
            double d14 = d10 + d13;
            double d15 = d14 - d13;
            d12 += (d13 - (d14 - d15)) + (d10 - d15);
            d10 = d14;
        }
        double d16 = d10 + d2 + d12;
        if (!Double.isNaN(d16)) {
            return d16;
        }
        for (int i4 = 0; i4 < length; i4++) {
            d += dArr[i4] * dArr2[i4];
        }
        return d;
    }

    public static int[] natural(int i) {
        return sequence(i, 0, 1);
    }

    public static double[] normalizeArray(double[] dArr, double d) throws MathIllegalArgumentException, MathArithmeticException {
        if (Double.isInfinite(d)) {
            throw new MathIllegalArgumentException(LocalizedFormats.NORMALIZE_INFINITE, new Object[0]);
        }
        if (Double.isNaN(d)) {
            throw new MathIllegalArgumentException(LocalizedFormats.NORMALIZE_NAN, new Object[0]);
        }
        int length = dArr.length;
        double[] dArr2 = new double[length];
        double d2 = 0.0d;
        for (int i = 0; i < length; i++) {
            if (Double.isInfinite(dArr[i])) {
                throw new MathIllegalArgumentException(LocalizedFormats.INFINITE_ARRAY_ELEMENT, Double.valueOf(dArr[i]), Integer.valueOf(i));
            }
            if (!Double.isNaN(dArr[i])) {
                d2 += dArr[i];
            }
        }
        if (d2 == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ARRAY_SUMS_TO_ZERO, new Object[0]);
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (Double.isNaN(dArr[i2])) {
                dArr2[i2] = Double.NaN;
            } else {
                dArr2[i2] = (dArr[i2] * d) / d2;
            }
        }
        return dArr2;
    }

    public static double safeNorm(double[] dArr) {
        double length = 1.304E19d / dArr.length;
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        double d5 = 0.0d;
        for (double d6 : dArr) {
            double abs = FastMath.abs(d6);
            if (abs >= 3.834E-20d && abs <= length) {
                d2 += abs * abs;
            } else if (abs > 3.834E-20d) {
                if (abs > d3) {
                    double d7 = d3 / abs;
                    d = (d * d7 * d7) + 1.0d;
                    d3 = abs;
                } else {
                    double d8 = abs / d3;
                    d += d8 * d8;
                }
            } else if (abs > d4) {
                double d9 = d4 / abs;
                d5 = (d5 * d9 * d9) + 1.0d;
                d4 = abs;
            } else {
                if (abs != 0.0d) {
                    double d10 = abs / d4;
                    d5 += d10 * d10;
                }
            }
        }
        return d != 0.0d ? d3 * Math.sqrt(d + ((d2 / d3) / d3)) : d2 == 0.0d ? d4 * Math.sqrt(d5) : d2 >= d4 ? Math.sqrt(d2 * (((d4 / d2) * d4 * d5) + 1.0d)) : Math.sqrt(d4 * ((d2 / d4) + (d5 * d4)));
    }

    public static double[] scale(double d, double[] dArr) {
        double[] dArr2 = new double[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr2[i] = dArr[i] * d;
        }
        return dArr2;
    }

    public static void scaleInPlace(double d, double[] dArr) {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = dArr[i] * d;
        }
    }

    public static int[] sequence(int i, int i2, int i3) {
        int[] iArr = new int[i];
        for (int i4 = 0; i4 < i; i4++) {
            iArr[i4] = (i4 * i3) + i2;
        }
        return iArr;
    }

    public static void shuffle(int[] iArr, int i, Position position) {
        shuffle(iArr, i, position, new Well19937c());
    }

    public static void sortInPlace(double[] dArr, double[]... dArr2) throws DimensionMismatchException, NullArgumentException {
        sortInPlace(dArr, OrderDirection.INCREASING, dArr2);
    }

    public static double[] unique(double[] dArr) {
        TreeSet treeSet = new TreeSet();
        int i = 0;
        for (double d : dArr) {
            treeSet.add(Double.valueOf(d));
        }
        int size = treeSet.size();
        double[] dArr2 = new double[size];
        Iterator it2 = treeSet.iterator();
        while (it2.hasNext()) {
            i++;
            dArr2[size - i] = ((Double) it2.next()).doubleValue();
        }
        return dArr2;
    }

    public static boolean verifyValues(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        return verifyValues(dArr, i, i2, false);
    }

    public static double[] copyOf(double[] dArr) {
        return copyOf(dArr, dArr.length);
    }

    public static void shuffle(int[] iArr, int i, Position position, RandomGenerator randomGenerator) {
        int i2 = C19299c.f109911b[position.ordinal()];
        if (i2 == 1) {
            int length = iArr.length - 1;
            while (length >= i) {
                int sample = length == i ? i : new UniformIntegerDistribution(randomGenerator, i, length).sample();
                int i3 = iArr[sample];
                iArr[sample] = iArr[length];
                iArr[length] = i3;
                length--;
            }
            return;
        }
        if (i2 != 2) {
            throw new MathInternalError();
        }
        int i4 = 0;
        while (i4 <= i) {
            int sample2 = i4 == i ? i : new UniformIntegerDistribution(randomGenerator, i4, i).sample();
            int i5 = iArr[sample2];
            iArr[sample2] = iArr[i4];
            iArr[i4] = i5;
            i4++;
        }
    }

    public static void sortInPlace(double[] dArr, OrderDirection orderDirection, double[]... dArr2) throws NullArgumentException, DimensionMismatchException {
        if (dArr != null) {
            int length = dArr.length;
            for (double[] dArr3 : dArr2) {
                if (dArr3 != null) {
                    if (dArr3.length != length) {
                        throw new DimensionMismatchException(dArr3.length, length);
                    }
                } else {
                    throw new NullArgumentException();
                }
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                arrayList.add(new C19300d(dArr[i], i));
            }
            Collections.sort(arrayList, orderDirection == OrderDirection.INCREASING ? new C19297a() : new C19298b());
            int[] iArr = new int[length];
            for (int i2 = 0; i2 < length; i2++) {
                C19300d c19300d = (C19300d) arrayList.get(i2);
                dArr[i2] = c19300d.m68228a();
                iArr[i2] = c19300d.m68229b();
            }
            for (double[] dArr4 : dArr2) {
                double[] dArr5 = (double[]) dArr4.clone();
                for (int i3 = 0; i3 < length; i3++) {
                    dArr4[i3] = dArr5[iArr[i3]];
                }
            }
            return;
        }
        throw new NullArgumentException();
    }

    public static boolean verifyValues(double[] dArr, int i, int i2, boolean z) throws MathIllegalArgumentException {
        if (dArr == null) {
            throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
        }
        if (i < 0) {
            throw new NotPositiveException(LocalizedFormats.START_POSITION, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            int i3 = i + i2;
            if (i3 <= dArr.length) {
                return i2 != 0 || z;
            }
            throw new NumberIsTooLargeException(LocalizedFormats.SUBARRAY_ENDS_AFTER_ARRAY_END, Integer.valueOf(i3), Integer.valueOf(dArr.length), true);
        }
        throw new NotPositiveException(LocalizedFormats.LENGTH, Integer.valueOf(i2));
    }

    public static <T> T[][] buildArray(Field<T> field, int i, int i2) {
        if (i2 < 0) {
            return (T[][]) ((Object[][]) Array.newInstance(buildArray(field, 0).getClass(), i));
        }
        T[][] tArr = (T[][]) ((Object[][]) Array.newInstance(field.getRuntimeClass(), i, i2));
        for (int i3 = 0; i3 < i; i3++) {
            Arrays.fill(tArr[i3], field.getZero());
        }
        return tArr;
    }

    public static void checkEqualLength(double[] dArr, double[] dArr2) {
        checkEqualLength(dArr, dArr2, true);
    }

    public static int[] copyOf(int[] iArr, int i) {
        int[] iArr2 = new int[i];
        System.arraycopy(iArr, 0, iArr2, 0, FastMath.min(i, iArr.length));
        return iArr2;
    }

    public static boolean checkEqualLength(int[] iArr, int[] iArr2, boolean z) {
        if (iArr.length == iArr2.length) {
            return true;
        }
        if (z) {
            throw new DimensionMismatchException(iArr.length, iArr2.length);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0024, code lost:
    
        r1 = r1 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void checkNonNegative(long[][] r7) throws org.apache.commons.math3.exception.NotPositiveException {
        /*
            r0 = 0
            r1 = r0
        L2:
            int r2 = r7.length
            if (r1 >= r2) goto L27
            r2 = r0
        L6:
            r3 = r7[r1]
            int r4 = r3.length
            if (r2 >= r4) goto L24
            r3 = r3[r2]
            r5 = 0
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 < 0) goto L16
            int r2 = r2 + 1
            goto L6
        L16:
            org.apache.commons.math3.exception.NotPositiveException r0 = new org.apache.commons.math3.exception.NotPositiveException
            r7 = r7[r1]
            r1 = r7[r2]
            java.lang.Long r7 = java.lang.Long.valueOf(r1)
            r0.<init>(r7)
            throw r0
        L24:
            int r1 = r1 + 1
            goto L2
        L27:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.util.MathArrays.checkNonNegative(long[][]):void");
    }

    public static int distance1(int[] iArr, int[] iArr2) throws DimensionMismatchException {
        checkEqualLength(iArr, iArr2);
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            i += FastMath.abs(iArr[i2] - iArr2[i2]);
        }
        return i;
    }

    public static int distanceInf(int[] iArr, int[] iArr2) throws DimensionMismatchException {
        checkEqualLength(iArr, iArr2);
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            i = FastMath.max(i, FastMath.abs(iArr[i2] - iArr2[i2]));
        }
        return i;
    }

    public static boolean equals(double[] dArr, double[] dArr2) {
        if (dArr == null || dArr2 == null) {
            return !((dArr == null) ^ (dArr2 == null));
        }
        if (dArr.length != dArr2.length) {
            return false;
        }
        for (int i = 0; i < dArr.length; i++) {
            if (!Precision.equals(dArr[i], dArr2[i])) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalsIncludingNaN(double[] dArr, double[] dArr2) {
        if (dArr == null || dArr2 == null) {
            return !((dArr == null) ^ (dArr2 == null));
        }
        if (dArr.length != dArr2.length) {
            return false;
        }
        for (int i = 0; i < dArr.length; i++) {
            if (!Precision.equalsIncludingNaN(dArr[i], dArr2[i])) {
                return false;
            }
        }
        return true;
    }

    public static double[] copyOf(double[] dArr, int i) {
        double[] dArr2 = new double[i];
        System.arraycopy(dArr, 0, dArr2, 0, FastMath.min(i, dArr.length));
        return dArr2;
    }

    public static double distance(int[] iArr, int[] iArr2) throws DimensionMismatchException {
        checkEqualLength(iArr, iArr2);
        double d = 0.0d;
        for (int i = 0; i < iArr.length; i++) {
            double d2 = iArr[i] - iArr2[i];
            d += d2 * d2;
        }
        return FastMath.sqrt(d);
    }

    public static void checkEqualLength(int[] iArr, int[] iArr2) {
        checkEqualLength(iArr, iArr2, true);
    }

    public static boolean verifyValues(double[] dArr, double[] dArr2, int i, int i2) throws MathIllegalArgumentException {
        return verifyValues(dArr, dArr2, i, i2, false);
    }

    public static boolean isMonotonic(double[] dArr, OrderDirection orderDirection, boolean z) {
        return checkOrder(dArr, orderDirection, z, false);
    }

    public static boolean verifyValues(double[] dArr, double[] dArr2, int i, int i2, boolean z) throws MathIllegalArgumentException {
        if (dArr2 != null && dArr != null) {
            checkEqualLength(dArr2, dArr);
            boolean z2 = false;
            for (int i3 = i; i3 < i + i2; i3++) {
                double d = dArr2[i3];
                if (!Double.isNaN(d)) {
                    if (Double.isInfinite(d)) {
                        throw new MathIllegalArgumentException(LocalizedFormats.INFINITE_ARRAY_ELEMENT, Double.valueOf(d), Integer.valueOf(i3));
                    }
                    if (d < 0.0d) {
                        throw new MathIllegalArgumentException(LocalizedFormats.NEGATIVE_ELEMENT_AT_INDEX, Integer.valueOf(i3), Double.valueOf(d));
                    }
                    if (!z2 && d > 0.0d) {
                        z2 = true;
                    }
                } else {
                    throw new MathIllegalArgumentException(LocalizedFormats.NAN_ELEMENT_AT_INDEX, Integer.valueOf(i3));
                }
            }
            if (z2) {
                return verifyValues(dArr, i, i2, z);
            }
            throw new MathIllegalArgumentException(LocalizedFormats.WEIGHT_AT_LEAST_ONE_NON_ZERO, new Object[0]);
        }
        throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
    }

    public static void checkOrder(double[] dArr, OrderDirection orderDirection, boolean z) throws NonMonotonicSequenceException {
        checkOrder(dArr, orderDirection, z, true);
    }

    public static void checkOrder(double[] dArr) throws NonMonotonicSequenceException {
        checkOrder(dArr, OrderDirection.INCREASING, true);
    }

    public static void shuffle(int[] iArr, RandomGenerator randomGenerator) {
        shuffle(iArr, 0, Position.TAIL, randomGenerator);
    }

    public static void shuffle(int[] iArr) {
        shuffle(iArr, new Well19937c());
    }

    public static double linearCombination(double d, double d2, double d3, double d4) {
        double longBitsToDouble = Double.longBitsToDouble(Double.doubleToRawLongBits(d) & (-134217728));
        double d5 = d - longBitsToDouble;
        double longBitsToDouble2 = Double.longBitsToDouble(Double.doubleToRawLongBits(d2) & (-134217728));
        double d6 = d2 - longBitsToDouble2;
        double d7 = d * d2;
        double d8 = (d5 * d6) - (((d7 - (longBitsToDouble * longBitsToDouble2)) - (d5 * longBitsToDouble2)) - (longBitsToDouble * d6));
        double longBitsToDouble3 = Double.longBitsToDouble(Double.doubleToRawLongBits(d3) & (-134217728));
        double d9 = d3 - longBitsToDouble3;
        double longBitsToDouble4 = Double.longBitsToDouble((-134217728) & Double.doubleToRawLongBits(d4));
        double d10 = d4 - longBitsToDouble4;
        double d11 = d3 * d4;
        double d12 = (d9 * d10) - (((d11 - (longBitsToDouble3 * longBitsToDouble4)) - (d9 * longBitsToDouble4)) - (longBitsToDouble3 * d10));
        double d13 = d7 + d11;
        double d14 = d13 - d11;
        double d15 = d8 + d12 + (d11 - (d13 - d14)) + (d7 - d14) + d13;
        return Double.isNaN(d15) ? d13 : d15;
    }

    public static double linearCombination(double d, double d2, double d3, double d4, double d5, double d6) {
        double longBitsToDouble = Double.longBitsToDouble(Double.doubleToRawLongBits(d) & (-134217728));
        double d7 = d - longBitsToDouble;
        double longBitsToDouble2 = Double.longBitsToDouble(Double.doubleToRawLongBits(d2) & (-134217728));
        double d8 = d2 - longBitsToDouble2;
        double d9 = d * d2;
        double d10 = (d7 * d8) - (((d9 - (longBitsToDouble * longBitsToDouble2)) - (d7 * longBitsToDouble2)) - (longBitsToDouble * d8));
        double longBitsToDouble3 = Double.longBitsToDouble(Double.doubleToRawLongBits(d3) & (-134217728));
        double d11 = d3 - longBitsToDouble3;
        double longBitsToDouble4 = Double.longBitsToDouble(Double.doubleToRawLongBits(d4) & (-134217728));
        double d12 = d4 - longBitsToDouble4;
        double d13 = d3 * d4;
        double d14 = (d11 * d12) - (((d13 - (longBitsToDouble3 * longBitsToDouble4)) - (d11 * longBitsToDouble4)) - (longBitsToDouble3 * d12));
        double longBitsToDouble5 = Double.longBitsToDouble(Double.doubleToRawLongBits(d5) & (-134217728));
        double d15 = d5 - longBitsToDouble5;
        double longBitsToDouble6 = Double.longBitsToDouble((-134217728) & Double.doubleToRawLongBits(d6));
        double d16 = d6 - longBitsToDouble6;
        double d17 = d5 * d6;
        double d18 = (d15 * d16) - (((d17 - (longBitsToDouble5 * longBitsToDouble6)) - (d15 * longBitsToDouble6)) - (longBitsToDouble5 * d16));
        double d19 = d9 + d13;
        double d20 = d19 - d13;
        double d21 = (d13 - (d19 - d20)) + (d9 - d20);
        double d22 = d19 + d17;
        double d23 = d22 - d17;
        double d24 = d10 + d14 + d18 + d21 + (d17 - (d22 - d23)) + (d19 - d23) + d22;
        return Double.isNaN(d24) ? d22 : d24;
    }

    public static double linearCombination(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        double longBitsToDouble = Double.longBitsToDouble(Double.doubleToRawLongBits(d) & (-134217728));
        double d9 = d - longBitsToDouble;
        double longBitsToDouble2 = Double.longBitsToDouble(Double.doubleToRawLongBits(d2) & (-134217728));
        double d10 = d2 - longBitsToDouble2;
        double d11 = d * d2;
        double d12 = (d9 * d10) - (((d11 - (longBitsToDouble * longBitsToDouble2)) - (d9 * longBitsToDouble2)) - (longBitsToDouble * d10));
        double longBitsToDouble3 = Double.longBitsToDouble(Double.doubleToRawLongBits(d3) & (-134217728));
        double d13 = d3 - longBitsToDouble3;
        double longBitsToDouble4 = Double.longBitsToDouble(Double.doubleToRawLongBits(d4) & (-134217728));
        double d14 = d4 - longBitsToDouble4;
        double d15 = d3 * d4;
        double d16 = (d13 * d14) - (((d15 - (longBitsToDouble3 * longBitsToDouble4)) - (d13 * longBitsToDouble4)) - (longBitsToDouble3 * d14));
        double longBitsToDouble5 = Double.longBitsToDouble(Double.doubleToRawLongBits(d5) & (-134217728));
        double d17 = d5 - longBitsToDouble5;
        double longBitsToDouble6 = Double.longBitsToDouble(Double.doubleToRawLongBits(d6) & (-134217728));
        double d18 = d6 - longBitsToDouble6;
        double d19 = d5 * d6;
        double d20 = (d17 * d18) - (((d19 - (longBitsToDouble5 * longBitsToDouble6)) - (d17 * longBitsToDouble6)) - (longBitsToDouble5 * d18));
        double longBitsToDouble7 = Double.longBitsToDouble(Double.doubleToRawLongBits(d7) & (-134217728));
        double d21 = d7 - longBitsToDouble7;
        double longBitsToDouble8 = Double.longBitsToDouble((-134217728) & Double.doubleToRawLongBits(d8));
        double d22 = d8 - longBitsToDouble8;
        double d23 = d7 * d8;
        double d24 = (d21 * d22) - (((d23 - (longBitsToDouble7 * longBitsToDouble8)) - (d21 * longBitsToDouble8)) - (longBitsToDouble7 * d22));
        double d25 = d11 + d15;
        double d26 = d25 - d15;
        double d27 = (d15 - (d25 - d26)) + (d11 - d26);
        double d28 = d25 + d19;
        double d29 = d28 - d19;
        double d30 = (d19 - (d28 - d29)) + (d25 - d29);
        double d31 = d28 + d23;
        double d32 = d31 - d23;
        double d33 = d12 + d16 + d20 + d24 + d27 + d30 + (d23 - (d31 - d32)) + (d28 - d32) + d31;
        return Double.isNaN(d33) ? d31 : d33;
    }
}
