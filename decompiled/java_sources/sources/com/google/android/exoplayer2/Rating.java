package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.Rating;

/* loaded from: classes5.dex */
public abstract class Rating implements Bundleable {
    public static final Bundleable.Creator<Rating> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.pcl
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            Rating m17998b;
            m17998b = Rating.m17998b(bundle);
            return m17998b;
        }
    };
    public static final float RATING_UNSET = -1.0f;

    /* renamed from: e */
    public static final int f22686e = -1;

    /* renamed from: f */
    public static final int f22687f = 0;

    /* renamed from: g */
    public static final int f22688g = 1;

    /* renamed from: h */
    public static final int f22689h = 2;

    /* renamed from: i */
    public static final int f22690i = 3;

    /* renamed from: j */
    public static final int f22691j = 0;

    /* renamed from: b */
    public static Rating m17998b(Bundle bundle) {
        int i = bundle.getInt(m17999c(0), -1);
        if (i == 0) {
            return HeartRating.CREATOR.fromBundle(bundle);
        }
        if (i == 1) {
            return PercentageRating.CREATOR.fromBundle(bundle);
        }
        if (i == 2) {
            return StarRating.CREATOR.fromBundle(bundle);
        }
        if (i == 3) {
            return ThumbRating.CREATOR.fromBundle(bundle);
        }
        StringBuilder sb = new StringBuilder(31);
        sb.append("Unknown RatingType: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: c */
    public static String m17999c(int i) {
        return Integer.toString(i, 36);
    }

    public abstract boolean isRated();
}
