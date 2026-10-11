package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.PlaybackParameters;

/* loaded from: classes5.dex */
public final class StandaloneMediaClock implements MediaClock {

    /* renamed from: e */
    public final Clock f28452e;

    /* renamed from: f */
    public boolean f28453f;

    /* renamed from: g */
    public long f28454g;

    /* renamed from: h */
    public long f28455h;

    /* renamed from: i */
    public PlaybackParameters f28456i = PlaybackParameters.DEFAULT;

    public StandaloneMediaClock(Clock clock) {
        this.f28452e = clock;
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public PlaybackParameters getPlaybackParameters() {
        return this.f28456i;
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public long getPositionUs() {
        long j = this.f28454g;
        if (!this.f28453f) {
            return j;
        }
        long elapsedRealtime = this.f28452e.elapsedRealtime() - this.f28455h;
        PlaybackParameters playbackParameters = this.f28456i;
        return j + (playbackParameters.speed == 1.0f ? Util.msToUs(elapsedRealtime) : playbackParameters.getMediaTimeUsForPlayoutTimeMs(elapsedRealtime));
    }

    public void resetPosition(long j) {
        this.f28454g = j;
        if (this.f28453f) {
            this.f28455h = this.f28452e.elapsedRealtime();
        }
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        if (this.f28453f) {
            resetPosition(getPositionUs());
        }
        this.f28456i = playbackParameters;
    }

    public void start() {
        if (this.f28453f) {
            return;
        }
        this.f28455h = this.f28452e.elapsedRealtime();
        this.f28453f = true;
    }

    public void stop() {
        if (this.f28453f) {
            resetPosition(getPositionUs());
            this.f28453f = false;
        }
    }
}
