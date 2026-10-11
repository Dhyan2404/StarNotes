package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import java.util.Arrays;

/* loaded from: classes6.dex */
public final class AbsoluteCornerSize implements CornerSize {

    /* renamed from: a */
    public final float f32191a;

    public AbsoluteCornerSize(float f) {
        this.f32191a = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbsoluteCornerSize) && this.f32191a == ((AbsoluteCornerSize) obj).f32191a;
    }

    @Override // com.google.android.material.shape.CornerSize
    public float getCornerSize(@NonNull RectF rectF) {
        return this.f32191a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f32191a)});
    }

    public float getCornerSize() {
        return this.f32191a;
    }
}
