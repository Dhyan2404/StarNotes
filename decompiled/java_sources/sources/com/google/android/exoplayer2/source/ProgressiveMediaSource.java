package com.google.android.exoplayer2.source;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.drm.DrmSessionManagerProvider;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.source.C4858b;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ProgressiveMediaExtractor;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;

/* loaded from: classes5.dex */
public final class ProgressiveMediaSource extends BaseMediaSource implements C4858b.b {
    public static final int DEFAULT_LOADING_CHECK_INTERVAL_BYTES = 1048576;

    /* renamed from: l */
    public final MediaItem f25302l;

    /* renamed from: m */
    public final MediaItem.LocalConfiguration f25303m;

    /* renamed from: n */
    public final DataSource.Factory f25304n;

    /* renamed from: o */
    public final ProgressiveMediaExtractor.Factory f25305o;

    /* renamed from: p */
    public final DrmSessionManager f25306p;

    /* renamed from: q */
    public final LoadErrorHandlingPolicy f25307q;

    /* renamed from: r */
    public final int f25308r;

    /* renamed from: s */
    public boolean f25309s;

    /* renamed from: t */
    public long f25310t;

    /* renamed from: u */
    public boolean f25311u;

    /* renamed from: v */
    public boolean f25312v;

    /* renamed from: w */
    @Nullable
    public TransferListener f25313w;

    /* loaded from: classes5.dex */
    public static final class Factory implements MediaSourceFactory {

        /* renamed from: a */
        public final DataSource.Factory f25314a;

        /* renamed from: b */
        public ProgressiveMediaExtractor.Factory f25315b;

        /* renamed from: c */
        public DrmSessionManagerProvider f25316c;

        /* renamed from: d */
        public LoadErrorHandlingPolicy f25317d;

        /* renamed from: e */
        public int f25318e;

        /* renamed from: f */
        @Nullable
        public String f25319f;

        /* renamed from: g */
        @Nullable
        public Object f25320g;

        public Factory(DataSource.Factory factory) {
            this(factory, new DefaultExtractorsFactory());
        }

        /* renamed from: b */
        public static /* synthetic */ ProgressiveMediaExtractor m19680b(ExtractorsFactory extractorsFactory, PlayerId playerId) {
            return new BundledExtractorsAdapter(extractorsFactory);
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return new int[]{4};
        }

        public Factory setContinueLoadingCheckIntervalBytes(int i) {
            this.f25318e = i;
            return this;
        }

