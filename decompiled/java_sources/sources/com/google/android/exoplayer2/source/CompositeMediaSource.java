package com.google.android.exoplayer2.source;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.source.CompositeMediaSource;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.UnknownNull;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes5.dex */
public abstract class CompositeMediaSource<T> extends BaseMediaSource {

    /* renamed from: l */
    public final HashMap<T, C4827b<T>> f25175l = new HashMap<>();

    /* renamed from: m */
    @Nullable
    public Handler f25176m;

    /* renamed from: n */
    @Nullable
    public TransferListener f25177n;

    /* renamed from: com.google.android.exoplayer2.source.CompositeMediaSource$a */
    /* loaded from: classes5.dex */
    public final class C4826a implements MediaSourceEventListener, DrmSessionEventListener {

        /* renamed from: e */
        @UnknownNull
        public final T f25178e;

        /* renamed from: f */
        public MediaSourceEventListener.EventDispatcher f25179f;

        /* renamed from: g */
        public DrmSessionEventListener.EventDispatcher f25180g;

        public C4826a(@UnknownNull T t) {
            this.f25179f = CompositeMediaSource.this.createEventDispatcher(null);
            this.f25180g = CompositeMediaSource.this.createDrmEventDispatcher(null);
            this.f25178e = t;
        }

        /* renamed from: a */
        public final boolean m19598a(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            MediaSource.MediaPeriodId mediaPeriodId2;
            if (mediaPeriodId != null) {
                mediaPeriodId2 = CompositeMediaSource.this.getMediaPeriodIdForChildMediaPeriodId(this.f25178e, mediaPeriodId);
                if (mediaPeriodId2 == null) {
                    return false;
                }
            } else {
                mediaPeriodId2 = null;
            }
            int windowIndexForChildWindowIndex = CompositeMediaSource.this.getWindowIndexForChildWindowIndex(this.f25178e, i);
            MediaSourceEventListener.EventDispatcher eventDispatcher = this.f25179f;
            if (eventDispatcher.windowIndex != windowIndexForChildWindowIndex || !Util.areEqual(eventDispatcher.mediaPeriodId, mediaPeriodId2)) {
                this.f25179f = CompositeMediaSource.this.createEventDispatcher(windowIndexForChildWindowIndex, mediaPeriodId2, 0L);
            }
            DrmSessionEventListener.EventDispatcher eventDispatcher2 = this.f25180g;
            if (eventDispatcher2.windowIndex == windowIndexForChildWindowIndex && Util.areEqual(eventDispatcher2.mediaPeriodId, mediaPeriodId2)) {
                return true;
            }
            this.f25180g = CompositeMediaSource.this.createDrmEventDispatcher(windowIndexForChildWindowIndex, mediaPeriodId2);
            return true;
        }

