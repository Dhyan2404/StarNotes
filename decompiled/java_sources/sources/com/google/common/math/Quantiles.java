package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Doubles;
import com.google.common.primitives.Ints;
import com.sunia.HTREnginev2.znf;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

@Beta
@znf
@GwtIncompatible
/* loaded from: classes6.dex */
public final class Quantiles {

    /* loaded from: classes6.dex */
    public static final class Scale {

        /* renamed from: a */
        public final int f34990a;

        public ScaleAndIndex index(int i) {
            return new ScaleAndIndex(this.f34990a, i);
        }

        public ScaleAndIndexes indexes(int... iArr) {
            return new ScaleAndIndexes(this.f34990a, (int[]) iArr.clone());
        }

        public Scale(int i) {
            Preconditions.checkArgument(i > 0, "Quantile scale must be positive");
            this.f34990a = i;
        }

        public ScaleAndIndexes indexes(Collection<Integer> collection) {
            return new ScaleAndIndexes(this.f34990a, Ints.toArray(collection));
        }
    }

    /* loaded from: classes6.dex */
    public static final class ScaleAndIndex {

        /* renamed from: a */
        public final int f34991a;

        /* renamed from: b */
        public final int f34992b;

        public double compute(Collection<? extends Number> collection) {
            return computeInPlace(Doubles.toArray(collection));
        }

        public double computeInPlace(double... dArr) {
            Preconditions.checkArgument(dArr.length > 0, "Cannot calculate quantiles of an empty dataset");
            if (Quantiles.m27286j(dArr)) {
                return Double.NaN;
            }
            long length = this.f34992b * (dArr.length - 1);
            int divide = (int) LongMath.divide(length, this.f34991a, RoundingMode.DOWN);
            int i = (int) (length - (divide * this.f34991a));
            Quantiles.m27293q(divide, dArr, 0, dArr.length - 1);
            if (i == 0) {
                return dArr[divide];
            }
            int i2 = divide + 1;
            Quantiles.m27293q(i2, dArr, i2, dArr.length - 1);
            return Quantiles.m27287k(dArr[divide], dArr[i2], i, this.f34991a);
        }

        public ScaleAndIndex(int i, int i2) {
            Quantiles.m27284h(i2, i);
            this.f34991a = i;
            this.f34992b = i2;
        }

        public double compute(double... dArr) {
            return computeInPlace((double[]) dArr.clone());
        }

        public double compute(long... jArr) {
            return computeInPlace(Quantiles.m27289m(jArr));
        }

        public double compute(int... iArr) {
            return computeInPlace(Quantiles.m27288l(iArr));
        }
    }

    /* loaded from: classes6.dex */
    public static final class ScaleAndIndexes {

        /* renamed from: a */
        public final int f34993a;

        /* renamed from: b */
        public final int[] f34994b;

        public Map<Integer, Double> compute(Collection<? extends Number> collection) {
            return computeInPlace(Doubles.toArray(collection));
        }

