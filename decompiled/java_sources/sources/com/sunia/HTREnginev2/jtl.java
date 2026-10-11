package com.sunia.HTREnginev2;

/* loaded from: classes3.dex */
public class jtl {

    /* renamed from: i */
    public static final int f74695i = Integer.MIN_VALUE;

    /* renamed from: a */
    public int f74696a = 0;

    /* renamed from: b */
    public int f74697b = 0;

    /* renamed from: c */
    public int f74698c = Integer.MIN_VALUE;

    /* renamed from: d */
    public int f74699d = Integer.MIN_VALUE;

    /* renamed from: e */
    public int f74700e = 0;

    /* renamed from: f */
    public int f74701f = 0;

    /* renamed from: g */
    public boolean f74702g = false;

    /* renamed from: h */
    public boolean f74703h = false;

    /* renamed from: a */
    public int m55044a() {
        return this.f74702g ? this.f74696a : this.f74697b;
    }

    /* renamed from: b */
    public int m55045b() {
        return this.f74696a;
    }

    /* renamed from: c */
    public int m55046c() {
        return this.f74697b;
    }

    /* renamed from: d */
    public int m55047d() {
        return this.f74702g ? this.f74697b : this.f74696a;
    }

    /* renamed from: e */
    public void m55048e(int i, int i2) {
        this.f74703h = false;
        if (i != Integer.MIN_VALUE) {
            this.f74700e = i;
            this.f74696a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f74701f = i2;
            this.f74697b = i2;
        }
    }

    /* renamed from: f */
    public void m55049f(boolean z) {
        if (z == this.f74702g) {
            return;
        }
        this.f74702g = z;
        if (!this.f74703h) {
            this.f74696a = this.f74700e;
            this.f74697b = this.f74701f;
            return;
        }
        if (z) {
            int i = this.f74699d;
            if (i == Integer.MIN_VALUE) {
                i = this.f74700e;
            }
            this.f74696a = i;
            int i2 = this.f74698c;
            if (i2 == Integer.MIN_VALUE) {
                i2 = this.f74701f;
            }
            this.f74697b = i2;
            return;
        }
        int i3 = this.f74698c;
        if (i3 == Integer.MIN_VALUE) {
            i3 = this.f74700e;
        }
        this.f74696a = i3;
        int i4 = this.f74699d;
        if (i4 == Integer.MIN_VALUE) {
            i4 = this.f74701f;
        }
        this.f74697b = i4;
    }

    /* renamed from: g */
    public void m55050g(int i, int i2) {
        this.f74698c = i;
        this.f74699d = i2;
        this.f74703h = true;
        if (this.f74702g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f74696a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f74697b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f74696a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f74697b = i2;
        }
    }
}