        /* renamed from: b */
        public final MediaLoadData m19599b(MediaLoadData mediaLoadData) {
            long mediaTimeForChildMediaTime = CompositeMediaSource.this.getMediaTimeForChildMediaTime(this.f25178e, mediaLoadData.mediaStartTimeMs);
            long mediaTimeForChildMediaTime2 = CompositeMediaSource.this.getMediaTimeForChildMediaTime(this.f25178e, mediaLoadData.mediaEndTimeMs);
            return (mediaTimeForChildMediaTime == mediaLoadData.mediaStartTimeMs && mediaTimeForChildMediaTime2 == mediaLoadData.mediaEndTimeMs) ? mediaLoadData : new MediaLoadData(mediaLoadData.dataType, mediaLoadData.trackType, mediaLoadData.trackFormat, mediaLoadData.trackSelectionReason, mediaLoadData.trackSelectionData, mediaTimeForChildMediaTime, mediaTimeForChildMediaTime2);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onDownstreamFormatChanged(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            if (m19598a(i, mediaPeriodId)) {
                this.f25179f.downstreamFormatChanged(m19599b(mediaLoadData));
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysLoaded(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (m19598a(i, mediaPeriodId)) {
                this.f25180g.drmKeysLoaded();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysRemoved(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (m19598a(i, mediaPeriodId)) {
                this.f25180g.drmKeysRemoved();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysRestored(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (m19598a(i, mediaPeriodId)) {
                this.f25180g.drmKeysRestored();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionAcquired(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, int i2) {
            if (m19598a(i, mediaPeriodId)) {
                this.f25180g.drmSessionAcquired(i2);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionManagerError(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
            if (m19598a(i, mediaPeriodId)) {
                this.f25180g.drmSessionManagerError(exc);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionReleased(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (m19598a(i, mediaPeriodId)) {
                this.f25180g.drmSessionReleased();
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadCanceled(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (m19598a(i, mediaPeriodId)) {
                this.f25179f.loadCanceled(loadEventInfo, m19599b(mediaLoadData));
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadCompleted(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (m19598a(i, mediaPeriodId)) {
                this.f25179f.loadCompleted(loadEventInfo, m19599b(mediaLoadData));
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadError(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
            if (m19598a(i, mediaPeriodId)) {
                this.f25179f.loadError(loadEventInfo, m19599b(mediaLoadData), iOException, z);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadStarted(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (m19598a(i, mediaPeriodId)) {
                this.f25179f.loadStarted(loadEventInfo, m19599b(mediaLoadData));
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onUpstreamDiscarded(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            if (m19598a(i, mediaPeriodId)) {
                this.f25179f.upstreamDiscarded(m19599b(mediaLoadData));
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.CompositeMediaSource$b */
    /* loaded from: classes5.dex */
    public static final class C4827b<T> {

        /* renamed from: a */
        public final MediaSource f25182a;

        /* renamed from: b */
        public final MediaSource.MediaSourceCaller f25183b;

        /* renamed from: c */
        public final CompositeMediaSource<T>.C4826a f25184c;

        public C4827b(MediaSource mediaSource, MediaSource.MediaSourceCaller mediaSourceCaller, CompositeMediaSource<T>.C4826a c4826a) {
            this.f25182a = mediaSource;
            this.f25183b = mediaSourceCaller;
            this.f25184c = c4826a;
        }
    }

    public final void disableChildSource(@UnknownNull T t) {
        C4827b c4827b = (C4827b) Assertions.checkNotNull(this.f25175l.get(t));
        c4827b.f25182a.disable(c4827b.f25183b);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    @CallSuper
    public void disableInternal() {
        for (C4827b<T> c4827b : this.f25175l.values()) {
            c4827b.f25182a.disable(c4827b.f25183b);
        }
    }

    public final void enableChildSource(@UnknownNull T t) {
        C4827b c4827b = (C4827b) Assertions.checkNotNull(this.f25175l.get(t));
        c4827b.f25182a.enable(c4827b.f25183b);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    @CallSuper
    public void enableInternal() {
        for (C4827b<T> c4827b : this.f25175l.values()) {
            c4827b.f25182a.enable(c4827b.f25183b);
        }
    }

    @Nullable
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(@UnknownNull T t, MediaSource.MediaPeriodId mediaPeriodId) {
        return mediaPeriodId;
    }

    public long getMediaTimeForChildMediaTime(@UnknownNull T t, long j) {
        return j;
    }

    public int getWindowIndexForChildWindowIndex(@UnknownNull T t, int i) {
        return i;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    @CallSuper
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        Iterator<C4827b<T>> it2 = this.f25175l.values().iterator();
        while (it2.hasNext()) {
            it2.next().f25182a.maybeThrowSourceInfoRefreshError();
        }
    }

    /* renamed from: onChildSourceInfoRefreshed, reason: merged with bridge method [inline-methods] */
    public abstract void m19597b(@UnknownNull T t, MediaSource mediaSource, Timeline timeline);

    public final void prepareChildSource(@UnknownNull final T t, MediaSource mediaSource) {
        Assertions.checkArgument(!this.f25175l.containsKey(t));
        MediaSource.MediaSourceCaller mediaSourceCaller = new MediaSource.MediaSourceCaller() { // from class: com.sunia.HTREnginev2.n7e
            @Override // com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller
            public final void onSourceInfoRefreshed(MediaSource mediaSource2, Timeline timeline) {
                CompositeMediaSource.this.m19597b(t, mediaSource2, timeline);
            }
        };
        C4826a c4826a = new C4826a(t);
        this.f25175l.put(t, new C4827b<>(mediaSource, mediaSourceCaller, c4826a));
        mediaSource.addEventListener((Handler) Assertions.checkNotNull(this.f25176m), c4826a);
        mediaSource.addDrmEventListener((Handler) Assertions.checkNotNull(this.f25176m), c4826a);
        mediaSource.prepareSource(mediaSourceCaller, this.f25177n, getPlayerId());
        if (isEnabled()) {
            return;
        }
        mediaSource.disable(mediaSourceCaller);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    @CallSuper
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        this.f25177n = transferListener;
        this.f25176m = Util.createHandlerForCurrentLooper();
    }

    public final void releaseChildSource(@UnknownNull T t) {
        C4827b c4827b = (C4827b) Assertions.checkNotNull(this.f25175l.remove(t));
        c4827b.f25182a.releaseSource(c4827b.f25183b);
        c4827b.f25182a.removeEventListener(c4827b.f25184c);
        c4827b.f25182a.removeDrmEventListener(c4827b.f25184c);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    @CallSuper
    public void releaseSourceInternal() {
        for (C4827b<T> c4827b : this.f25175l.values()) {
            c4827b.f25182a.releaseSource(c4827b.f25183b);
            c4827b.f25182a.removeEventListener(c4827b.f25184c);
            c4827b.f25182a.removeDrmEventListener(c4827b.f25184c);
        }
        this.f25175l.clear();
    }
}
