package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.ThumbRating;
import com.google.android.exoplayer2.util.Assertions;
import com.google.common.base.Objects;

/* loaded from: classes5.dex */
public final class ThumbRating extends Rating {
    public static final Bundleable.Creator<ThumbRating> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.mhn
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            ThumbRating m18025e;
            m18025e = ThumbRating.m18025e(bundle);
            return m18025e;
        }
    };

    /* renamed from: m */
    public static final int f22713m = 3;

    /* renamed from: n */
    public static final int f22714n = 1;

    /* renamed from: o */
    public static final int f22715o = 2;

    /* renamed from: k */
    public final boolean f22716k;

    /* renamed from: l */
    public final boolean f22717l;

    public ThumbRating() {
        this.f22716k = false;
        this.f22717l = false;
    }

    /* renamed from: c */
    public static String m18023c(int i) {
        return Integer.toString(i, 36);
    }

    /* renamed from: e */
    public static ThumbRating m18025e(Bundle bundle) {
        Assertions.checkArgument(bundle.getInt(m18023c(0), -1) == 3);
        return bundle.getBoolean(m18023c(1), false) ? new ThumbRating(bundle.getBoolean(m18023c(2), false)) : new ThumbRating();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ThumbRating)) {
            return false;
        }
        ThumbRating thumbRating = (ThumbRating) obj;
        return this.f22717l == thumbRating.f22717l && this.f22716k == thumbRating.f22716k;
    }

    public int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f22716k), Boolean.valueOf(this.f22717l));
    }

    @Override // com.google.android.exoplayer2.Rating
    public boolean isRated() {
        return this.f22716k;
    }

    public boolean isThumbsUp() {
        return this.f22717l;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(m18023c(0), 3);
        bundle.putBoolean(m18023c(1), this.f22716k);
        bundle.putBoolean(m18023c(2), this.f22717l);
        return bundle;
    }

    public ThumbRating(boolean z) {
        this.f22716k = true;
        this.f22717l = z;
    }
}