        public Factory(DataSource.Factory factory, final ExtractorsFactory extractorsFactory) {
            this(factory, new ProgressiveMediaExtractor.Factory() { // from class: com.sunia.HTREnginev2.r8l
                @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory
                public final ProgressiveMediaExtractor createProgressiveMediaExtractor(PlayerId playerId) {
                    ProgressiveMediaExtractor m19680b;
                    m19680b = ProgressiveMediaSource.Factory.m19680b(ExtractorsFactory.this, playerId);
                    return m19680b;
                }
            });
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public ProgressiveMediaSource createMediaSource(MediaItem mediaItem) {
            Assertions.checkNotNull(mediaItem.localConfiguration);
            MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
            boolean z = localConfiguration.tag == null && this.f25320g != null;
            boolean z2 = localConfiguration.customCacheKey == null && this.f25319f != null;
            if (z && z2) {
                mediaItem = mediaItem.buildUpon().setTag(this.f25320g).setCustomCacheKey(this.f25319f).build();
            } else if (z) {
                mediaItem = mediaItem.buildUpon().setTag(this.f25320g).build();
            } else if (z2) {
                mediaItem = mediaItem.buildUpon().setCustomCacheKey(this.f25319f).build();
            }
            MediaItem mediaItem2 = mediaItem;
            return new ProgressiveMediaSource(mediaItem2, this.f25314a, this.f25315b, this.f25316c.get(mediaItem2), this.f25317d, this.f25318e, null);
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public Factory setDrmSessionManagerProvider(@Nullable DrmSessionManagerProvider drmSessionManagerProvider) {
            if (drmSessionManagerProvider == null) {
                drmSessionManagerProvider = new DefaultDrmSessionManagerProvider();
            }
            this.f25316c = drmSessionManagerProvider;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public Factory setLoadErrorHandlingPolicy(@Nullable LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            if (loadErrorHandlingPolicy == null) {
                loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            }
            this.f25317d = loadErrorHandlingPolicy;
            return this;
        }

        public Factory(DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2) {
            this(factory, factory2, new DefaultDrmSessionManagerProvider(), new DefaultLoadErrorHandlingPolicy(), 1048576);
        }

        public Factory(DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2, DrmSessionManagerProvider drmSessionManagerProvider, LoadErrorHandlingPolicy loadErrorHandlingPolicy, int i) {
            this.f25314a = factory;
            this.f25315b = factory2;
            this.f25316c = drmSessionManagerProvider;
            this.f25317d = loadErrorHandlingPolicy;
            this.f25318e = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ProgressiveMediaSource$a */
    /* loaded from: classes5.dex */
    public class C4842a extends ForwardingTimeline {
        public C4842a(ProgressiveMediaSource progressiveMediaSource, Timeline timeline) {
            super(timeline);
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            super.getPeriod(i, period, z);
            period.isPlaceholder = true;
            return period;
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
            super.getWindow(i, window, j);
            window.isPlaceholder = true;
            return window;
        }
    }

    public /* synthetic */ ProgressiveMediaSource(MediaItem mediaItem, DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, int i, C4842a c4842a) {
        this(mediaItem, factory, factory2, drmSessionManager, loadErrorHandlingPolicy, i);
    }

    /* renamed from: a */
    public final void m19678a() {
        Timeline singlePeriodTimeline = new SinglePeriodTimeline(this.f25310t, this.f25311u, false, this.f25312v, (Object) null, this.f25302l);
        if (this.f25309s) {
            singlePeriodTimeline = new C4842a(this, singlePeriodTimeline);
        }
        refreshSourceInfo(singlePeriodTimeline);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        DataSource createDataSource = this.f25304n.createDataSource();
        TransferListener transferListener = this.f25313w;
        if (transferListener != null) {
            createDataSource.addTransferListener(transferListener);
        }
        return new C4858b(this.f25303m.uri, createDataSource, this.f25305o.createProgressiveMediaExtractor(getPlayerId()), this.f25306p, createDrmEventDispatcher(mediaPeriodId), this.f25307q, createEventDispatcher(mediaPeriodId), this, allocator, this.f25303m.customCacheKey, this.f25308r);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.f25302l;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // com.google.android.exoplayer2.source.C4858b.b
    public void onSourceInfoRefreshed(long j, boolean z, boolean z2) {
        if (j == C4649C.TIME_UNSET) {
            j = this.f25310t;
        }
        if (!this.f25309s && this.f25310t == j && this.f25311u == z && this.f25312v == z2) {
            return;
        }
        this.f25310t = j;
        this.f25311u = z;
        this.f25312v = z2;
        this.f25309s = false;
        m19678a();
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        this.f25313w = transferListener;
        this.f25306p.prepare();
        this.f25306p.setPlayer((Looper) Assertions.checkNotNull(Looper.myLooper()), getPlayerId());
        m19678a();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((C4858b) mediaPeriod).m19835H();
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        this.f25306p.release();
    }

    public ProgressiveMediaSource(MediaItem mediaItem, DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, int i) {
        this.f25303m = (MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration);
        this.f25302l = mediaItem;
        this.f25304n = factory;
        this.f25305o = factory2;
        this.f25306p = drmSessionManager;
        this.f25307q = loadErrorHandlingPolicy;
        this.f25308r = i;
        this.f25309s = true;
        this.f25310t = C4649C.TIME_UNSET;
    }
}
