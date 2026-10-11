package com.sunia.HTREnginev2;

import com.google.zxing.FormatException;

/* loaded from: classes4.dex */
public final class uve extends vve {

    /* renamed from: d */
    public static final int f86878d = 10;

    /* renamed from: b */
    public final int f86879b;

    /* renamed from: c */
    public final int f86880c;

    public uve(int i, int i2, int i3) throws FormatException {
        super(i);
        if (i2 < 0 || i2 > 10 || i3 < 0 || i3 > 10) {
            throw FormatException.getFormatInstance();
        }
        this.f86879b = i2;
        this.f86880c = i3;
    }

    /* renamed from: b */
    public int m57663b() {
        return this.f86879b;
    }

    /* renamed from: c */
    public int m57664c() {
        return this.f86880c;
    }

    /* renamed from: d */
    public int m57665d() {
        return (this.f86879b * 10) + this.f86880c;
    }

    /* renamed from: e */
    public boolean m57666e() {
        return this.f86879b == 10 || this.f86880c == 10;
    }

    /* renamed from: f */
    public boolean m57667f() {
        return this.f86879b == 10;
    }

    /* renamed from: g */
    public boolean m57668g() {
        return this.f86880c == 10;
    }
}
