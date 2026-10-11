package com.google.android.material.drawable;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.DrawableWrapperCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class ScaledDrawableWrapper extends DrawableWrapperCompat {

    /* renamed from: f */
    public final int f31247f;

    /* renamed from: g */
    public final int f31248g;

    public ScaledDrawableWrapper(@NonNull Drawable drawable, int i, int i2) {
        super(drawable);
        this.f31247f = i;
        this.f31248g = i2;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f31248g;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f31247f;
    }
}
