package org.apache.commons.math3.dfp;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;

/* loaded from: classes12.dex */
public class DfpField implements Field<Dfp> {
    public static final int FLAG_DIV_ZERO = 2;
    public static final int FLAG_INEXACT = 16;
    public static final int FLAG_INVALID = 1;
    public static final int FLAG_OVERFLOW = 4;
    public static final int FLAG_UNDERFLOW = 8;

    /* renamed from: J */
    public static String f108022J;

    /* renamed from: O */
    public static String f108023O;

    /* renamed from: Q */
    public static String f108024Q;

    /* renamed from: Z */
    public static String f108025Z;

    /* renamed from: k0 */
    public static String f108026k0;

    /* renamed from: q0 */
    public static String f108027q0;

    /* renamed from: t0 */
    public static String f108028t0;

    /* renamed from: y */
    public static String f108029y;

    /* renamed from: z */
    public static String f108030z;

    /* renamed from: e */
    public final int f108031e;

    /* renamed from: f */
    public final Dfp f108032f;

    /* renamed from: g */
    public final Dfp f108033g;

    /* renamed from: h */
    public final Dfp f108034h;

    /* renamed from: i */
    public final Dfp f108035i;

    /* renamed from: j */
    public final Dfp[] f108036j;

    /* renamed from: k */
    public final Dfp f108037k;

    /* renamed from: l */
    public final Dfp f108038l;

    /* renamed from: m */
    public final Dfp f108039m;

    /* renamed from: n */
    public final Dfp f108040n;

    /* renamed from: o */
    public final Dfp[] f108041o;

    /* renamed from: p */
    public final Dfp f108042p;

    /* renamed from: q */
    public final Dfp[] f108043q;

    /* renamed from: r */
    public final Dfp f108044r;

    /* renamed from: s */
    public final Dfp[] f108045s;

    /* renamed from: t */
    public final Dfp f108046t;

    /* renamed from: u */
    public final Dfp[] f108047u;

    /* renamed from: v */
    public final Dfp f108048v;

    /* renamed from: w */
    public RoundingMode f108049w;

    /* renamed from: x */
    public int f108050x;

    /* loaded from: classes12.dex */
    public enum RoundingMode {
        ROUND_DOWN,
        ROUND_UP,
        ROUND_HALF_UP,
        ROUND_HALF_DOWN,
        ROUND_HALF_EVEN,
        ROUND_HALF_ODD,
        ROUND_CEIL,
        ROUND_FLOOR
    }

    public DfpField(int i) {
        this(i, true);
    }

    /* renamed from: a */
    public static Dfp m67541a(Dfp dfp, Dfp dfp2, Dfp dfp3) {
        Dfp sqrt = dfp2.sqrt();
        Dfp subtract = sqrt.subtract(dfp);
        Dfp add = dfp2.add(dfp2);
        Dfp multiply = dfp2.multiply(dfp3.subtract(dfp2.multiply(sqrt)));
        int i = 1;
        while (i < 20) {
            Dfp multiply2 = subtract.multiply(subtract);
            Dfp sqrt2 = dfp.subtract(multiply2.multiply(multiply2)).sqrt().sqrt();
            Dfp divide = dfp.subtract(sqrt2).divide(dfp.add(sqrt2));
            dfp2 = dfp2.multiply(add);
            Dfp add2 = dfp.add(divide);
            Dfp multiply3 = add2.multiply(add2);
            multiply = multiply.multiply(multiply3.multiply(multiply3)).subtract(dfp2.multiply(divide).multiply(dfp.add(divide).add(divide.multiply(divide))));
            if (divide.equals(subtract)) {
                break;
            }
            i++;
            subtract = divide;
        }
        return dfp.divide(multiply);
    }

