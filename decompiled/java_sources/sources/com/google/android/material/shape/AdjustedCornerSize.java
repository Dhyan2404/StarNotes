package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Arrays;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class AdjustedCornerSize implements CornerSize {

    /* renamed from: a */
    public final CornerSize f32192a;

    /* renamed from: b */
    public final float f32193b;

    public AdjustedCornerSize(float f, @NonNull CornerSize cornerSize) {
        while (cornerSize instanceof AdjustedCornerSize) {
            cornerSize = ((AdjustedCornerSize) cornerSize).f32192a;
            f += ((AdjustedCornerSize) cornerSize).f32193b;
        }
        this.f32192a = cornerSize;
        this.f32193b = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdjustedCornerSize)) {
            return false;
        }
        AdjustedCornerSize adjustedCornerSize = (AdjustedCornerSize) obj;
        return this.f32192a.equals(adjustedCornerSize.f32192a) && this.f32193b == adjustedCornerSize.f32193b;
    }

    @Override // com.google.android.material.shape.CornerSize
    public float getCornerSize(@NonNull RectF rectF) {
        return Math.max(0.0f, this.f32192a.getCornerSize(rectF) + this.f32193b);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f32192a, Float.valueOf(this.f32193b)});
    }
}
