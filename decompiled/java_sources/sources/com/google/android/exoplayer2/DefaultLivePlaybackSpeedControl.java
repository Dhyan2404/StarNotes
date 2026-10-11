package com.google.android.exoplayer2;

import android.os.SystemClock;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.primitives.Longs;

/* loaded from: classes5.dex */
public final class DefaultLivePlaybackSpeedControl implements LivePlaybackSpeedControl {
    public static final float DEFAULT_FALLBACK_MAX_PLAYBACK_SPEED = 1.03f;
    public static final float DEFAULT_FALLBACK_MIN_PLAYBACK_SPEED = 0.97f;
    public static final long DEFAULT_MAX_LIVE_OFFSET_ERROR_MS_FOR_UNIT_SPEED = 20;
    public static final float DEFAULT_MIN_POSSIBLE_LIVE_OFFSET_SMOOTHING_FACTOR = 0.999f;
    public static final long DEFAULT_MIN_UPDATE_INTERVAL_MS = 1000;
    public static final float DEFAULT_PROPORTIONAL_CONTROL_FACTOR = 0.1f;
    public static final long DEFAULT_TARGET_LIVE_OFFSET_INCREMENT_ON_REBUFFER_MS = 500;

    /* renamed from: a */
    public final float f22224a;

    /* renamed from: b */
    public final float f22225b;

    /* renamed from: c */
    public final long f22226c;

    /* renamed from: d */
    public final float f22227d;

    /* renamed from: e */
    public final long f22228e;

    /* renamed from: f */
    public final long f22229f;

    /* renamed from: g */
    public final float f22230g;

    /* renamed from: h */
    public long f22231h;

    /* renamed from: i */
    public long f22232i;

    /* renamed from: j */
    public long f22233j;

    /* renamed from: k */
    public long f22234k;

    /* renamed from: l */
    public long f22235l;

    /* renamed from: m */
    public long f22236m;

    /* renamed from: n */
    public float f22237n;

    /* renamed from: o */
    public float f22238o;

    /* renamed from: p */
    public float f22239p;

    /* renamed from: q */
    public long f22240q;

    /* renamed from: r */
    public long f22241r;

    /* renamed from: s */
    public long f22242s;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public float f22243a = 0.97f;

        /* renamed from: b */
        public float f22244b = 1.03f;

        /* renamed from: c */
        public long f22245c = 1000;

        /* renamed from: d */
        public float f22246d = 1.0E-7f;

        /* renamed from: e */
        public long f22247e = Util.msToUs(20);

        /* renamed from: f */
        public long f22248f = Util.msToUs(500);

        /* renamed from: g */
        public float f22249g = 0.999f;

        public DefaultLivePlaybackSpeedControl build() {
            return new DefaultLivePlaybackSpeedControl(this.f22243a, this.f22244b, this.f22245c, this.f22246d, this.f22247e, this.f22248f, this.f22249g);
        }

        public Builder setFallbackMaxPlaybackSpeed(float f) {
            Assertions.checkArgument(f >= 1.0f);
            this.f22244b = f;
            return this;
        }

        public Builder setFallbackMinPlaybackSpeed(float f) {
            Assertions.checkArgument(0.0f < f && f <= 1.0f);
            this.f22243a = f;
            return this;
        }

        public Builder setMaxLiveOffsetErrorMsForUnitSpeed(long j) {
            Assertions.checkArgument(j > 0);
            this.f22247e = Util.msToUs(j);
            return this;
        }

        public Builder setMinPossibleLiveOffsetSmoothingFactor(float f) {
            Assertions.checkArgument(f >= 0.0f && f < 1.0f);
            this.f22249g = f;
            return this;
        }

        public Builder setMinUpdateIntervalMs(long j) {
            Assertions.checkArgument(j > 0);
            this.f22245c = j;
            return this;
        }

        public Builder setProportionalControlFactor(float f) {
            Assertions.checkArgument(f > 0.0f);
            this.f22246d = f / 1000000.0f;
            return this;
        }

