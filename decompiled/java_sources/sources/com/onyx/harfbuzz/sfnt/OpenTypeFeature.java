package com.onyx.harfbuzz.sfnt;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes9.dex */
public final class OpenTypeFeature {

    /* renamed from: a */
    public final int f62860a;

    /* renamed from: b */
    public final int f62861b;

    public OpenTypeFeature(int i, int i2) {
        this.f62860a = i;
        this.f62861b = i2;
    }

    @NonNull
    /* renamed from: of */
    public static OpenTypeFeature m52086of(int i, int i2) {
        return new OpenTypeFeature(i, i2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || OpenTypeFeature.class != obj.getClass()) {
            return false;
        }
        OpenTypeFeature openTypeFeature = (OpenTypeFeature) obj;
        return this.f62860a == openTypeFeature.f62860a && this.f62861b == openTypeFeature.f62861b;
    }

    public int hashCode() {
        return (this.f62860a * 31) + this.f62861b;
    }

    public int tag() {
        return this.f62860a;
    }

    public int value() {
        return this.f62861b;
    }
}