    /* renamed from: b */
    public static void m67542b(int i) {
        String str = f108029y;
        if (str == null || str.length() < i - 3) {
            DfpField dfpField = new DfpField(i, false);
            Dfp dfp = new Dfp(dfpField, 1);
            Dfp dfp2 = new Dfp(dfpField, 2);
            Dfp dfp3 = new Dfp(dfpField, 3);
            Dfp sqrt = dfp2.sqrt();
            f108029y = sqrt.toString();
            f108030z = dfp.divide(sqrt).toString();
            Dfp sqrt2 = dfp3.sqrt();
            f108022J = sqrt2.toString();
            f108023O = dfp.divide(sqrt2).toString();
            f108024Q = m67541a(dfp, dfp2, dfp3).toString();
            f108025Z = computeExp(dfp, dfp).toString();
            f108026k0 = computeLn(dfp2, dfp, dfp2).toString();
            f108027q0 = computeLn(new Dfp(dfpField, 5), dfp, dfp2).toString();
            f108028t0 = computeLn(new Dfp(dfpField, 10), dfp, dfp2).toString();
        }
    }

    public static Dfp computeExp(Dfp dfp, Dfp dfp2) {
        Dfp dfp3 = new Dfp(dfp2);
        Dfp dfp4 = new Dfp(dfp2);
        Dfp dfp5 = new Dfp(dfp2);
        Dfp dfp6 = new Dfp(dfp2);
        Dfp dfp7 = new Dfp(dfp2);
        for (int i = 0; i < 10000; i++) {
            dfp7 = dfp7.multiply(dfp);
            dfp3 = dfp3.add(dfp7.divide(dfp5));
            dfp6 = dfp6.add(dfp2);
            dfp5 = dfp5.multiply(dfp6);
            if (dfp3.equals(dfp4)) {
                break;
            }
            dfp4 = new Dfp(dfp3);
        }
        return dfp3;
    }

    public static Dfp computeLn(Dfp dfp, Dfp dfp2, Dfp dfp3) {
        Dfp divide = dfp.add(new Dfp(dfp.getField(), -1)).divide(dfp.add(dfp2));
        Dfp dfp4 = new Dfp(divide);
        Dfp dfp5 = new Dfp(divide);
        Dfp dfp6 = new Dfp(dfp4);
        int i = 1;
        for (int i2 = 0; i2 < 10000; i2++) {
            dfp5 = dfp5.multiply(divide).multiply(divide);
            i += 2;
            dfp4 = dfp4.add(dfp5.divide(i));
            if (dfp4.equals(dfp6)) {
                break;
            }
            dfp6 = new Dfp(dfp4);
        }
        return dfp4.multiply(dfp3);
    }

