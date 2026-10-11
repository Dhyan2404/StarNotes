package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Arrays;

/* loaded from: classes6.dex */
public final class RelativeCornerSize implements CornerSize {

    /* renamed from: a */
    public final float f32258a;

    public RelativeCornerSize(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        this.f32258a = f;
    }

    /* renamed from: a */
    public static float m24736a(@NonNull RectF rectF) {
        return Math.min(rectF.width(), rectF.height());
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static RelativeCornerSize createFromCornerSize(@NonNull RectF rectF, @NonNull CornerSize cornerSize) {
        return cornerSize instanceof RelativeCornerSize ? (RelativeCornerSize) cornerSize : new RelativeCornerSize(cornerSize.getCornerSize(rectF) / m24736a(rectF));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RelativeCornerSize) && this.f32258a == ((RelativeCornerSize) obj).f32258a;
    }

    @Override // com.google.android.material.shape.CornerSize
    public float getCornerSize(@NonNull RectF rectF) {
        return this.f32258a * m24736a(rectF);
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float getRelativePercent() {
        return this.f32258a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f32258a)});
    }
}
