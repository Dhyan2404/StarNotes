package com.twelvemonkeys.util;

import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public class StringTokenIterator extends AbstractTokenIterator {
    public static final int FORWARD = 1;
    public static final int REVERSE = -1;

    /* renamed from: e */
    public final String f94366e;

    /* renamed from: f */
    public final char[] f94367f;

    /* renamed from: g */
    public int f94368g;

    /* renamed from: h */
    public final int f94369h;

    /* renamed from: i */
    public String f94370i;

    /* renamed from: j */
    public String f94371j;

    /* renamed from: k */
    public final boolean f94372k;

    /* renamed from: l */
    public final boolean f94373l;

    /* renamed from: m */
    public final boolean f94374m;

    /* renamed from: n */
    public final char f94375n;

    public StringTokenIterator(String str) {
        this(str, " \t\n\r\f".toCharArray(), 1, false, false);
    }

    /* renamed from: d */
    public static char m60756d(char[] cArr) {
        if (cArr == null) {
            return (char) 0;
        }
        char c = 0;
        for (char c2 : cArr) {
            if (c < c2) {
                c = c2;
            }
        }
        return c;
    }

    /* renamed from: g */
    public static char[] m60757g(String str) {
        if (str != null) {
            return str.toCharArray();
        }
        throw new IllegalArgumentException("delimiters == null");
    }

    /* renamed from: a */
    public final String m60758a() {
        int m60761e = m60761e();
        this.f94370i = this.f94366e.substring(this.f94368g, m60761e);
        if (this.f94372k && m60761e >= 0 && m60761e < this.f94369h) {
            this.f94371j = this.f94366e.substring(m60761e, m60761e + 1);
        }
        this.f94368g = m60761e + 1;
        return (this.f94370i.length() != 0 || this.f94373l) ? this.f94370i : m60759b();
    }

    /* renamed from: b */
    public final String m60759b() {
        String str = this.f94371j;
        if (str != null) {
            this.f94370i = str;
            this.f94371j = null;
            return str;
        }
        if (this.f94368g >= this.f94369h) {
            return null;
        }
        return this.f94374m ? m60760c() : m60758a();
    }

    /* renamed from: c */
    public final String m60760c() {
        int m60762f = m60762f();
        int i = m60762f + 1;
        this.f94370i = this.f94366e.substring(i, this.f94369h - this.f94368g);
        if (this.f94372k && m60762f >= 0 && m60762f < this.f94369h) {
            this.f94371j = this.f94366e.substring(m60762f, i);
        }
        this.f94368g = this.f94369h - m60762f;
        return (this.f94370i.length() != 0 || this.f94373l) ? this.f94370i : m60759b();
    }

    /* renamed from: e */
    public final int m60761e() {
        int i = this.f94368g;
        while (i < this.f94369h) {
            char charAt = this.f94366e.charAt(i);
            if (charAt <= this.f94375n) {
                for (char c : this.f94367f) {
                    if (charAt == c) {
                        return i;
                    }
                }
            }
            i++;
        }
        return i;
    }

    /* renamed from: f */
    public final int m60762f() {
        int i = (this.f94369h - 1) - this.f94368g;
        while (i >= 0) {
            char charAt = this.f94366e.charAt(i);
            if (charAt <= this.f94375n) {
                for (char c : this.f94367f) {
                    if (charAt == c) {
                        return i;
                    }
                }
            }
            i--;
        }
        return i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return (this.f94370i == null && m60759b() == null) ? false : true;
    }

    @Override // com.twelvemonkeys.util.TokenIterator
    public void reset() {
        this.f94368g = 0;
        this.f94370i = null;
        this.f94371j = null;
    }

    public StringTokenIterator(String str, String str2) {
        this(str, m60757g(str2), 1, false, false);
    }

    @Override // java.util.Iterator
    public String next() {
        if (hasNext()) {
            String str = this.f94370i;
            this.f94370i = m60759b();
            return str;
        }
        throw new NoSuchElementException();
    }

    public StringTokenIterator(String str, String str2, int i) {
        this(str, m60757g(str2), i, false, false);
    }

    public StringTokenIterator(String str, String str2, boolean z) {
        this(str, m60757g(str2), 1, z, false);
    }

    public StringTokenIterator(String str, String str2, int i, boolean z, boolean z2) {
        this(str, m60757g(str2), i, z, z2);
    }

    public StringTokenIterator(String str, char[] cArr, int i, boolean z, boolean z2) {
        if (str != null) {
            this.f94366e = str;
            this.f94369h = str.length();
            this.f94367f = cArr;
            this.f94372k = z;
            this.f94374m = i == -1;
            this.f94373l = z2;
            this.f94375n = m60756d(cArr);
            reset();
            return;
        }
        throw new IllegalArgumentException("string == null");
    }
}
