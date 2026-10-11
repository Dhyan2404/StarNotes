package com.sunia.HTREnginev2;

import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
public final class mmi {

    /* renamed from: f */
    public static final int f77770f = 16;

    /* renamed from: a */
    public int f77771a = 0;

    /* renamed from: b */
    public int f77772b = -1;

    /* renamed from: c */
    public int f77773c = 0;

    /* renamed from: d */
    public int[] f77774d = new int[16];

    /* renamed from: e */
    public int f77775e;

    public mmi() {
        this.f77775e = r0.length - 1;
    }

    /* renamed from: a */
    public void m55658a(int i) {
        if (this.f77773c == this.f77774d.length) {
            m55661d();
        }
        int i2 = (this.f77772b + 1) & this.f77775e;
        this.f77772b = i2;
        this.f77774d[i2] = i;
        this.f77773c++;
    }

    /* renamed from: b */
    public int m55659b() {
        return this.f77774d.length;
    }

    /* renamed from: c */
    public void m55660c() {
        this.f77771a = 0;
        this.f77772b = -1;
        this.f77773c = 0;
    }

    /* renamed from: d */
    public final void m55661d() {
        int[] iArr = this.f77774d;
        int length = iArr.length << 1;
        if (length < 0) {
            throw new IllegalStateException();
        }
        int[] iArr2 = new int[length];
        int length2 = iArr.length;
        int i = this.f77771a;
        int i2 = length2 - i;
        System.arraycopy(iArr, i, iArr2, 0, i2);
        System.arraycopy(this.f77774d, 0, iArr2, i2, i);
        this.f77771a = 0;
        this.f77772b = this.f77773c - 1;
        this.f77774d = iArr2;
        this.f77775e = iArr2.length - 1;
    }

    /* renamed from: e */
    public boolean m55662e() {
        return this.f77773c == 0;
    }

    /* renamed from: f */
    public int m55663f() {
        int i = this.f77773c;
        if (i == 0) {
            throw new NoSuchElementException();
        }
        int[] iArr = this.f77774d;
        int i2 = this.f77771a;
        int i3 = iArr[i2];
        this.f77771a = (i2 + 1) & this.f77775e;
        this.f77773c = i - 1;
        return i3;
    }

    /* renamed from: g */
    public int m55664g() {
        return this.f77773c;
    }
}
