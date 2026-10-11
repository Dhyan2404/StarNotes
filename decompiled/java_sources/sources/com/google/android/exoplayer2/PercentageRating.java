package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.PercentageRating;
import com.google.android.exoplayer2.util.Assertions;
import com.google.common.base.Objects;

/* loaded from: classes5.dex */
public final class PercentageRating extends Rating {
    public static final Bundleable.Creator<PercentageRating> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.b3l
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            PercentageRating m17986e;
            m17986e = PercentageRating.m17986e(bundle);
            return m17986e;
        }
    };

    /* renamed from: l */
    public static final int f22654l = 1;

    /* renamed from: m */
    public static final int f22655m = 1;

    /* renamed from: k */
    public final float f22656k;

    public PercentageRating() {
        this.f22656k = -1.0f;
    }

    /* renamed from: c */
    public static String m17984c(int i) {
        return Integer.toString(i, 36);
    }

    /* renamed from: e */
    public static PercentageRating m17986e(Bundle bundle) {
        Assertions.checkArgument(bundle.getInt(m17984c(0), -1) == 1);
        float f = bundle.getFloat(m17984c(1), -1.0f);
        return f == -1.0f ? new PercentageRating() : new PercentageRating(f);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof PercentageRating) && this.f22656k == ((PercentageRating) obj).f22656k;
    }

    public float getPercent() {
        return this.f22656k;
    }

    public int hashCode() {
        return Objects.hashCode(Float.valueOf(this.f22656k));
    }

    @Override // com.google.android.exoplayer2.Rating
    public boolean isRated() {
        return this.f22656k != -1.0f;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(m17984c(0), 1);
        bundle.putFloat(m17984c(1), this.f22656k);
        return bundle;
    }

    public PercentageRating(@FloatRange(from = 0.0d, m280to = 100.0d) float f) {
        Assertions.checkArgument(f >= 0.0f && f <= 100.0f, "percent must be in the range of [0, 100]");
        this.f22656k = f;
    }
}
