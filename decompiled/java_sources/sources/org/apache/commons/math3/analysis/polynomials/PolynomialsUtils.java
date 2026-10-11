package org.apache.commons.math3.analysis.polynomials;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class PolynomialsUtils {

    /* renamed from: a */
    public static final List<BigFraction> f107939a;

    /* renamed from: b */
    public static final List<BigFraction> f107940b;

    /* renamed from: c */
    public static final List<BigFraction> f107941c;

    /* renamed from: d */
    public static final List<BigFraction> f107942d;

    /* renamed from: e */
    public static final Map<C19065f, List<BigFraction>> f107943e;

    /* renamed from: org.apache.commons.math3.analysis.polynomials.PolynomialsUtils$a */
    /* loaded from: classes12.dex */
    public static class C19060a implements InterfaceC19066g {

        /* renamed from: a */
        public final BigFraction[] f107944a = {BigFraction.ZERO, BigFraction.TWO, BigFraction.ONE};

        @Override // org.apache.commons.math3.analysis.polynomials.PolynomialsUtils.InterfaceC19066g
        /* renamed from: a */
        public BigFraction[] mo67528a(int i) {
            return this.f107944a;
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.polynomials.PolynomialsUtils$b */
    /* loaded from: classes12.dex */
    public static class C19061b implements InterfaceC19066g {
        @Override // org.apache.commons.math3.analysis.polynomials.PolynomialsUtils.InterfaceC19066g
        /* renamed from: a */
        public BigFraction[] mo67528a(int i) {
            return new BigFraction[]{BigFraction.ZERO, BigFraction.TWO, new BigFraction(i * 2)};
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.polynomials.PolynomialsUtils$c */
    /* loaded from: classes12.dex */
    public static class C19062c implements InterfaceC19066g {
        @Override // org.apache.commons.math3.analysis.polynomials.PolynomialsUtils.InterfaceC19066g
        /* renamed from: a */
        public BigFraction[] mo67528a(int i) {
            int i2 = i + 1;
            return new BigFraction[]{new BigFraction((i * 2) + 1, i2), new BigFraction(-1, i2), new BigFraction(i, i2)};
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.polynomials.PolynomialsUtils$d */
    /* loaded from: classes12.dex */
    public static class C19063d implements InterfaceC19066g {
        @Override // org.apache.commons.math3.analysis.polynomials.PolynomialsUtils.InterfaceC19066g
        /* renamed from: a */
        public BigFraction[] mo67528a(int i) {
            int i2 = i + 1;
            return new BigFraction[]{BigFraction.ZERO, new BigFraction(i + i2, i2), new BigFraction(i, i2)};
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.polynomials.PolynomialsUtils$e */
    /* loaded from: classes12.dex */
    public static class C19064e implements InterfaceC19066g {

        /* renamed from: a */
        public final /* synthetic */ int f107945a;

        /* renamed from: b */
        public final /* synthetic */ int f107946b;

        public C19064e(int i, int i2) {
            this.f107945a = i;
            this.f107946b = i2;
        }

        @Override // org.apache.commons.math3.analysis.polynomials.PolynomialsUtils.InterfaceC19066g
        /* renamed from: a */
        public BigFraction[] mo67528a(int i) {
            int i2 = i + 1;
            int i3 = this.f107945a + i2 + this.f107946b;
            int i4 = i3 + i2;
            int i5 = i4 - 1;
            int i6 = i4 - 2;
            int i7 = i2 * 2 * i3 * i6;
            int i8 = this.f107945a;
            int i9 = this.f107946b;
            return new BigFraction[]{new BigFraction(((i8 * i8) - (i9 * i9)) * i5, i7), new BigFraction(i5 * i4 * i6, i7), new BigFraction(((this.f107945a + i2) - 1) * 2 * ((i2 + this.f107946b) - 1) * i4, i7)};
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.polynomials.PolynomialsUtils$f */
    /* loaded from: classes12.dex */
    public static class C19065f {

        /* renamed from: a */
        public final int f107947a;

        /* renamed from: b */
        public final int f107948b;

        public C19065f(int i, int i2) {
            this.f107947a = i;
            this.f107948b = i2;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof C19065f)) {
                return false;
            }
            C19065f c19065f = (C19065f) obj;
            return this.f107947a == c19065f.f107947a && this.f107948b == c19065f.f107948b;
        }

        public int hashCode() {
            return this.f107948b ^ (this.f107947a << 16);
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.polynomials.PolynomialsUtils$g */
    /* loaded from: classes12.dex */
    public interface InterfaceC19066g {
        /* renamed from: a */
        BigFraction[] mo67528a(int i);
    }

    static {
        ArrayList arrayList = new ArrayList();
        f107939a = arrayList;
        BigFraction bigFraction = BigFraction.ONE;
        arrayList.add(bigFraction);
        BigFraction bigFraction2 = BigFraction.ZERO;
        arrayList.add(bigFraction2);
        arrayList.add(bigFraction);
        ArrayList arrayList2 = new ArrayList();
        f107940b = arrayList2;
        arrayList2.add(bigFraction);
        arrayList2.add(bigFraction2);
        arrayList2.add(BigFraction.TWO);
        ArrayList arrayList3 = new ArrayList();
        f107941c = arrayList3;
        arrayList3.add(bigFraction);
        arrayList3.add(bigFraction);
        arrayList3.add(BigFraction.MINUS_ONE);
        ArrayList arrayList4 = new ArrayList();
        f107942d = arrayList4;
        arrayList4.add(bigFraction);
        arrayList4.add(bigFraction2);
        arrayList4.add(bigFraction);
        f107943e = new HashMap();
    }

    /* renamed from: a */
    public static PolynomialFunction m67526a(int i, List<BigFraction> list, InterfaceC19066g interfaceC19066g) {
        synchronized (list) {
            int floor = ((int) FastMath.floor(FastMath.sqrt(list.size() * 2))) - 1;
            if (i > floor) {
                m67527b(i, floor, interfaceC19066g, list);
            }
        }
        int i2 = i + 1;
        int i3 = (i * i2) / 2;
        double[] dArr = new double[i2];
        for (int i4 = 0; i4 <= i; i4++) {
            dArr[i4] = list.get(i3 + i4).doubleValue();
        }
        return new PolynomialFunction(dArr);
    }

    /* renamed from: b */
    public static void m67527b(int i, int i2, InterfaceC19066g interfaceC19066g, List<BigFraction> list) {
        int i3 = ((i2 - 1) * i2) / 2;
        while (i2 < i) {
            int i4 = i3 + i2;
            BigFraction[] mo67528a = interfaceC19066g.mo67528a(i2);
            BigFraction bigFraction = list.get(i4);
            list.add(bigFraction.multiply(mo67528a[0]).subtract(list.get(i3).multiply(mo67528a[2])));
            int i5 = 1;
            while (i5 < i2) {
                BigFraction bigFraction2 = list.get(i4 + i5);
                list.add(bigFraction2.multiply(mo67528a[0]).add(bigFraction.multiply(mo67528a[1])).subtract(list.get(i3 + i5).multiply(mo67528a[2])));
                i5++;
                bigFraction = bigFraction2;
            }
            BigFraction bigFraction3 = list.get(i4 + i2);
            list.add(bigFraction3.multiply(mo67528a[0]).add(bigFraction.multiply(mo67528a[1])));
            list.add(bigFraction3.multiply(mo67528a[1]));
            i2++;
            i3 = i4;
        }
    }

    public static PolynomialFunction createChebyshevPolynomial(int i) {
        return m67526a(i, f107939a, new C19060a());
    }

    public static PolynomialFunction createHermitePolynomial(int i) {
        return m67526a(i, f107940b, new C19061b());
    }

    public static PolynomialFunction createJacobiPolynomial(int i, int i2, int i3) {
        C19065f c19065f = new C19065f(i2, i3);
        Map<C19065f, List<BigFraction>> map = f107943e;
        if (!map.containsKey(c19065f)) {
            ArrayList arrayList = new ArrayList();
            map.put(c19065f, arrayList);
            arrayList.add(BigFraction.ONE);
            arrayList.add(new BigFraction(i2 - i3, 2));
            arrayList.add(new BigFraction(i2 + 2 + i3, 2));
        }
        return m67526a(i, map.get(c19065f), new C19064e(i2, i3));
    }

    public static PolynomialFunction createLaguerrePolynomial(int i) {
        return m67526a(i, f107941c, new C19062c());
    }

    public static PolynomialFunction createLegendrePolynomial(int i) {
        return m67526a(i, f107942d, new C19063d());
    }

    public static double[] shift(double[] dArr, double d) {
        int length = dArr.length;
        double[] dArr2 = new double[length];
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, length, length);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 <= i; i2++) {
                iArr[i][i2] = (int) CombinatoricsUtils.binomialCoefficient(i, i2);
            }
        }
        for (int i3 = 0; i3 < length; i3++) {
            dArr2[0] = dArr2[0] + (dArr[i3] * FastMath.pow(d, i3));
        }
        int i4 = length - 1;
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i5;
            while (i6 < i4) {
                int i7 = i5 + 1;
                int i8 = i6 + 1;
                dArr2[i7] = dArr2[i7] + (iArr[i8][r4] * dArr[i8] * FastMath.pow(d, i6 - i5));
                i6 = i8;
            }
        }
        return dArr2;
    }
}