    /* renamed from: c */
    public final Dfp[] m67543c(String str) {
        Dfp[] dfpArr = new Dfp[2];
        int length = str.length();
        char[] cArr = new char[length];
        boolean z = true;
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= length) {
                i = 0;
                break;
            }
            char charAt = str.charAt(i);
            cArr[i] = charAt;
            if (charAt >= '1' && charAt <= '9') {
                z = false;
            }
            if (charAt == '.') {
                i2 += (400 - i2) % 4;
                z = false;
            }
            if (i2 == (this.f108031e / 2) * 4) {
                break;
            }
            if (charAt >= '0' && charAt <= '9' && !z) {
                i2++;
            }
            i++;
        }
        dfpArr[0] = new Dfp(this, new String(cArr, 0, i));
        for (int i3 = 0; i3 < length; i3++) {
            char charAt2 = str.charAt(i3);
            cArr[i3] = charAt2;
            if (charAt2 >= '0' && charAt2 <= '9' && i3 < i) {
                cArr[i3] = '0';
            }
        }
        dfpArr[1] = new Dfp(this, new String(cArr));
        return dfpArr;
    }

    public void clearIEEEFlags() {
        this.f108050x = 0;
    }

    public Dfp getE() {
        return this.f108042p;
    }

    public Dfp[] getESplit() {
        return (Dfp[]) this.f108043q.clone();
    }

    public int getIEEEFlags() {
        return this.f108050x;
    }

    public Dfp getLn10() {
        return this.f108048v;
    }

    public Dfp getLn2() {
        return this.f108044r;
    }

    public Dfp[] getLn2Split() {
        return (Dfp[]) this.f108045s.clone();
    }

    public Dfp getLn5() {
        return this.f108046t;
    }

    public Dfp[] getLn5Split() {
        return (Dfp[]) this.f108047u.clone();
    }

    public Dfp getPi() {
        return this.f108040n;
    }

    public Dfp[] getPiSplit() {
        return (Dfp[]) this.f108041o.clone();
    }

    public int getRadixDigits() {
        return this.f108031e;
    }

    public RoundingMode getRoundingMode() {
        return this.f108049w;
    }

    @Override // org.apache.commons.math3.Field
    public Class<? extends FieldElement<Dfp>> getRuntimeClass() {
        return Dfp.class;
    }

    public Dfp getSqr2() {
        return this.f108035i;
    }

    public Dfp getSqr2Reciprocal() {
        return this.f108037k;
    }

    public Dfp[] getSqr2Split() {
        return (Dfp[]) this.f108036j.clone();
    }

    public Dfp getSqr3() {
        return this.f108038l;
    }

    public Dfp getSqr3Reciprocal() {
        return this.f108039m;
    }

    public Dfp getTwo() {
        return this.f108034h;
    }

    public Dfp newDfp() {
        return new Dfp(this);
    }

    public void setIEEEFlags(int i) {
        this.f108050x = i & 31;
    }

    public void setIEEEFlagsBits(int i) {
        this.f108050x = (i & 31) | this.f108050x;
    }

    public void setRoundingMode(RoundingMode roundingMode) {
        this.f108049w = roundingMode;
    }

    public DfpField(int i, boolean z) {
        this.f108031e = i >= 13 ? (i + 3) / 4 : 4;
        this.f108049w = RoundingMode.ROUND_HALF_EVEN;
        this.f108050x = 0;
        this.f108032f = new Dfp(this, 0);
        this.f108033g = new Dfp(this, 1);
        this.f108034h = new Dfp(this, 2);
        if (z) {
            synchronized (DfpField.class) {
                m67542b(i < 67 ? 200 : i * 3);
                this.f108035i = new Dfp(this, f108029y);
                this.f108036j = m67543c(f108029y);
                this.f108037k = new Dfp(this, f108030z);
                this.f108038l = new Dfp(this, f108022J);
                this.f108039m = new Dfp(this, f108023O);
                this.f108040n = new Dfp(this, f108024Q);
                this.f108041o = m67543c(f108024Q);
                this.f108042p = new Dfp(this, f108025Z);
                this.f108043q = m67543c(f108025Z);
                this.f108044r = new Dfp(this, f108026k0);
                this.f108045s = m67543c(f108026k0);
                this.f108046t = new Dfp(this, f108027q0);
                this.f108047u = m67543c(f108027q0);
                this.f108048v = new Dfp(this, f108028t0);
            }
            return;
        }
        this.f108035i = null;
        this.f108036j = null;
        this.f108037k = null;
        this.f108038l = null;
        this.f108039m = null;
        this.f108040n = null;
        this.f108041o = null;
        this.f108042p = null;
        this.f108043q = null;
        this.f108044r = null;
        this.f108045s = null;
        this.f108046t = null;
        this.f108047u = null;
        this.f108048v = null;
    }

    @Override // org.apache.commons.math3.Field
    public Dfp getOne() {
        return this.f108033g;
    }

    @Override // org.apache.commons.math3.Field
    public Dfp getZero() {
        return this.f108032f;
    }

    public Dfp newDfp(byte b) {
        return new Dfp(this, b);
    }

    public Dfp newDfp(int i) {
        return new Dfp(this, i);
    }

    public Dfp newDfp(long j) {
        return new Dfp(this, j);
    }

    public Dfp newDfp(double d) {
        return new Dfp(this, d);
    }

    public Dfp newDfp(Dfp dfp) {
        return new Dfp(dfp);
    }

    public Dfp newDfp(String str) {
        return new Dfp(this, str);
    }

    public Dfp newDfp(byte b, byte b2) {
        return new Dfp(this, b, b2);
    }
}
