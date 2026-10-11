package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.Comparable;
import java.lang.Number;
import java.math.RoundingMode;

@znf
@GwtIncompatible
/* loaded from: classes6.dex */
public abstract class uin<X extends Number & Comparable<X>> {

    /* renamed from: com.sunia.HTREnginev2.uin$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C14504a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f86526a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f86526a = iArr;
            try {
                iArr[RoundingMode.DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86526a[RoundingMode.HALF_EVEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86526a[RoundingMode.HALF_DOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f86526a[RoundingMode.HALF_UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f86526a[RoundingMode.FLOOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f86526a[RoundingMode.CEILING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f86526a[RoundingMode.UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f86526a[RoundingMode.UNNECESSARY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* renamed from: a */
    public abstract X mo27247a(X x, X x2);

    /* renamed from: b */
    public final double m57626b(X x, RoundingMode roundingMode) {
        X x2;
        double d;
        Preconditions.checkNotNull(x, "x");
        Preconditions.checkNotNull(roundingMode, Constants.ATTRNAME_MODE);
        double mo27248c = mo27248c(x);
        if (Double.isInfinite(mo27248c)) {
            switch (C14504a.f86526a[roundingMode.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    return mo27249d(x) * Double.MAX_VALUE;
                case 5:
                    return mo27248c == Double.POSITIVE_INFINITY ? Double.MAX_VALUE : Double.NEGATIVE_INFINITY;
                case 6:
                    return mo27248c == Double.POSITIVE_INFINITY ? Double.POSITIVE_INFINITY : -1.7976931348623157E308d;
                case 7:
                    return mo27248c;
                case 8:
                    String valueOf = String.valueOf(x);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 44);
                    sb.append(valueOf);
                    sb.append(" cannot be represented precisely as a double");
                    throw new ArithmeticException(sb.toString());
            }
        }
        X mo27250e = mo27250e(mo27248c, RoundingMode.UNNECESSARY);
        int compareTo = ((Comparable) x).compareTo(mo27250e);
        int[] iArr = C14504a.f86526a;
        switch (iArr[roundingMode.ordinal()]) {
            case 1:
                return mo27249d(x) >= 0 ? compareTo >= 0 ? mo27248c : sff.m57160f(mo27248c) : compareTo <= 0 ? mo27248c : Math.nextUp(mo27248c);
            case 2:
            case 3:
            case 4:
                if (compareTo >= 0) {
                    d = Math.nextUp(mo27248c);
                    if (d == Double.POSITIVE_INFINITY) {
                        return mo27248c;
                    }
                    x2 = mo27250e(d, RoundingMode.CEILING);
                } else {
                    double m57160f = sff.m57160f(mo27248c);
                    if (m57160f == Double.NEGATIVE_INFINITY) {
                        return mo27248c;
                    }
                    X mo27250e2 = mo27250e(m57160f, RoundingMode.FLOOR);
                    x2 = mo27250e;
                    mo27250e = mo27250e2;
                    d = mo27248c;
                    mo27248c = m57160f;
                }
                int compareTo2 = ((Comparable) mo27247a(x, mo27250e)).compareTo(mo27247a(x2, x));
                if (compareTo2 < 0) {
                    return mo27248c;
                }
                if (compareTo2 > 0) {
                    return d;
                }
                int i = iArr[roundingMode.ordinal()];
                if (i == 2) {
                    return (Double.doubleToRawLongBits(mo27248c) & 1) == 0 ? mo27248c : d;
                }
                if (i == 3) {
                    return mo27249d(x) >= 0 ? mo27248c : d;
                }
                if (i == 4) {
                    return mo27249d(x) >= 0 ? d : mo27248c;
                }
                throw new AssertionError("impossible");
            case 5:
                return compareTo >= 0 ? mo27248c : sff.m57160f(mo27248c);
            case 6:
                return compareTo <= 0 ? mo27248c : Math.nextUp(mo27248c);
            case 7:
                return mo27249d(x) >= 0 ? compareTo <= 0 ? mo27248c : Math.nextUp(mo27248c) : compareTo >= 0 ? mo27248c : sff.m57160f(mo27248c);
            case 8:
                ngj.m55753k(compareTo == 0);
                return mo27248c;
            default:
                throw new AssertionError("impossible");
        }
    }

    /* renamed from: c */
    public abstract double mo27248c(X x);

    /* renamed from: d */
    public abstract int mo27249d(X x);

    /* renamed from: e */
    public abstract X mo27250e(double d, RoundingMode roundingMode);
}
