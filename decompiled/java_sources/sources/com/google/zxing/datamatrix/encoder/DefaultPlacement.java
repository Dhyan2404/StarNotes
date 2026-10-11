package com.google.zxing.datamatrix.encoder;

import java.util.Arrays;

/* loaded from: classes4.dex */
public class DefaultPlacement {

    /* renamed from: a */
    public final CharSequence f38467a;

    /* renamed from: b */
    public final int f38468b;

    /* renamed from: c */
    public final int f38469c;

    /* renamed from: d */
    public final byte[] f38470d;

    public DefaultPlacement(CharSequence charSequence, int i, int i2) {
        this.f38467a = charSequence;
        this.f38469c = i;
        this.f38468b = i2;
        byte[] bArr = new byte[i * i2];
        this.f38470d = bArr;
        Arrays.fill(bArr, (byte) -1);
    }

    /* renamed from: a */
    public final void m30569a(int i) {
        m30577i(this.f38468b - 1, 0, i, 1);
        m30577i(this.f38468b - 1, 1, i, 2);
        m30577i(this.f38468b - 1, 2, i, 3);
        m30577i(0, this.f38469c - 2, i, 4);
        m30577i(0, this.f38469c - 1, i, 5);
        m30577i(1, this.f38469c - 1, i, 6);
        m30577i(2, this.f38469c - 1, i, 7);
        m30577i(3, this.f38469c - 1, i, 8);
    }

    /* renamed from: b */
    public final void m30570b(int i) {
        m30577i(this.f38468b - 3, 0, i, 1);
        m30577i(this.f38468b - 2, 0, i, 2);
        m30577i(this.f38468b - 1, 0, i, 3);
        m30577i(0, this.f38469c - 4, i, 4);
        m30577i(0, this.f38469c - 3, i, 5);
        m30577i(0, this.f38469c - 2, i, 6);
        m30577i(0, this.f38469c - 1, i, 7);
        m30577i(1, this.f38469c - 1, i, 8);
    }

    /* renamed from: c */
    public final void m30571c(int i) {
        m30577i(this.f38468b - 3, 0, i, 1);
        m30577i(this.f38468b - 2, 0, i, 2);
        m30577i(this.f38468b - 1, 0, i, 3);
        m30577i(0, this.f38469c - 2, i, 4);
        m30577i(0, this.f38469c - 1, i, 5);
        m30577i(1, this.f38469c - 1, i, 6);
        m30577i(2, this.f38469c - 1, i, 7);
        m30577i(3, this.f38469c - 1, i, 8);
    }

    /* renamed from: d */
    public final void m30572d(int i) {
        m30577i(this.f38468b - 1, 0, i, 1);
        m30577i(this.f38468b - 1, this.f38469c - 1, i, 2);
        m30577i(0, this.f38469c - 3, i, 3);
        m30577i(0, this.f38469c - 2, i, 4);
        m30577i(0, this.f38469c - 1, i, 5);
        m30577i(1, this.f38469c - 3, i, 6);
        m30577i(1, this.f38469c - 2, i, 7);
        m30577i(1, this.f38469c - 1, i, 8);
    }

    /* renamed from: e */
    public final byte[] m30573e() {
        return this.f38470d;
    }

    /* renamed from: f */
    public final int m30574f() {
        return this.f38469c;
    }

    /* renamed from: g */
    public final int m30575g() {
        return this.f38468b;
    }

    public final boolean getBit(int i, int i2) {
        return this.f38470d[(i2 * this.f38469c) + i] == 1;
    }

    /* renamed from: h */
    public final boolean m30576h(int i, int i2) {
        return this.f38470d[(i2 * this.f38469c) + i] >= 0;
    }

    /* renamed from: i */
    public final void m30577i(int i, int i2, int i3, int i4) {
        if (i < 0) {
            int i5 = this.f38468b;
            i += i5;
            i2 += 4 - ((i5 + 4) % 8);
        }
        if (i2 < 0) {
            int i6 = this.f38469c;
            i2 += i6;
            i += 4 - ((i6 + 4) % 8);
        }
        m30578j(i2, i, (this.f38467a.charAt(i3) & (1 << (8 - i4))) != 0);
    }

    /* renamed from: j */
    public final void m30578j(int i, int i2, boolean z) {
        this.f38470d[(i2 * this.f38469c) + i] = z ? (byte) 1 : (byte) 0;
    }

    /* renamed from: k */
    public final void m30579k(int i, int i2, int i3) {
        int i4 = i - 2;
        int i5 = i2 - 2;
        m30577i(i4, i5, i3, 1);
        int i6 = i2 - 1;
        m30577i(i4, i6, i3, 2);
        int i7 = i - 1;
        m30577i(i7, i5, i3, 3);
        m30577i(i7, i6, i3, 4);
        m30577i(i7, i2, i3, 5);
        m30577i(i, i5, i3, 6);
        m30577i(i, i6, i3, 7);
        m30577i(i, i2, i3, 8);
    }

    public final void place() {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 4;
        while (true) {
            if (i5 == this.f38468b && i3 == 0) {
                m30569a(i4);
                i4++;
            }
            if (i5 == this.f38468b - 2 && i3 == 0 && this.f38469c % 4 != 0) {
                m30570b(i4);
                i4++;
            }
            if (i5 == this.f38468b - 2 && i3 == 0 && this.f38469c % 8 == 4) {
                m30571c(i4);
                i4++;
            }
            if (i5 == this.f38468b + 4 && i3 == 2 && this.f38469c % 8 == 0) {
                m30572d(i4);
                i4++;
            }
            do {
                if (i5 < this.f38468b && i3 >= 0 && !m30576h(i3, i5)) {
                    m30579k(i5, i3, i4);
                    i4++;
                }
                i5 -= 2;
                i3 += 2;
                if (i5 < 0) {
                    break;
                }
            } while (i3 < this.f38469c);
            int i6 = i5 + 1;
            int i7 = i3 + 3;
            do {
                if (i6 >= 0 && i7 < this.f38469c && !m30576h(i7, i6)) {
                    m30579k(i6, i7, i4);
                    i4++;
                }
                i6 += 2;
                i7 -= 2;
                i = this.f38468b;
                if (i6 >= i) {
                    break;
                }
            } while (i7 >= 0);
            i5 = i6 + 3;
            i3 = i7 + 1;
            if (i5 >= i && i3 >= (i2 = this.f38469c)) {
                break;
            }
        }
        if (m30576h(i2 - 1, i - 1)) {
            return;
        }
        m30578j(this.f38469c - 1, this.f38468b - 1, true);
        m30578j(this.f38469c - 2, this.f38468b - 2, true);
    }
}
