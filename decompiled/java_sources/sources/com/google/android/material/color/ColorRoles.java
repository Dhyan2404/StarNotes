package com.google.android.material.color;

import androidx.annotation.ColorInt;

/* loaded from: classes6.dex */
public final class ColorRoles {

    /* renamed from: a */
    public final int f30867a;

    /* renamed from: b */
    public final int f30868b;

    /* renamed from: c */
    public final int f30869c;

    /* renamed from: d */
    public final int f30870d;

    public ColorRoles(@ColorInt int i, @ColorInt int i2, @ColorInt int i3, @ColorInt int i4) {
        this.f30867a = i;
        this.f30868b = i2;
        this.f30869c = i3;
        this.f30870d = i4;
    }

    @ColorInt
    public int getAccent() {
        return this.f30867a;
    }

    @ColorInt
    public int getAccentContainer() {
        return this.f30869c;
    }

    @ColorInt
    public int getOnAccent() {
        return this.f30868b;
    }

    @ColorInt
    public int getOnAccentContainer() {
        return this.f30870d;
    }
}
