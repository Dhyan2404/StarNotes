package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.HeartRating;
import com.google.android.exoplayer2.util.Assertions;
import com.google.common.base.Objects;

/* loaded from: classes5.dex */
public final class HeartRating extends Rating {
    public static final Bundleable.Creator<HeartRating> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.xfh
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            HeartRating m17862e;
            m17862e = HeartRating.m17862e(bundle);
            return m17862e;
        }
    };

    /* renamed from: m */
    public static final int f22482m = 0;

    /* renamed from: n */
    public static final int f22483n = 1;

    /* renamed from: o */
    public static final int f22484o = 2;

    /* renamed from: k */
    public final boolean f22485k;

    /* renamed from: l */
    public final boolean f22486l;

    public HeartRating() {
        this.f22485k = false;
        this.f22486l = false;
    }

    /* renamed from: c */
    public static String m17860c(int i) {
        return Integer.toString(i, 36);
    }

    /* renamed from: e */
    public static HeartRating m17862e(Bundle bundle) {
        Assertions.checkArgument(bundle.getInt(m17860c(0), -1) == 0);
        return bundle.getBoolean(m17860c(1), false) ? new HeartRating(bundle.getBoolean(m17860c(2), false)) : new HeartRating();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof HeartRating)) {
            return false;
        }
        HeartRating heartRating = (HeartRating) obj;
        return this.f22486l == heartRating.f22486l && this.f22485k == heartRating.f22485k;
    }

    public int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f22485k), Boolean.valueOf(this.f22486l));
    }

    public boolean isHeart() {
        return this.f22486l;
    }

    @Override // com.google.android.exoplayer2.Rating
    public boolean isRated() {
        return this.f22485k;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(m17860c(0), 0);
        bundle.putBoolean(m17860c(1), this.f22485k);
        bundle.putBoolean(m17860c(2), this.f22486l);
        return bundle;
    }

    public HeartRating(boolean z) {
        this.f22485k = true;
        this.f22486l = z;
    }
}
