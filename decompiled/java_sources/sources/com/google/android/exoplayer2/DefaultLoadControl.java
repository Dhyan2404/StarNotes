package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DefaultAllocator;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public class DefaultLoadControl implements LoadControl {
    public static final int DEFAULT_AUDIO_BUFFER_SIZE = 13107200;
    public static final int DEFAULT_BACK_BUFFER_DURATION_MS = 0;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS = 5000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_MS = 2500;
    public static final int DEFAULT_CAMERA_MOTION_BUFFER_SIZE = 131072;
    public static final int DEFAULT_IMAGE_BUFFER_SIZE = 131072;
    public static final int DEFAULT_MAX_BUFFER_MS = 50000;
    public static final int DEFAULT_METADATA_BUFFER_SIZE = 131072;
    public static final int DEFAULT_MIN_BUFFER_MS = 50000;
    public static final int DEFAULT_MIN_BUFFER_SIZE = 13107200;
    public static final int DEFAULT_MUXED_BUFFER_SIZE = 144310272;
    public static final boolean DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS = false;
    public static final boolean DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME = false;
    public static final int DEFAULT_TARGET_BUFFER_BYTES = -1;
    public static final int DEFAULT_TEXT_BUFFER_SIZE = 131072;
    public static final int DEFAULT_VIDEO_BUFFER_SIZE = 131072000;

    /* renamed from: a */
    public final DefaultAllocator f22250a;

    /* renamed from: b */
    public final long f22251b;

    /* renamed from: c */
    public final long f22252c;

    /* renamed from: d */
    public final long f22253d;

    /* renamed from: e */
    public final long f22254e;

    /* renamed from: f */
    public final int f22255f;

    /* renamed from: g */
    public final boolean f22256g;

    /* renamed from: h */
    public final long f22257h;

    /* renamed from: i */
    public final boolean f22258i;

    /* renamed from: j */
    public int f22259j;

    /* renamed from: k */
    public boolean f22260k;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        @Nullable
        public DefaultAllocator f22261a;

        /* renamed from: b */
        public int f22262b = 50000;

        /* renamed from: c */
        public int f22263c = 50000;

        /* renamed from: d */
        public int f22264d = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS;

        /* renamed from: e */
        public int f22265e = 5000;

        /* renamed from: f */
        public int f22266f = -1;

        /* renamed from: g */
        public boolean f22267g = false;

        /* renamed from: h */
        public int f22268h = 0;

        /* renamed from: i */
        public boolean f22269i = false;

        /* renamed from: j */
        public boolean f22270j;

        public DefaultLoadControl build() {
            Assertions.checkState(!this.f22270j);
            this.f22270j = true;
            if (this.f22261a == null) {
                this.f22261a = new DefaultAllocator(true, 65536);
            }
            return new DefaultLoadControl(this.f22261a, this.f22262b, this.f22263c, this.f22264d, this.f22265e, this.f22266f, this.f22267g, this.f22268h, this.f22269i);
        }

        @Deprecated
        public DefaultLoadControl createDefaultLoadControl() {
            return build();
        }

        public Builder setAllocator(DefaultAllocator defaultAllocator) {
            Assertions.checkState(!this.f22270j);
            this.f22261a = defaultAllocator;
            return this;
        }

        public Builder setBackBuffer(int i, boolean z) {
            Assertions.checkState(!this.f22270j);
            DefaultLoadControl.m17637b(i, 0, "backBufferDurationMs", "0");
            this.f22268h = i;
            this.f22269i = z;
            return this;
        }

        public Builder setBufferDurationsMs(int i, int i2, int i3, int i4) {
            Assertions.checkState(!this.f22270j);
            DefaultLoadControl.m17637b(i3, 0, "bufferForPlaybackMs", "0");
            DefaultLoadControl.m17637b(i4, 0, "bufferForPlaybackAfterRebufferMs", "0");
            DefaultLoadControl.m17637b(i, i3, "minBufferMs", "bufferForPlaybackMs");
            DefaultLoadControl.m17637b(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            DefaultLoadControl.m17637b(i2, i, "maxBufferMs", "minBufferMs");
            this.f22262b = i;
            this.f22263c = i2;
            this.f22264d = i3;
            this.f22265e = i4;
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholds(boolean z) {
            Assertions.checkState(!this.f22270j);
            this.f22267g = z;
            return this;
        }

        public Builder setTargetBufferBytes(int i) {
            Assertions.checkState(!this.f22270j);
            this.f22266f = i;
            return this;
        }
    }

    public DefaultLoadControl() {
        this(new DefaultAllocator(true, 65536), 50000, 50000, DEFAULT_BUFFER_FOR_PLAYBACK_MS, 5000, -1, false, 0, false);
    }

    /* renamed from: b */
    public static void m17637b(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" cannot be less than ");
        sb.append(str2);
        Assertions.checkArgument(z, sb.toString());
    }

    /* renamed from: c */
    public static int m17638c(int i) {
        switch (i) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return DEFAULT_MUXED_BUFFER_SIZE;
            case 1:
                return 13107200;
            case 2:
                return DEFAULT_VIDEO_BUFFER_SIZE;
            case 3:
            case 4:
            case 5:
            case 6:
                return 131072;
        }
    }

    public int calculateTargetBufferBytes(Renderer[] rendererArr, ExoTrackSelection[] exoTrackSelectionArr) {
        int i = 0;
        for (int i2 = 0; i2 < rendererArr.length; i2++) {
            if (exoTrackSelectionArr[i2] != null) {
                i += m17638c(rendererArr[i2].getTrackType());
            }
        }
        return Math.max(13107200, i);
    }

    /* renamed from: d */
    public final void m17639d(boolean z) {
        int i = this.f22255f;
        if (i == -1) {
            i = 13107200;
        }
        this.f22259j = i;
        this.f22260k = false;
        if (z) {
            this.f22250a.reset();
        }
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public Allocator getAllocator() {
        return this.f22250a;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public long getBackBufferDurationUs() {
        return this.f22257h;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onPrepared() {
        m17639d(false);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onReleased() {
        m17639d(true);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onStopped() {
        m17639d(true);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onTracksSelected(Renderer[] rendererArr, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        int i = this.f22255f;
        if (i == -1) {
            i = calculateTargetBufferBytes(rendererArr, exoTrackSelectionArr);
        }
        this.f22259j = i;
        this.f22250a.setTargetBufferSize(i);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public boolean retainBackBufferFromKeyframe() {
        return this.f22258i;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public boolean shouldContinueLoading(long j, long j2, float f) {
        boolean z = true;
        boolean z2 = this.f22250a.getTotalBytesAllocated() >= this.f22259j;
        long j3 = this.f22251b;
        if (f > 1.0f) {
            j3 = Math.min(Util.getMediaDurationForPlayoutDuration(j3, f), this.f22252c);
        }
        if (j2 < Math.max(j3, 500000L)) {
            if (!this.f22256g && z2) {
                z = false;
            }
            this.f22260k = z;
            if (!z && j2 < 500000) {
                Log.m21493w("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j2 >= this.f22252c || z2) {
            this.f22260k = false;
        }
        return this.f22260k;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public boolean shouldStartPlayback(long j, float f, boolean z, long j2) {
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(j, f);
        long j3 = z ? this.f22254e : this.f22253d;
        if (j2 != C4649C.TIME_UNSET) {
            j3 = Math.min(j2 / 2, j3);
        }
        return j3 <= 0 || playoutDurationForMediaDuration >= j3 || (!this.f22256g && this.f22250a.getTotalBytesAllocated() >= this.f22259j);
    }

    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
        m17637b(i3, 0, "bufferForPlaybackMs", "0");
        m17637b(i4, 0, "bufferForPlaybackAfterRebufferMs", "0");
        m17637b(i, i3, "minBufferMs", "bufferForPlaybackMs");
        m17637b(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        m17637b(i2, i, "maxBufferMs", "minBufferMs");
        m17637b(i6, 0, "backBufferDurationMs", "0");
        this.f22250a = defaultAllocator;
        this.f22251b = Util.msToUs(i);
        this.f22252c = Util.msToUs(i2);
        this.f22253d = Util.msToUs(i3);
        this.f22254e = Util.msToUs(i4);
        this.f22255f = i5;
        this.f22259j = i5 == -1 ? 13107200 : i5;
        this.f22256g = z;
        this.f22257h = Util.msToUs(i6);
        this.f22258i = z2;
    }
}
