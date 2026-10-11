package com.google.android.exoplayer2.source.smoothstreaming;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.drm.DrmSessionManagerProvider;
import com.google.android.exoplayer2.offline.FilteringManifestParser;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.BaseMediaSource;
import com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.MediaSourceFactory;
import com.google.android.exoplayer2.source.SinglePeriodTimeline;
import com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.LoaderErrorThrower;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class SsMediaSource extends BaseMediaSource implements Loader.Callback<ParsingLoadable<SsManifest>> {
    public static final long DEFAULT_LIVE_PRESENTATION_DELAY_MS = 30000;

    /* renamed from: q0 */
    public static final int f26576q0 = 5000;

    /* renamed from: t0 */
    public static final long f26577t0 = 5000000;

    /* renamed from: J */
    public LoaderErrorThrower f26578J;

    /* renamed from: O */
    @Nullable
    public TransferListener f26579O;

    /* renamed from: Q */
    public long f26580Q;

    /* renamed from: Z */
    public SsManifest f26581Z;

    /* renamed from: k0 */
    public Handler f26582k0;

    /* renamed from: l */
    public final boolean f26583l;

    /* renamed from: m */
    public final Uri f26584m;

    /* renamed from: n */
    public final MediaItem.LocalConfiguration f26585n;

    /* renamed from: o */
    public final MediaItem f26586o;

    /* renamed from: p */
    public final DataSource.Factory f26587p;

    /* renamed from: q */
    public final SsChunkSource.Factory f26588q;

    /* renamed from: r */
    public final CompositeSequenceableLoaderFactory f26589r;

    /* renamed from: s */
    public final DrmSessionManager f26590s;

    /* renamed from: t */
    public final LoadErrorHandlingPolicy f26591t;

    /* renamed from: u */
    public final long f26592u;

    /* renamed from: v */
    public final MediaSourceEventListener.EventDispatcher f26593v;

    /* renamed from: w */
    public final ParsingLoadable.Parser<? extends SsManifest> f26594w;

    /* renamed from: x */
    public final ArrayList<C4929a> f26595x;

    /* renamed from: y */
    public DataSource f26596y;

    /* renamed from: z */
    public Loader f26597z;

    /* loaded from: classes5.dex */
    public static final class Factory implements MediaSourceFactory {

        /* renamed from: a */
        public final SsChunkSource.Factory f26598a;

        /* renamed from: b */
        @Nullable
        public final DataSource.Factory f26599b;

        /* renamed from: c */
        public CompositeSequenceableLoaderFactory f26600c;

        /* renamed from: d */
        public DrmSessionManagerProvider f26601d;

        /* renamed from: e */
        public LoadErrorHandlingPolicy f26602e;

        /* renamed from: f */
        public long f26603f;

        /* renamed from: g */
        @Nullable
        public ParsingLoadable.Parser<? extends SsManifest> f26604g;

        public Factory(DataSource.Factory factory) {
            this(new DefaultSsChunkSource.Factory(factory), factory);
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return new int[]{1};
        }

        public Factory setCompositeSequenceableLoaderFactory(@Nullable CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory) {
            if (compositeSequenceableLoaderFactory == null) {
                compositeSequenceableLoaderFactory = new DefaultCompositeSequenceableLoaderFactory();
            }
            this.f26600c = compositeSequenceableLoaderFactory;
            return this;
        }

        public Factory setLivePresentationDelayMs(long j) {
            this.f26603f = j;
            return this;
        }

        public Factory setManifestParser(@Nullable ParsingLoadable.Parser<? extends SsManifest> parser) {
            this.f26604g = parser;
            return this;
        }

        public Factory(SsChunkSource.Factory factory, @Nullable DataSource.Factory factory2) {
            this.f26598a = (SsChunkSource.Factory) Assertions.checkNotNull(factory);
            this.f26599b = factory2;
            this.f26601d = new DefaultDrmSessionManagerProvider();
            this.f26602e = new DefaultLoadErrorHandlingPolicy();
            this.f26603f = 30000L;
            this.f26600c = new DefaultCompositeSequenceableLoaderFactory();
        }

        public SsMediaSource createMediaSource(SsManifest ssManifest) {
            return createMediaSource(ssManifest, MediaItem.fromUri(Uri.EMPTY));
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public Factory setDrmSessionManagerProvider(@Nullable DrmSessionManagerProvider drmSessionManagerProvider) {
            if (drmSessionManagerProvider == null) {
                drmSessionManagerProvider = new DefaultDrmSessionManagerProvider();
            }
            this.f26601d = drmSessionManagerProvider;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public Factory setLoadErrorHandlingPolicy(@Nullable LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            if (loadErrorHandlingPolicy == null) {
                loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            }
            this.f26602e = loadErrorHandlingPolicy;
            return this;
        }

        public SsMediaSource createMediaSource(SsManifest ssManifest, MediaItem mediaItem) {
            List<StreamKey> m26161of;
            SsManifest ssManifest2 = ssManifest;
            Assertions.checkArgument(!ssManifest2.isLive);
            MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
            if (localConfiguration != null) {
                m26161of = localConfiguration.streamKeys;
            } else {
                m26161of = ImmutableList.m26161of();
            }
            if (!m26161of.isEmpty()) {
                ssManifest2 = ssManifest2.copy(m26161of);
            }
            SsManifest ssManifest3 = ssManifest2;
            MediaItem build = mediaItem.buildUpon().setMimeType(MimeTypes.APPLICATION_SS).setUri(mediaItem.localConfiguration != null ? mediaItem.localConfiguration.uri : Uri.EMPTY).build();
            return new SsMediaSource(build, ssManifest3, null, null, this.f26598a, this.f26600c, this.f26601d.get(build), this.f26602e, this.f26603f);
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public SsMediaSource createMediaSource(MediaItem mediaItem) {
            Assertions.checkNotNull(mediaItem.localConfiguration);
            ParsingLoadable.Parser parser = this.f26604g;
            if (parser == null) {
                parser = new SsManifestParser();
            }
            List<StreamKey> list = mediaItem.localConfiguration.streamKeys;
            return new SsMediaSource(mediaItem, null, this.f26599b, !list.isEmpty() ? new FilteringManifestParser(parser, list) : parser, this.f26598a, this.f26600c, this.f26601d.get(mediaItem), this.f26602e, this.f26603f);
        }
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.smoothstreaming");
    }

    /* renamed from: b */
    public final void m20505b() {
        SinglePeriodTimeline singlePeriodTimeline;
        for (int i = 0; i < this.f26595x.size(); i++) {
            this.f26595x.get(i).m20513f(this.f26581Z);
        }
        long j = Long.MIN_VALUE;
        long j2 = Long.MAX_VALUE;
        for (SsManifest.StreamElement streamElement : this.f26581Z.streamElements) {
            if (streamElement.chunkCount > 0) {
                j2 = Math.min(j2, streamElement.getStartTimeUs(0));
                j = Math.max(j, streamElement.getStartTimeUs(streamElement.chunkCount - 1) + streamElement.getChunkDurationUs(streamElement.chunkCount - 1));
            }
        }
        if (j2 == Long.MAX_VALUE) {
            long j3 = this.f26581Z.isLive ? -9223372036854775807L : 0L;
            SsManifest ssManifest = this.f26581Z;
            boolean z = ssManifest.isLive;
            singlePeriodTimeline = new SinglePeriodTimeline(j3, 0L, 0L, 0L, true, z, z, (Object) ssManifest, this.f26586o);
        } else {
            SsManifest ssManifest2 = this.f26581Z;
            if (ssManifest2.isLive) {
                long j4 = ssManifest2.dvrWindowLengthUs;
                if (j4 != C4649C.TIME_UNSET && j4 > 0) {
                    j2 = Math.max(j2, j - j4);
                }
                long j5 = j2;
                long j6 = j - j5;
                long msToUs = j6 - Util.msToUs(this.f26592u);
                if (msToUs < 5000000) {
                    msToUs = Math.min(5000000L, j6 / 2);
                }
                singlePeriodTimeline = new SinglePeriodTimeline(C4649C.TIME_UNSET, j6, j5, msToUs, true, true, true, (Object) this.f26581Z, this.f26586o);
            } else {
                long j7 = ssManifest2.durationUs;
                long j8 = j7 != C4649C.TIME_UNSET ? j7 : j - j2;
                singlePeriodTimeline = new SinglePeriodTimeline(j2 + j8, j8, j2, 0L, true, false, false, (Object) this.f26581Z, this.f26586o);
            }
        }
        refreshSourceInfo(singlePeriodTimeline);
    }

    /* renamed from: c */
    public final void m20506c() {
        if (this.f26581Z.isLive) {
            this.f26582k0.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.axm
                @Override // java.lang.Runnable
                public final void run() {
                    SsMediaSource.this.m20507d();
                }
            }, Math.max(0L, (this.f26580Q + 5000) - SystemClock.elapsedRealtime()));
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        MediaSourceEventListener.EventDispatcher createEventDispatcher = createEventDispatcher(mediaPeriodId);
        C4929a c4929a = new C4929a(this.f26581Z, this.f26588q, this.f26579O, this.f26589r, this.f26590s, createDrmEventDispatcher(mediaPeriodId), this.f26591t, createEventDispatcher, this.f26578J, allocator);
        this.f26595x.add(c4929a);
        return c4929a;
    }

    /* renamed from: d */
    public final void m20507d() {
        if (this.f26597z.hasFatalError()) {
            return;
        }
        ParsingLoadable parsingLoadable = new ParsingLoadable(this.f26596y, this.f26584m, 4, this.f26594w);
        this.f26593v.loadStarted(new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, this.f26597z.startLoading(parsingLoadable, this, this.f26591t.getMinimumLoadableRetryCount(parsingLoadable.type))), parsingLoadable.type);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.f26586o;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.f26578J.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        this.f26579O = transferListener;
        this.f26590s.prepare();
        this.f26590s.setPlayer(Looper.myLooper(), getPlayerId());
        if (this.f26583l) {
            this.f26578J = new LoaderErrorThrower.Dummy();
            m20505b();
            return;
        }
        this.f26596y = this.f26587p.createDataSource();
        Loader loader = new Loader("SsMediaSource");
        this.f26597z = loader;
        this.f26578J = loader;
        this.f26582k0 = Util.createHandlerForCurrentLooper();
        m20507d();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((C4929a) mediaPeriod).m20512e();
        this.f26595x.remove(mediaPeriod);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        this.f26581Z = this.f26583l ? this.f26581Z : null;
        this.f26596y = null;
        this.f26580Q = 0L;
        Loader loader = this.f26597z;
        if (loader != null) {
            loader.release();
            this.f26597z = null;
        }
        Handler handler = this.f26582k0;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f26582k0 = null;
        }
        this.f26590s.release();
    }

    public SsMediaSource(MediaItem mediaItem, @Nullable SsManifest ssManifest, @Nullable DataSource.Factory factory, @Nullable ParsingLoadable.Parser<? extends SsManifest> parser, SsChunkSource.Factory factory2, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, long j) {
        Assertions.checkState(ssManifest == null || !ssManifest.isLive);
        this.f26586o = mediaItem;
        MediaItem.LocalConfiguration localConfiguration = (MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration);
        this.f26585n = localConfiguration;
        this.f26581Z = ssManifest;
        this.f26584m = localConfiguration.uri.equals(Uri.EMPTY) ? null : Util.fixSmoothStreamingIsmManifestUri(localConfiguration.uri);
        this.f26587p = factory;
        this.f26594w = parser;
        this.f26588q = factory2;
        this.f26589r = compositeSequenceableLoaderFactory;
        this.f26590s = drmSessionManager;
        this.f26591t = loadErrorHandlingPolicy;
        this.f26592u = j;
        this.f26593v = createEventDispatcher(null);
        this.f26583l = ssManifest != null;
        this.f26595x = new ArrayList<>();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCanceled(ParsingLoadable<SsManifest> parsingLoadable, long j, long j2, boolean z) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.f26591t.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.f26593v.loadCanceled(loadEventInfo, parsingLoadable.type);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCompleted(ParsingLoadable<SsManifest> parsingLoadable, long j, long j2) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.f26591t.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.f26593v.loadCompleted(loadEventInfo, parsingLoadable.type);
        this.f26581Z = parsingLoadable.getResult();
        this.f26580Q = j - j2;
        m20505b();
        m20506c();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public Loader.LoadErrorAction onLoadError(ParsingLoadable<SsManifest> parsingLoadable, long j, long j2, IOException iOException, int i) {
        Loader.LoadErrorAction createRetryAction;
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        long retryDelayMsFor = this.f26591t.getRetryDelayMsFor(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(parsingLoadable.type), iOException, i));
        if (retryDelayMsFor == C4649C.TIME_UNSET) {
            createRetryAction = Loader.DONT_RETRY_FATAL;
        } else {
            createRetryAction = Loader.createRetryAction(false, retryDelayMsFor);
        }
        boolean z = !createRetryAction.isRetry();
        this.f26593v.loadError(loadEventInfo, parsingLoadable.type, iOException, z);
        if (z) {
            this.f26591t.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        }
        return createRetryAction;
    }
}
