package com.onyx.harfbuzz.font;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.utils.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes9.dex */
public final class VariationAxis {
    public static final int FLAG_HIDDEN_AXIS = 1;

    /* renamed from: a */
    public final int f62733a;

    /* renamed from: b */
    @NonNull
    public final String f62734b;

    /* renamed from: c */
    public final int f62735c;

    /* renamed from: d */
    public final float f62736d;

    /* renamed from: e */
    public final float f62737e;

    /* renamed from: f */
    public final float f62738f;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes9.dex */
    public @interface Flags {
    }

    public VariationAxis(int i, @Nullable String str, int i2, float f, float f2, float f3) {
        this.f62733a = i;
        this.f62734b = str;
        this.f62735c = i2;
        this.f62736d = f;
        this.f62737e = f2;
        this.f62738f = f3;
    }

    @NonNull
    /* renamed from: of */
    public static VariationAxis m52032of(int i, @NonNull String str, int i2, float f, float f2, float f3) {
        Preconditions.checkNotNull(str, "name");
        return new VariationAxis(i, str, i2, f, f2, f3);
    }

    public float defaultValue() {
        return this.f62736d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || VariationAxis.class != obj.getClass()) {
            return false;
        }
        VariationAxis variationAxis = (VariationAxis) obj;
        return this.f62733a == variationAxis.f62733a && this.f62734b.equals(variationAxis.f62734b) && this.f62735c == variationAxis.f62735c && Float.compare(variationAxis.f62736d, this.f62736d) == 0 && Float.compare(variationAxis.f62737e, this.f62737e) == 0 && Float.compare(variationAxis.f62738f, this.f62738f) == 0;
    }

    public int flags() {
        return this.f62735c;
    }

    public int hashCode() {
        return (((((((((this.f62733a * 31) + this.f62734b.hashCode()) * 31) + this.f62735c) * 31) + Float.floatToIntBits(this.f62736d)) * 31) + Float.floatToIntBits(this.f62737e)) * 31) + Float.floatToIntBits(this.f62738f);
    }

    public float maxValue() {
        return this.f62738f;
    }

    public float minValue() {
        return this.f62737e;
    }

    @NonNull
    public String name() {
        return this.f62734b;
    }

    public int tag() {
        return this.f62733a;
    }
}