        public Map<Integer, Double> computeInPlace(double... dArr) {
            int i = 0;
            Preconditions.checkArgument(dArr.length > 0, "Cannot calculate quantiles of an empty dataset");
            if (Quantiles.m27286j(dArr)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int[] iArr = this.f34994b;
                int length = iArr.length;
                while (i < length) {
                    linkedHashMap.put(Integer.valueOf(iArr[i]), Double.valueOf(Double.NaN));
                    i++;
                }
                return Collections.unmodifiableMap(linkedHashMap);
            }
            int[] iArr2 = this.f34994b;
            int[] iArr3 = new int[iArr2.length];
            int[] iArr4 = new int[iArr2.length];
            int[] iArr5 = new int[iArr2.length * 2];
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i2 >= this.f34994b.length) {
                    break;
                }
                long length2 = r5[i2] * (dArr.length - 1);
                int divide = (int) LongMath.divide(length2, this.f34993a, RoundingMode.DOWN);
                int i4 = (int) (length2 - (divide * this.f34993a));
                iArr3[i2] = divide;
                iArr4[i2] = i4;
                iArr5[i3] = divide;
                i3++;
                if (i4 != 0) {
                    iArr5[i3] = divide + 1;
                    i3++;
                }
                i2++;
            }
            Arrays.sort(iArr5, 0, i3);
            Quantiles.m27292p(iArr5, 0, i3 - 1, dArr, 0, dArr.length - 1);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            while (true) {
                int[] iArr6 = this.f34994b;
                if (i >= iArr6.length) {
                    return Collections.unmodifiableMap(linkedHashMap2);
                }
                int i5 = iArr3[i];
                int i6 = iArr4[i];
                if (i6 == 0) {
                    linkedHashMap2.put(Integer.valueOf(iArr6[i]), Double.valueOf(dArr[i5]));
                } else {
                    linkedHashMap2.put(Integer.valueOf(iArr6[i]), Double.valueOf(Quantiles.m27287k(dArr[i5], dArr[i5 + 1], i6, this.f34993a)));
                }
                i++;
            }
        }

        public ScaleAndIndexes(int i, int[] iArr) {
            for (int i2 : iArr) {
                Quantiles.m27284h(i2, i);
            }
            Preconditions.checkArgument(iArr.length > 0, "Indexes must be a non empty array");
            this.f34993a = i;
            this.f34994b = iArr;
        }

        public Map<Integer, Double> compute(double... dArr) {
            return computeInPlace((double[]) dArr.clone());
        }

        public Map<Integer, Double> compute(long... jArr) {
            return computeInPlace(Quantiles.m27289m(jArr));
        }

        public Map<Integer, Double> compute(int... iArr) {
            return computeInPlace(Quantiles.m27288l(iArr));
        }
    }

    /* renamed from: h */
    public static void m27284h(int i, int i2) {
        if (i < 0 || i > i2) {
            StringBuilder sb = new StringBuilder(70);
            sb.append("Quantile indexes must be between 0 and the scale, which is ");
            sb.append(i2);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    /* renamed from: i */
    public static int m27285i(int[] iArr, int i, int i2, int i3, int i4) {
        if (i == i2) {
            return i;
        }
        int i5 = i3 + i4;
        int i6 = i5 >>> 1;
        while (i2 > i + 1) {
            int i7 = (i + i2) >>> 1;
            int i8 = iArr[i7];
            if (i8 > i6) {
                i2 = i7;
            } else {
                if (i8 >= i6) {
                    return i7;
                }
                i = i7;
            }
        }
        return (i5 - iArr[i]) - iArr[i2] > 0 ? i2 : i;
    }

    /* renamed from: j */
    public static boolean m27286j(double... dArr) {
        for (double d : dArr) {
            if (Double.isNaN(d)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: k */
    public static double m27287k(double d, double d2, double d3, double d4) {
        if (d == Double.NEGATIVE_INFINITY) {
            return d2 == Double.POSITIVE_INFINITY ? Double.NaN : Double.NEGATIVE_INFINITY;
        }
        if (d2 == Double.POSITIVE_INFINITY) {
            return Double.POSITIVE_INFINITY;
        }
        return d + (((d2 - d) * d3) / d4);
    }

    /* renamed from: l */
    public static double[] m27288l(int[] iArr) {
        int length = iArr.length;
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = iArr[i];
        }
        return dArr;
    }

    /* renamed from: m */
    public static double[] m27289m(long[] jArr) {
        int length = jArr.length;
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = jArr[i];
        }
        return dArr;
    }

    public static ScaleAndIndex median() {
        return scale(2).index(1);
    }

    /* renamed from: n */
    public static void m27290n(double[] dArr, int i, int i2) {
        int i3 = (i + i2) >>> 1;
        double d = dArr[i2];
        double d2 = dArr[i3];
        boolean z = d < d2;
        double d3 = dArr[i];
        boolean z2 = d2 < d3;
        boolean z3 = d < d3;
        if (z == z2) {
            m27294r(dArr, i3, i);
        } else if (z != z3) {
            m27294r(dArr, i, i2);
        }
    }

    /* renamed from: o */
    public static int m27291o(double[] dArr, int i, int i2) {
        m27290n(dArr, i, i2);
        double d = dArr[i];
        int i3 = i2;
        while (i2 > i) {
            if (dArr[i2] > d) {
                m27294r(dArr, i3, i2);
                i3--;
            }
            i2--;
        }
        m27294r(dArr, i, i3);
        return i3;
    }

    /* renamed from: p */
    public static void m27292p(int[] iArr, int i, int i2, double[] dArr, int i3, int i4) {
        int m27285i = m27285i(iArr, i, i2, i3, i4);
        int i5 = iArr[m27285i];
        m27293q(i5, dArr, i3, i4);
        int i6 = m27285i - 1;
        while (i6 >= i && iArr[i6] == i5) {
            i6--;
        }
        if (i6 >= i) {
            m27292p(iArr, i, i6, dArr, i3, i5 - 1);
        }
        int i7 = m27285i + 1;
        while (i7 <= i2 && iArr[i7] == i5) {
            i7++;
        }
        if (i7 <= i2) {
            m27292p(iArr, i7, i2, dArr, i5 + 1, i4);
        }
    }

    public static Scale percentiles() {
        return scale(100);
    }

    /* renamed from: q */
    public static void m27293q(int i, double[] dArr, int i2, int i3) {
        if (i != i2) {
            while (i3 > i2) {
                int m27291o = m27291o(dArr, i2, i3);
                if (m27291o >= i) {
                    i3 = m27291o - 1;
                }
                if (m27291o <= i) {
                    i2 = m27291o + 1;
                }
            }
            return;
        }
        int i4 = i2;
        for (int i5 = i2 + 1; i5 <= i3; i5++) {
            if (dArr[i4] > dArr[i5]) {
                i4 = i5;
            }
        }
        if (i4 != i2) {
            m27294r(dArr, i4, i2);
        }
    }

    public static Scale quartiles() {
        return scale(4);
    }

    /* renamed from: r */
    public static void m27294r(double[] dArr, int i, int i2) {
        double d = dArr[i];
        dArr[i] = dArr[i2];
        dArr[i2] = d;
    }

    public static Scale scale(int i) {
        return new Scale(i);
    }
}