        public Builder setTargetLiveOffsetIncrementOnRebufferMs(long j) {
            Assertions.checkArgument(j >= 0);
            this.f22248f = Util.msToUs(j);
            return this;
        }
    }

    /* renamed from: c */
    public static long m17632c(long j, long j2, float f) {
        return (((float) j) * f) + ((1.0f - f) * ((float) j2));
    }

    /* renamed from: a */
    public final void m17633a(long j) {
        long j2 = this.f22241r + (this.f22242s * 3);
        if (this.f22236m > j2) {
            float msToUs = (float) Util.msToUs(this.f22226c);
            this.f22236m = Longs.max(j2, this.f22233j, this.f22236m - (((this.f22239p - 1.0f) * msToUs) + ((this.f22237n - 1.0f) * msToUs)));
            return;
        }
        long constrainValue = Util.constrainValue(j - (Math.max(0.0f, this.f22239p - 1.0f) / this.f22227d), this.f22236m, j2);
        this.f22236m = constrainValue;
        long j3 = this.f22235l;
        if (j3 == C4649C.TIME_UNSET || constrainValue <= j3) {
            return;
        }
        this.f22236m = j3;
    }

    /* renamed from: b */
    public final void m17634b() {
        long j = this.f22231h;
        if (j != C4649C.TIME_UNSET) {
            long j2 = this.f22232i;
            if (j2 != C4649C.TIME_UNSET) {
                j = j2;
            }
            long j3 = this.f22234k;
            if (j3 != C4649C.TIME_UNSET && j < j3) {
                j = j3;
            }
            long j4 = this.f22235l;
            if (j4 != C4649C.TIME_UNSET && j > j4) {
                j = j4;
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.f22233j == j) {
            return;
        }
        this.f22233j = j;
        this.f22236m = j;
        this.f22241r = C4649C.TIME_UNSET;
        this.f22242s = C4649C.TIME_UNSET;
        this.f22240q = C4649C.TIME_UNSET;
    }

    /* renamed from: d */
    public final void m17635d(long j, long j2) {
        long j3 = j - j2;
        long j4 = this.f22241r;
        if (j4 == C4649C.TIME_UNSET) {
            this.f22241r = j3;
            this.f22242s = 0L;
        } else {
            long max = Math.max(j3, m17632c(j4, j3, this.f22230g));
            this.f22241r = max;
            this.f22242s = m17632c(this.f22242s, Math.abs(j3 - max), this.f22230g);
        }
    }

    @Override // com.google.android.exoplayer2.LivePlaybackSpeedControl
    public float getAdjustedPlaybackSpeed(long j, long j2) {
        if (this.f22231h == C4649C.TIME_UNSET) {
            return 1.0f;
        }
        m17635d(j, j2);
        if (this.f22240q != C4649C.TIME_UNSET && SystemClock.elapsedRealtime() - this.f22240q < this.f22226c) {
            return this.f22239p;
        }
        this.f22240q = SystemClock.elapsedRealtime();
        m17633a(j);
        long j3 = j - this.f22236m;
        if (Math.abs(j3) < this.f22228e) {
            this.f22239p = 1.0f;
        } else {
            this.f22239p = Util.constrainValue((this.f22227d * ((float) j3)) + 1.0f, this.f22238o, this.f22237n);
        }
        return this.f22239p;
    }

    @Override // com.google.android.exoplayer2.LivePlaybackSpeedControl
    public long getTargetLiveOffsetUs() {
        return this.f22236m;
    }

    @Override // com.google.android.exoplayer2.LivePlaybackSpeedControl
    public void notifyRebuffer() {
        long j = this.f22236m;
        if (j == C4649C.TIME_UNSET) {
            return;
        }
        long j2 = j + this.f22229f;
        this.f22236m = j2;
        long j3 = this.f22235l;
        if (j3 != C4649C.TIME_UNSET && j2 > j3) {
            this.f22236m = j3;
        }
        this.f22240q = C4649C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.LivePlaybackSpeedControl
    public void setLiveConfiguration(MediaItem.LiveConfiguration liveConfiguration) {
        this.f22231h = Util.msToUs(liveConfiguration.targetOffsetMs);
        this.f22234k = Util.msToUs(liveConfiguration.minOffsetMs);
        this.f22235l = Util.msToUs(liveConfiguration.maxOffsetMs);
        float f = liveConfiguration.minPlaybackSpeed;
        if (f == -3.4028235E38f) {
            f = this.f22224a;
        }
        this.f22238o = f;
        float f2 = liveConfiguration.maxPlaybackSpeed;
        if (f2 == -3.4028235E38f) {
            f2 = this.f22225b;
        }
        this.f22237n = f2;
        if (f == 1.0f && f2 == 1.0f) {
            this.f22231h = C4649C.TIME_UNSET;
        }
        m17634b();
    }

    @Override // com.google.android.exoplayer2.LivePlaybackSpeedControl
    public void setTargetLiveOffsetOverrideUs(long j) {
        this.f22232i = j;
        m17634b();
    }

    public DefaultLivePlaybackSpeedControl(float f, float f2, long j, float f3, long j2, long j3, float f4) {
        this.f22224a = f;
        this.f22225b = f2;
        this.f22226c = j;
        this.f22227d = f3;
        this.f22228e = j2;
        this.f22229f = j3;
        this.f22230g = f4;
        this.f22231h = C4649C.TIME_UNSET;
        this.f22232i = C4649C.TIME_UNSET;
        this.f22234k = C4649C.TIME_UNSET;
        this.f22235l = C4649C.TIME_UNSET;
        this.f22238o = f;
        this.f22237n = f2;
        this.f22239p = 1.0f;
        this.f22240q = C4649C.TIME_UNSET;
        this.f22233j = C4649C.TIME_UNSET;
        this.f22236m = C4649C.TIME_UNSET;
        this.f22241r = C4649C.TIME_UNSET;
        this.f22242s = C4649C.TIME_UNSET;
    }
}
