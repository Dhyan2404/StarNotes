package com.squareup.okhttp.internal.spdy;

import java.util.Arrays;

/* loaded from: classes9.dex */
public final class Settings {

    /* renamed from: e */
    public static final int f63879e = 65536;

    /* renamed from: f */
    public static final int f63880f = 1;

    /* renamed from: g */
    public static final int f63881g = 1;

    /* renamed from: h */
    public static final int f63882h = 2;

    /* renamed from: i */
    public static final int f63883i = 1;

    /* renamed from: j */
    public static final int f63884j = 1;

    /* renamed from: k */
    public static final int f63885k = 2;

    /* renamed from: l */
    public static final int f63886l = 2;

    /* renamed from: m */
    public static final int f63887m = 3;

    /* renamed from: n */
    public static final int f63888n = 4;

    /* renamed from: o */
    public static final int f63889o = 5;

    /* renamed from: p */
    public static final int f63890p = 5;

    /* renamed from: q */
    public static final int f63891q = 6;

    /* renamed from: r */
    public static final int f63892r = 6;

    /* renamed from: s */
    public static final int f63893s = 7;

    /* renamed from: t */
    public static final int f63894t = 8;

    /* renamed from: u */
    public static final int f63895u = 10;

    /* renamed from: v */
    public static final int f63896v = 10;

    /* renamed from: w */
    public static final int f63897w = 1;

    /* renamed from: a */
    public int f63898a;

    /* renamed from: b */
    public int f63899b;

    /* renamed from: c */
    public int f63900c;

    /* renamed from: d */
    public final int[] f63901d = new int[10];

    /* renamed from: a */
    public void m52753a() {
        this.f63900c = 0;
        this.f63899b = 0;
        this.f63898a = 0;
        Arrays.fill(this.f63901d, 0);
    }

    /* renamed from: b */
    public int m52754b(int i) {
        int i2 = m52769q(i) ? 2 : 0;
        return m52772t(i) ? i2 | 1 : i2;
    }

    /* renamed from: c */
    public int m52755c(int i) {
        return this.f63901d[i];
    }

    /* renamed from: d */
    public int m52756d(int i) {
        return (this.f63898a & 256) != 0 ? this.f63901d[8] : i;
    }

    /* renamed from: e */
    public int m52757e(int i) {
        return (this.f63898a & 32) != 0 ? this.f63901d[5] : i;
    }

    /* renamed from: f */
    public int m52758f(int i) {
        return (this.f63898a & 4) != 0 ? this.f63901d[2] : i;
    }

    /* renamed from: g */
    public int m52759g(int i) {
        return (this.f63898a & 64) != 0 ? this.f63901d[6] : i;
    }

    /* renamed from: h */
    public boolean m52760h(boolean z) {
        return ((this.f63898a & 4) != 0 ? this.f63901d[2] : z ? 1 : 0) == 1;
    }

    /* renamed from: i */
    public int m52761i() {
        if ((this.f63898a & 2) != 0) {
            return this.f63901d[1];
        }
        return -1;
    }

    /* renamed from: j */
    public int m52762j(int i) {
        return (this.f63898a & 128) != 0 ? this.f63901d[7] : i;
    }

    /* renamed from: k */
    public int m52763k(int i) {
        return (this.f63898a & 16) != 0 ? this.f63901d[4] : i;
    }

    /* renamed from: l */
    public int m52764l(int i) {
        return (this.f63898a & 32) != 0 ? this.f63901d[5] : i;
    }

    /* renamed from: m */
    public int m52765m(int i) {
        return (this.f63898a & 64) != 0 ? this.f63901d[6] : i;
    }

    /* renamed from: n */
    public int m52766n(int i) {
        return (this.f63898a & 8) != 0 ? this.f63901d[3] : i;
    }

    /* renamed from: o */
    public int m52767o(int i) {
        return (this.f63898a & 2) != 0 ? this.f63901d[1] : i;
    }

    /* renamed from: p */
    public boolean m52768p() {
        return (((this.f63898a & 1024) != 0 ? this.f63901d[10] : 0) & 1) != 0;
    }

    /* renamed from: q */
    public boolean m52769q(int i) {
        return (this.f63900c & (1 << i)) != 0;
    }

    /* renamed from: r */
    public boolean m52770r(int i) {
        return (this.f63898a & (1 << i)) != 0;
    }

    /* renamed from: s */
    public void m52771s(Settings settings) {
        for (int i = 0; i < 10; i++) {
            if (settings.m52770r(i)) {
                m52773u(i, settings.m52754b(i), settings.m52755c(i));
            }
        }
    }

    /* renamed from: t */
    public boolean m52772t(int i) {
        return (this.f63899b & (1 << i)) != 0;
    }

    /* renamed from: u */
    public Settings m52773u(int i, int i2, int i3) {
        int[] iArr = this.f63901d;
        if (i >= iArr.length) {
            return this;
        }
        int i4 = 1 << i;
        this.f63898a |= i4;
        if ((i2 & 1) != 0) {
            this.f63899b |= i4;
        } else {
            this.f63899b &= ~i4;
        }
        if ((i2 & 2) != 0) {
            this.f63900c |= i4;
        } else {
            this.f63900c &= ~i4;
        }
        iArr[i] = i3;
        return this;
    }

    /* renamed from: v */
    public int m52774v() {
        return Integer.bitCount(this.f63898a);
    }
}
