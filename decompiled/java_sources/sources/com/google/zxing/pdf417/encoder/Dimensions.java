package com.google.zxing.pdf417.encoder;

/* loaded from: classes4.dex */
public final class Dimensions {

    /* renamed from: a */
    public final int f38721a;

    /* renamed from: b */
    public final int f38722b;

    /* renamed from: c */
    public final int f38723c;

    /* renamed from: d */
    public final int f38724d;

    public Dimensions(int i, int i2, int i3, int i4) {
        this.f38721a = i;
        this.f38722b = i2;
        this.f38723c = i3;
        this.f38724d = i4;
    }

    public int getMaxCols() {
        return this.f38722b;
    }

    public int getMaxRows() {
        return this.f38724d;
    }

    public int getMinCols() {
        return this.f38721a;
    }

    public int getMinRows() {
        return this.f38723c;
    }
}
