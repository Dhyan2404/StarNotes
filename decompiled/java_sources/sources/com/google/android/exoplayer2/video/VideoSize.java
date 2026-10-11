package com.google.android.exoplayer2.video;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.video.VideoSize;

/* loaded from: classes5.dex */
public final class VideoSize implements Bundleable {

    /* renamed from: e */
    public static final int f28645e = 0;

    /* renamed from: f */
    public static final int f28646f = 0;

    /* renamed from: g */
    public static final int f28647g = 0;

    /* renamed from: h */
    public static final float f28648h = 1.0f;

    /* renamed from: i */
    public static final int f28649i = 0;

    /* renamed from: j */
    public static final int f28650j = 1;

    /* renamed from: k */
    public static final int f28651k = 2;

    /* renamed from: l */
    public static final int f28652l = 3;

    @IntRange(from = 0)
    public final int height;

    @FloatRange(from = 0.0d, fromInclusive = false)
    public final float pixelWidthHeightRatio;

    @IntRange(from = 0, m281to = 359)
    public final int unappliedRotationDegrees;

    @IntRange(from = 0)
    public final int width;
    public static final VideoSize UNKNOWN = new VideoSize(0, 0);
    public static final Bundleable.Creator<VideoSize> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.q1o
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            VideoSize m21661c;
            m21661c = VideoSize.m21661c(bundle);
            return m21661c;
        }
    };

    public VideoSize(@IntRange(from = 0) int i, @IntRange(from = 0) int i2) {
        this(i, i2, 0, 1.0f);
    }

    /* renamed from: b */
    public static String m21660b(int i) {
        return Integer.toString(i, 36);
    }

    /* renamed from: c */
    public static /* synthetic */ VideoSize m21661c(Bundle bundle) {
        return new VideoSize(bundle.getInt(m21660b(0), 0), bundle.getInt(m21660b(1), 0), bundle.getInt(m21660b(2), 0), bundle.getFloat(m21660b(3), 1.0f));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoSize)) {
            return false;
        }
        VideoSize videoSize = (VideoSize) obj;
        return this.width == videoSize.width && this.height == videoSize.height && this.unappliedRotationDegrees == videoSize.unappliedRotationDegrees && this.pixelWidthHeightRatio == videoSize.pixelWidthHeightRatio;
    }

    public int hashCode() {
        return ((((((217 + this.width) * 31) + this.height) * 31) + this.unappliedRotationDegrees) * 31) + Float.floatToRawIntBits(this.pixelWidthHeightRatio);
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(m21660b(0), this.width);
        bundle.putInt(m21660b(1), this.height);
        bundle.putInt(m21660b(2), this.unappliedRotationDegrees);
        bundle.putFloat(m21660b(3), this.pixelWidthHeightRatio);
        return bundle;
    }

    public VideoSize(@IntRange(from = 0) int i, @IntRange(from = 0) int i2, @IntRange(from = 0, m281to = 359) int i3, @FloatRange(from = 0.0d, fromInclusive = false) float f) {
        this.width = i;
        this.height = i2;
        this.unappliedRotationDegrees = i3;
        this.pixelWidthHeightRatio = f;
    }
}
