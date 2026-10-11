package com.sunia.HTREnginev2;

import com.google.firebase.installations.local.IidStore;

/* loaded from: classes4.dex */
public final class twd {

    /* renamed from: f */
    public static final int f85833f = -1;

    /* renamed from: a */
    public final int f85834a;

    /* renamed from: b */
    public final int f85835b;

    /* renamed from: c */
    public final int f85836c;

    /* renamed from: d */
    public final int f85837d;

    /* renamed from: e */
    public int f85838e = -1;

    public twd(int i, int i2, int i3, int i4) {
        this.f85834a = i;
        this.f85835b = i2;
        this.f85836c = i3;
        this.f85837d = i4;
    }

    /* renamed from: a */
    public int m57466a() {
        return this.f85836c;
    }

    /* renamed from: b */
    public int m57467b() {
        return this.f85835b;
    }

    /* renamed from: c */
    public int m57468c() {
        return this.f85838e;
    }

    /* renamed from: d */
    public int m57469d() {
        return this.f85834a;
    }

    /* renamed from: e */
    public int m57470e() {
        return this.f85837d;
    }

    /* renamed from: f */
    public int m57471f() {
        return this.f85835b - this.f85834a;
    }

    /* renamed from: g */
    public boolean m57472g() {
        return m57473h(this.f85838e);
    }

    /* renamed from: h */
    public boolean m57473h(int i) {
        return i != -1 && this.f85836c == (i % 3) * 3;
    }

    /* renamed from: i */
    public void m57474i(int i) {
        this.f85838e = i;
    }

    /* renamed from: j */
    public void m57475j() {
        this.f85838e = ((this.f85837d / 30) * 3) + (this.f85836c / 3);
    }

    public String toString() {
        return this.f85838e + IidStore.f35940g + this.f85837d;
    }
}
