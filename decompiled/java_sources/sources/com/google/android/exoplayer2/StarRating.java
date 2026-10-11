package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.StarRating;
import com.google.android.exoplayer2.util.Assertions;
import com.google.common.base.Objects;

/* loaded from: classes5.dex */
public final class StarRating extends Rating {
    public static final Bundleable.Creator<StarRating> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.txm
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            StarRating m18005e;
            m18005e = StarRating.m18005e(bundle);
            return m18005e;
        }
    };

    /* renamed from: m */
    public static final int f22695m = 2;

    /* renamed from: n */
    public static final int f22696n = 5;

    /* renamed from: o */
    public static final int f22697o = 1;

    /* renamed from: p */
    public static final int f22698p = 2;

    /* renamed from: k */
    @IntRange(from = 1)
    public final int f22699k;

    /* renamed from: l */
    public final float f22700l;

    public StarRating(@IntRange(from = 1) int i) {
        Assertions.checkArgument(i > 0, "maxStars must be a positive integer");
        this.f22699k = i;
        this.f22700l = -1.0f;
    }

    /* renamed from: c */
    public static String m18003c(int i) {
        return Integer.toString(i, 36);
    }

    /* renamed from: e */
    public static StarRating m18005e(Bundle bundle) {
        Assertions.checkArgument(bundle.getInt(m18003c(0), -1) == 2);
        int i = bundle.getInt(m18003c(1), 5);
        float f = bundle.getFloat(m18003c(2), -1.0f);
        return f == -1.0f ? new StarRating(i) : new StarRating(i, f);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof StarRating)) {
            return false;
        }
        StarRating starRating = (StarRating) obj;
        return this.f22699k == starRating.f22699k && this.f22700l == starRating.f22700l;
    }

    @IntRange(from = 1)
    public int getMaxStars() {
        return this.f22699k;
    }

    public float getStarRating() {
        return this.f22700l;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f22699k), Float.valueOf(this.f22700l));
    }

    @Override // com.google.android.exoplayer2.Rating
    public boolean isRated() {
        return this.f22700l != -1.0f;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(m18003c(0), 2);
        bundle.putInt(m18003c(1), this.f22699k);
        bundle.putFloat(m18003c(2), this.f22700l);
        return bundle;
    }

    public StarRating(@IntRange(from = 1) int i, @FloatRange(from = 0.0d) float f) {
        Assertions.checkArgument(i > 0, "maxStars must be a positive integer");
        Assertions.checkArgument(f >= 0.0f && f <= ((float) i), "starRating is out of range [0, maxStars]");
        this.f22699k = i;
        this.f22700l = f;
    }
}
