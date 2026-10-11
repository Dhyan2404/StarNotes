package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.MediaClock;
import com.google.android.exoplayer2.util.StandaloneMediaClock;

/* loaded from: classes5.dex */
public final class DefaultMediaClock implements MediaClock {

    /* renamed from: e */
    public final StandaloneMediaClock f22271e;

    /* renamed from: f */
    public final PlaybackParametersListener f22272f;

    /* renamed from: g */
    @Nullable
    public Renderer f22273g;

    /* renamed from: h */
    @Nullable
    public MediaClock f22274h;

    /* renamed from: i */
    public boolean f22275i = true;

    /* renamed from: j */
    public boolean f22276j;

    /* loaded from: classes5.dex */
    public interface PlaybackParametersListener {
        void onPlaybackParametersChanged(PlaybackParameters playbackParameters);
    }

    public DefaultMediaClock(PlaybackParametersListener playbackParametersListener, Clock clock) {
        this.f22272f = playbackParametersListener;
        this.f22271e = new StandaloneMediaClock(clock);
    }

    /* renamed from: a */
    public void m17640a(Renderer renderer) {
        if (renderer == this.f22273g) {
            this.f22274h = null;
            this.f22273g = null;
            this.f22275i = true;
        }
    }

    /* renamed from: b */
    public void m17641b(Renderer renderer) throws ExoPlaybackException {
        MediaClock mediaClock;
        MediaClock mediaClock2 = renderer.getMediaClock();
        if (mediaClock2 == null || mediaClock2 == (mediaClock = this.f22274h)) {
            return;
        }
        if (mediaClock != null) {
            throw ExoPlaybackException.createForUnexpected(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
        this.f22274h = mediaClock2;
        this.f22273g = renderer;
        mediaClock2.setPlaybackParameters(this.f22271e.getPlaybackParameters());
    }

    /* renamed from: c */
    public void m17642c(long j) {
        this.f22271e.resetPosition(j);
    }

    /* renamed from: d */
    public final boolean m17643d(boolean z) {
        Renderer renderer = this.f22273g;
        return renderer == null || renderer.isEnded() || (!this.f22273g.isReady() && (z || this.f22273g.hasReadStreamToEnd()));
    }

    /* renamed from: e */
    public void m17644e() {
        this.f22276j = true;
        this.f22271e.start();
    }

    /* renamed from: f */
    public void m17645f() {
        this.f22276j = false;
        this.f22271e.stop();
    }

    /* renamed from: g */
    public long m17646g(boolean z) {
        m17647h(z);
        return getPositionUs();
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public PlaybackParameters getPlaybackParameters() {
        MediaClock mediaClock = this.f22274h;
        return mediaClock != null ? mediaClock.getPlaybackParameters() : this.f22271e.getPlaybackParameters();
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public long getPositionUs() {
        return this.f22275i ? this.f22271e.getPositionUs() : ((MediaClock) Assertions.checkNotNull(this.f22274h)).getPositionUs();
    }

    /* renamed from: h */
    public final void m17647h(boolean z) {
        if (m17643d(z)) {
            this.f22275i = true;
            if (this.f22276j) {
                this.f22271e.start();
                return;
            }
            return;
        }
        MediaClock mediaClock = (MediaClock) Assertions.checkNotNull(this.f22274h);
        long positionUs = mediaClock.getPositionUs();
        if (this.f22275i) {
            if (positionUs < this.f22271e.getPositionUs()) {
                this.f22271e.stop();
                return;
            } else {
                this.f22275i = false;
                if (this.f22276j) {
                    this.f22271e.start();
                }
            }
        }
        this.f22271e.resetPosition(positionUs);
        PlaybackParameters playbackParameters = mediaClock.getPlaybackParameters();
        if (playbackParameters.equals(this.f22271e.getPlaybackParameters())) {
            return;
        }
        this.f22271e.setPlaybackParameters(playbackParameters);
        this.f22272f.onPlaybackParametersChanged(playbackParameters);
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        MediaClock mediaClock = this.f22274h;
        if (mediaClock != null) {
            mediaClock.setPlaybackParameters(playbackParameters);
            playbackParameters = this.f22274h.getPlaybackParameters();
        }
        this.f22271e.setPlaybackParameters(playbackParameters);
    }
}
