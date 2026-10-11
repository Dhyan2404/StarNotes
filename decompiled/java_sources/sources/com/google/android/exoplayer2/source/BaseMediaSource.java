package com.google.android.exoplayer2.source;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes5.dex */
public abstract class BaseMediaSource implements MediaSource {

    /* renamed from: e */
    public final ArrayList<MediaSource.MediaSourceCaller> f25140e = new ArrayList<>(1);

    /* renamed from: f */
    public final HashSet<MediaSource.MediaSourceCaller> f25141f = new HashSet<>(1);

    /* renamed from: g */
    public final MediaSourceEventListener.EventDispatcher f25142g = new MediaSourceEventListener.EventDispatcher();

    /* renamed from: h */
    public final DrmSessionEventListener.EventDispatcher f25143h = new DrmSessionEventListener.EventDispatcher();

    /* renamed from: i */
    @Nullable
    public Looper f25144i;

    /* renamed from: j */
    @Nullable
    public Timeline f25145j;

    /* renamed from: k */
    @Nullable
    public PlayerId f25146k;

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void addDrmEventListener(Handler handler, DrmSessionEventListener drmSessionEventListener) {
        Assertions.checkNotNull(handler);
        Assertions.checkNotNull(drmSessionEventListener);
        this.f25143h.addEventListener(handler, drmSessionEventListener);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
        Assertions.checkNotNull(handler);
        Assertions.checkNotNull(mediaSourceEventListener);
        this.f25142g.addEventListener(handler, mediaSourceEventListener);
    }

    public final DrmSessionEventListener.EventDispatcher createDrmEventDispatcher(@Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        return this.f25143h.withParameters(0, mediaPeriodId);
    }

    public final MediaSourceEventListener.EventDispatcher createEventDispatcher(@Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        return this.f25142g.withParameters(0, mediaPeriodId, 0L);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void disable(MediaSource.MediaSourceCaller mediaSourceCaller) {
        boolean z = !this.f25141f.isEmpty();
        this.f25141f.remove(mediaSourceCaller);
        if (z && this.f25141f.isEmpty()) {
            disableInternal();
        }
    }

    public void disableInternal() {
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void enable(MediaSource.MediaSourceCaller mediaSourceCaller) {
        Assertions.checkNotNull(this.f25144i);
        boolean isEmpty = this.f25141f.isEmpty();
        this.f25141f.add(mediaSourceCaller);
        if (isEmpty) {
            enableInternal();
        }
    }

    public void enableInternal() {
    }

    public final PlayerId getPlayerId() {
        return (PlayerId) Assertions.checkStateNotNull(this.f25146k);
    }

    public final boolean isEnabled() {
        return !this.f25141f.isEmpty();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void prepareSource(MediaSource.MediaSourceCaller mediaSourceCaller, @Nullable TransferListener transferListener, PlayerId playerId) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f25144i;
        Assertions.checkArgument(looper == null || looper == myLooper);
        this.f25146k = playerId;
        Timeline timeline = this.f25145j;
        this.f25140e.add(mediaSourceCaller);
        if (this.f25144i == null) {
            this.f25144i = myLooper;
            this.f25141f.add(mediaSourceCaller);
            prepareSourceInternal(transferListener);
        } else if (timeline != null) {
            enable(mediaSourceCaller);
            mediaSourceCaller.onSourceInfoRefreshed(this, timeline);
        }
    }

    public abstract void prepareSourceInternal(@Nullable TransferListener transferListener);

    public final void refreshSourceInfo(Timeline timeline) {
        this.f25145j = timeline;
        Iterator<MediaSource.MediaSourceCaller> it2 = this.f25140e.iterator();
        while (it2.hasNext()) {
            it2.next().onSourceInfoRefreshed(this, timeline);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void releaseSource(MediaSource.MediaSourceCaller mediaSourceCaller) {
        this.f25140e.remove(mediaSourceCaller);
        if (!this.f25140e.isEmpty()) {
            disable(mediaSourceCaller);
            return;
        }
        this.f25144i = null;
        this.f25145j = null;
        this.f25146k = null;
        this.f25141f.clear();
        releaseSourceInternal();
    }

    public abstract void releaseSourceInternal();

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void removeDrmEventListener(DrmSessionEventListener drmSessionEventListener) {
        this.f25143h.removeEventListener(drmSessionEventListener);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void removeEventListener(MediaSourceEventListener mediaSourceEventListener) {
        this.f25142g.removeEventListener(mediaSourceEventListener);
    }

    public final DrmSessionEventListener.EventDispatcher createDrmEventDispatcher(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        return this.f25143h.withParameters(i, mediaPeriodId);
    }

    public final MediaSourceEventListener.EventDispatcher createEventDispatcher(MediaSource.MediaPeriodId mediaPeriodId, long j) {
        Assertions.checkNotNull(mediaPeriodId);
        return this.f25142g.withParameters(0, mediaPeriodId, j);
    }

    public final MediaSourceEventListener.EventDispatcher createEventDispatcher(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, long j) {
        return this.f25142g.withParameters(i, mediaPeriodId, j);
    }
}
