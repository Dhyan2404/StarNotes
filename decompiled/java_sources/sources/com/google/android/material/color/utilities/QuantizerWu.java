package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import com.sunia.HTREnginev2.ial;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class QuantizerWu implements ial {

    /* renamed from: g */
    public static final int f30956g = 5;

    /* renamed from: h */
    public static final int f30957h = 33;

    /* renamed from: i */
    public static final int f30958i = 35937;

    /* renamed from: a */
    public int[] f30959a;

    /* renamed from: b */
    public int[] f30960b;

    /* renamed from: c */
    public int[] f30961c;

    /* renamed from: d */
    public int[] f30962d;

    /* renamed from: e */
    public double[] f30963e;

    /* renamed from: f */
    public C5224b[] f30964f;

    /* loaded from: classes6.dex */
    public enum Direction {
        RED,
        GREEN,
        BLUE
    }

    /* renamed from: com.google.android.material.color.utilities.QuantizerWu$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C5223a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f30965a;

        static {
            int[] iArr = new int[Direction.values().length];
            f30965a = iArr;
            try {
                iArr[Direction.RED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30965a[Direction.GREEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30965a[Direction.BLUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.google.android.material.color.utilities.QuantizerWu$c */
    /* loaded from: classes6.dex */
    public static final class C5225c {

        /* renamed from: a */
        public int f30973a;

        public C5225c(int i, int i2) {
            this.f30973a = i2;
        }
    }

    /* renamed from: com.google.android.material.color.utilities.QuantizerWu$d */
    /* loaded from: classes6.dex */
    public static final class C5226d {

        /* renamed from: a */
        public int f30974a;

        /* renamed from: b */
        public double f30975b;

        public C5226d(int i, double d) {
            this.f30974a = i;
            this.f30975b = d;
        }
    }

    /* renamed from: a */
    public static int m23892a(C5224b c5224b, Direction direction, int[] iArr) {
        int i;
        int i2;
        int i3 = C5223a.f30965a[direction.ordinal()];
        if (i3 == 1) {
            i = (-iArr[m23893g(c5224b.f30966a, c5224b.f30969d, c5224b.f30971f)]) + iArr[m23893g(c5224b.f30966a, c5224b.f30969d, c5224b.f30970e)] + iArr[m23893g(c5224b.f30966a, c5224b.f30968c, c5224b.f30971f)];
            i2 = iArr[m23893g(c5224b.f30966a, c5224b.f30968c, c5224b.f30970e)];
        } else if (i3 == 2) {
            i = (-iArr[m23893g(c5224b.f30967b, c5224b.f30968c, c5224b.f30971f)]) + iArr[m23893g(c5224b.f30967b, c5224b.f30968c, c5224b.f30970e)] + iArr[m23893g(c5224b.f30966a, c5224b.f30968c, c5224b.f30971f)];
            i2 = iArr[m23893g(c5224b.f30966a, c5224b.f30968c, c5224b.f30970e)];
        } else {
            if (i3 != 3) {
                throw new IllegalArgumentException("unexpected direction " + direction);
            }
            i = (-iArr[m23893g(c5224b.f30967b, c5224b.f30969d, c5224b.f30970e)]) + iArr[m23893g(c5224b.f30967b, c5224b.f30968c, c5224b.f30970e)] + iArr[m23893g(c5224b.f30966a, c5224b.f30969d, c5224b.f30970e)];
            i2 = iArr[m23893g(c5224b.f30966a, c5224b.f30968c, c5224b.f30970e)];
        }
        return i - i2;
    }

    /* renamed from: g */
    public static int m23893g(int i, int i2, int i3) {
        return (i << 10) + (i << 6) + i + (i2 << 5) + i2 + i3;
    }

    /* renamed from: i */
    public static int m23894i(C5224b c5224b, Direction direction, int i, int[] iArr) {
        int i2;
        int i3;
        int i4 = C5223a.f30965a[direction.ordinal()];
        if (i4 == 1) {
            i2 = (iArr[m23893g(i, c5224b.f30969d, c5224b.f30971f)] - iArr[m23893g(i, c5224b.f30969d, c5224b.f30970e)]) - iArr[m23893g(i, c5224b.f30968c, c5224b.f30971f)];
            i3 = iArr[m23893g(i, c5224b.f30968c, c5224b.f30970e)];
        } else if (i4 == 2) {
            i2 = (iArr[m23893g(c5224b.f30967b, i, c5224b.f30971f)] - iArr[m23893g(c5224b.f30967b, i, c5224b.f30970e)]) - iArr[m23893g(c5224b.f30966a, i, c5224b.f30971f)];
            i3 = iArr[m23893g(c5224b.f30966a, i, c5224b.f30970e)];
        } else {
            if (i4 != 3) {
                throw new IllegalArgumentException("unexpected direction " + direction);
            }
            i2 = (iArr[m23893g(c5224b.f30967b, c5224b.f30969d, i)] - iArr[m23893g(c5224b.f30967b, c5224b.f30968c, i)]) - iArr[m23893g(c5224b.f30966a, c5224b.f30969d, i)];
            i3 = iArr[m23893g(c5224b.f30966a, c5224b.f30968c, i)];
        }
        return i2 + i3;
    }

    /* renamed from: k */
    public static int m23895k(C5224b c5224b, int[] iArr) {
        return ((((((iArr[m23893g(c5224b.f30967b, c5224b.f30969d, c5224b.f30971f)] - iArr[m23893g(c5224b.f30967b, c5224b.f30969d, c5224b.f30970e)]) - iArr[m23893g(c5224b.f30967b, c5224b.f30968c, c5224b.f30971f)]) + iArr[m23893g(c5224b.f30967b, c5224b.f30968c, c5224b.f30970e)]) - iArr[m23893g(c5224b.f30966a, c5224b.f30969d, c5224b.f30971f)]) + iArr[m23893g(c5224b.f30966a, c5224b.f30969d, c5224b.f30970e)]) + iArr[m23893g(c5224b.f30966a, c5224b.f30968c, c5224b.f30971f)]) - iArr[m23893g(c5224b.f30966a, c5224b.f30968c, c5224b.f30970e)];
    }

    /* renamed from: b */
    public void m23896b(Map<Integer, Integer> map) {
        this.f30959a = new int[f30958i];
        this.f30960b = new int[f30958i];
        this.f30961c = new int[f30958i];
        this.f30962d = new int[f30958i];
        this.f30963e = new double[f30958i];
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            int intValue = entry.getKey().intValue();
            int intValue2 = entry.getValue().intValue();
            int redFromArgb = ColorUtils.redFromArgb(intValue);
            int greenFromArgb = ColorUtils.greenFromArgb(intValue);
            int blueFromArgb = ColorUtils.blueFromArgb(intValue);
            int m23893g = m23893g((redFromArgb >> 3) + 1, (greenFromArgb >> 3) + 1, (blueFromArgb >> 3) + 1);
            int[] iArr = this.f30959a;
            iArr[m23893g] = iArr[m23893g] + intValue2;
            int[] iArr2 = this.f30960b;
            iArr2[m23893g] = iArr2[m23893g] + (redFromArgb * intValue2);
            int[] iArr3 = this.f30961c;
            iArr3[m23893g] = iArr3[m23893g] + (greenFromArgb * intValue2);
            int[] iArr4 = this.f30962d;
            iArr4[m23893g] = iArr4[m23893g] + (blueFromArgb * intValue2);
            double[] dArr = this.f30963e;
            dArr[m23893g] = dArr[m23893g] + (intValue2 * ((redFromArgb * redFromArgb) + (greenFromArgb * greenFromArgb) + (blueFromArgb * blueFromArgb)));
        }
    }

    /* renamed from: c */
    public C5225c m23897c(int i) {
        int i2;
        this.f30964f = new C5224b[i];
        for (int i3 = 0; i3 < i; i3++) {
            this.f30964f[i3] = new C5224b(null);
        }
        double[] dArr = new double[i];
        C5224b c5224b = this.f30964f[0];
        c5224b.f30967b = 32;
        c5224b.f30969d = 32;
        c5224b.f30971f = 32;
        int i4 = 0;
        int i5 = 1;
        while (true) {
            if (i5 >= i) {
                i2 = i;
                break;
            }
            C5224b[] c5224bArr = this.f30964f;
            if (m23900f(c5224bArr[i4], c5224bArr[i5]).booleanValue()) {
                C5224b c5224b2 = this.f30964f[i4];
                dArr[i4] = c5224b2.f30972g > 1 ? m23902j(c5224b2) : 0.0d;
                C5224b c5224b3 = this.f30964f[i5];
                dArr[i5] = c5224b3.f30972g > 1 ? m23902j(c5224b3) : 0.0d;
            } else {
                dArr[i4] = 0.0d;
                i5--;
            }
            double d = dArr[0];
            int i6 = 0;
            for (int i7 = 1; i7 <= i5; i7++) {
                double d2 = dArr[i7];
                if (d2 > d) {
                    i6 = i7;
                    d = d2;
                }
            }
            if (d <= 0.0d) {
                i2 = i5 + 1;
                break;
            }
            i5++;
            i4 = i6;
        }
        return new C5225c(i, i2);
    }

    /* renamed from: d */
    public void m23898d() {
        int i = 1;
        while (true) {
            int i2 = 33;
            if (i >= 33) {
                return;
            }
            int[] iArr = new int[33];
            int[] iArr2 = new int[33];
            int[] iArr3 = new int[33];
            int[] iArr4 = new int[33];
            double[] dArr = new double[33];
            int i3 = 1;
            while (i3 < i2) {
                int i4 = 0;
                int i5 = 0;
                double d = 0.0d;
                int i6 = 1;
                int i7 = 0;
                int i8 = 0;
                while (i6 < i2) {
                    int m23893g = m23893g(i, i3, i6);
                    int i9 = i4 + this.f30959a[m23893g];
                    i7 += this.f30960b[m23893g];
                    i8 += this.f30961c[m23893g];
                    i5 += this.f30962d[m23893g];
                    d += this.f30963e[m23893g];
                    iArr[i6] = iArr[i6] + i9;
                    iArr2[i6] = iArr2[i6] + i7;
                    iArr3[i6] = iArr3[i6] + i8;
                    iArr4[i6] = iArr4[i6] + i5;
                    dArr[i6] = dArr[i6] + d;
                    int m23893g2 = m23893g(i - 1, i3, i6);
                    int[] iArr5 = this.f30959a;
                    iArr5[m23893g] = iArr5[m23893g2] + iArr[i6];
                    int[] iArr6 = this.f30960b;
                    iArr6[m23893g] = iArr6[m23893g2] + iArr2[i6];
                    int[] iArr7 = this.f30961c;
                    iArr7[m23893g] = iArr7[m23893g2] + iArr3[i6];
                    int[] iArr8 = this.f30962d;
                    iArr8[m23893g] = iArr8[m23893g2] + iArr4[i6];
                    double[] dArr2 = this.f30963e;
                    dArr2[m23893g] = dArr2[m23893g2] + dArr[i6];
                    i6++;
                    i4 = i9;
                    i2 = 33;
                }
                i3++;
                i2 = 33;
            }
            i++;
        }
    }

    /* renamed from: e */
    public List<Integer> m23899e(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            C5224b c5224b = this.f30964f[i2];
            int m23895k = m23895k(c5224b, this.f30959a);
            if (m23895k > 0) {
                int m23895k2 = m23895k(c5224b, this.f30960b) / m23895k;
                int m23895k3 = m23895k(c5224b, this.f30961c) / m23895k;
                arrayList.add(Integer.valueOf(((m23895k(c5224b, this.f30962d) / m23895k) & 255) | ((m23895k2 & 255) << 16) | (-16777216) | ((m23895k3 & 255) << 8)));
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public Boolean m23900f(C5224b c5224b, C5224b c5224b2) {
        int m23895k = m23895k(c5224b, this.f30960b);
        int m23895k2 = m23895k(c5224b, this.f30961c);
        int m23895k3 = m23895k(c5224b, this.f30962d);
        int m23895k4 = m23895k(c5224b, this.f30959a);
        Direction direction = Direction.RED;
        C5226d m23901h = m23901h(c5224b, direction, c5224b.f30966a + 1, c5224b.f30967b, m23895k, m23895k2, m23895k3, m23895k4);
        Direction direction2 = Direction.GREEN;
        C5226d m23901h2 = m23901h(c5224b, direction2, c5224b.f30968c + 1, c5224b.f30969d, m23895k, m23895k2, m23895k3, m23895k4);
        Direction direction3 = Direction.BLUE;
        C5226d m23901h3 = m23901h(c5224b, direction3, c5224b.f30970e + 1, c5224b.f30971f, m23895k, m23895k2, m23895k3, m23895k4);
        double d = m23901h.f30975b;
        double d2 = m23901h2.f30975b;
        double d3 = m23901h3.f30975b;
        if (d < d2 || d < d3) {
            direction = (d2 < d || d2 < d3) ? direction3 : direction2;
        } else if (m23901h.f30974a < 0) {
            return Boolean.FALSE;
        }
        c5224b2.f30967b = c5224b.f30967b;
        c5224b2.f30969d = c5224b.f30969d;
        c5224b2.f30971f = c5224b.f30971f;
        int i = C5223a.f30965a[direction.ordinal()];
        if (i == 1) {
            int i2 = m23901h.f30974a;
            c5224b.f30967b = i2;
            c5224b2.f30966a = i2;
            c5224b2.f30968c = c5224b.f30968c;
            c5224b2.f30970e = c5224b.f30970e;
        } else if (i == 2) {
            int i3 = m23901h2.f30974a;
            c5224b.f30969d = i3;
            c5224b2.f30966a = c5224b.f30966a;
            c5224b2.f30968c = i3;
            c5224b2.f30970e = c5224b.f30970e;
        } else if (i == 3) {
            int i4 = m23901h3.f30974a;
            c5224b.f30971f = i4;
            c5224b2.f30966a = c5224b.f30966a;
            c5224b2.f30968c = c5224b.f30968c;
            c5224b2.f30970e = i4;
        }
        c5224b.f30972g = (c5224b.f30967b - c5224b.f30966a) * (c5224b.f30969d - c5224b.f30968c) * (c5224b.f30971f - c5224b.f30970e);
        c5224b2.f30972g = (c5224b2.f30967b - c5224b2.f30966a) * (c5224b2.f30969d - c5224b2.f30968c) * (c5224b2.f30971f - c5224b2.f30970e);
        return Boolean.TRUE;
    }

    /* renamed from: h */
    public C5226d m23901h(C5224b c5224b, Direction direction, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        QuantizerWu quantizerWu = this;
        C5224b c5224b2 = c5224b;
        Direction direction2 = direction;
        int m23892a = m23892a(c5224b2, direction2, quantizerWu.f30960b);
        int m23892a2 = m23892a(c5224b2, direction2, quantizerWu.f30961c);
        int m23892a3 = m23892a(c5224b2, direction2, quantizerWu.f30962d);
        int m23892a4 = m23892a(c5224b2, direction2, quantizerWu.f30959a);
        int i8 = -1;
        double d = 0.0d;
        int i9 = i;
        while (i9 < i2) {
            int m23894i = m23894i(c5224b2, direction2, i9, quantizerWu.f30960b) + m23892a;
            int m23894i2 = m23894i(c5224b2, direction2, i9, quantizerWu.f30961c) + m23892a2;
            int m23894i3 = m23894i(c5224b2, direction2, i9, quantizerWu.f30962d) + m23892a3;
            int m23894i4 = m23894i(c5224b2, direction2, i9, quantizerWu.f30959a) + m23892a4;
            if (m23894i4 == 0) {
                i7 = m23892a;
            } else {
                i7 = m23892a;
                double d2 = (((m23894i * m23894i) + (m23894i2 * m23894i2)) + (m23894i3 * m23894i3)) / m23894i4;
                int i10 = i3 - m23894i;
                int i11 = i4 - m23894i2;
                int i12 = i5 - m23894i3;
                int i13 = i6 - m23894i4;
                if (i13 != 0) {
                    double d3 = d2 + ((((i10 * i10) + (i11 * i11)) + (i12 * i12)) / i13);
                    if (d3 > d) {
                        d = d3;
                        i8 = i9;
                    }
                }
            }
            i9++;
            quantizerWu = this;
            c5224b2 = c5224b;
            direction2 = direction;
            m23892a = i7;
        }
        return new C5226d(i8, d);
    }

    /* renamed from: j */
    public double m23902j(C5224b c5224b) {
        int m23895k = m23895k(c5224b, this.f30960b);
        int m23895k2 = m23895k(c5224b, this.f30961c);
        int m23895k3 = m23895k(c5224b, this.f30962d);
        return (((((((this.f30963e[m23893g(c5224b.f30967b, c5224b.f30969d, c5224b.f30971f)] - this.f30963e[m23893g(c5224b.f30967b, c5224b.f30969d, c5224b.f30970e)]) - this.f30963e[m23893g(c5224b.f30967b, c5224b.f30968c, c5224b.f30971f)]) + this.f30963e[m23893g(c5224b.f30967b, c5224b.f30968c, c5224b.f30970e)]) - this.f30963e[m23893g(c5224b.f30966a, c5224b.f30969d, c5224b.f30971f)]) + this.f30963e[m23893g(c5224b.f30966a, c5224b.f30969d, c5224b.f30970e)]) + this.f30963e[m23893g(c5224b.f30966a, c5224b.f30968c, c5224b.f30971f)]) - this.f30963e[m23893g(c5224b.f30966a, c5224b.f30968c, c5224b.f30970e)]) - ((((m23895k * m23895k) + (m23895k2 * m23895k2)) + (m23895k3 * m23895k3)) / m23895k(c5224b, this.f30959a));
    }

    @Override // com.sunia.HTREnginev2.ial
    public QuantizerResult quantize(int[] iArr, int i) {
        m23896b(new QuantizerMap().quantize(iArr, i).colorToCount);
        m23898d();
        List<Integer> m23899e = m23899e(m23897c(i).f30973a);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Integer> it2 = m23899e.iterator();
        while (it2.hasNext()) {
            linkedHashMap.put(Integer.valueOf(it2.next().intValue()), 0);
        }
        return new QuantizerResult(linkedHashMap);
    }

    /* renamed from: com.google.android.material.color.utilities.QuantizerWu$b */
    /* loaded from: classes6.dex */
    public static final class C5224b {

        /* renamed from: a */
        public int f30966a;

        /* renamed from: b */
        public int f30967b;

        /* renamed from: c */
        public int f30968c;

        /* renamed from: d */
        public int f30969d;

        /* renamed from: e */
        public int f30970e;

        /* renamed from: f */
        public int f30971f;

        /* renamed from: g */
        public int f30972g;

        public C5224b() {
            this.f30966a = 0;
            this.f30967b = 0;
            this.f30968c = 0;
            this.f30969d = 0;
            this.f30970e = 0;
            this.f30971f = 0;
            this.f30972g = 0;
        }

        public /* synthetic */ C5224b(C5223a c5223a) {
            this();
        }
    }
}
