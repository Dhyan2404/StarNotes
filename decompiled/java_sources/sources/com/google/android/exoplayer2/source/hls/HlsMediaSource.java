package com.google.android.exoplayer2.source.hls;

import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.drm.DrmSessionManagerProvider;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.BaseMediaSource;
import com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.MediaSourceFactory;
import com.google.android.exoplayer2.source.SinglePeriodTimeline;
import com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistParserFactory;
import com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker;
import com.google.android.exoplayer2.source.hls.playlist.FilteringHlsPlaylistParserFactory;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMultivariantPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;

/* loaded from: classes5.dex */
public final class HlsMediaSource extends BaseMediaSource implements HlsPlaylistTracker.PrimaryPlaylistListener {
    public static final int METADATA_TYPE_EMSG = 3;
    public static final int METADATA_TYPE_ID3 = 1;

    /* renamed from: l */
    public final HlsExtractorFactory f25943l;

    /* renamed from: m */
    public final MediaItem.LocalConfiguration f25944m;

    /* renamed from: n */
    public final HlsDataSourceFactory f25945n;

    /* renamed from: o */
    public final CompositeSequenceableLoaderFactory f25946o;

    /* renamed from: p */
    public final DrmSessionManager f25947p;

    /* renamed from: q */
    public final LoadErrorHandlingPolicy f25948q;

    /* renamed from: r */
    public final boolean f25949r;

    /* renamed from: s */
    public final int f25950s;

    /* renamed from: t */
    public final boolean f25951t;

    /* renamed from: u */
    public final HlsPlaylistTracker f25952u;

    /* renamed from: v */
    public final long f25953v;

    /* renamed from: w */
    public final MediaItem f25954w;

    /* renamed from: x */
    public MediaItem.LiveConfiguration f25955x;

    /* renamed from: y */
    @Nullable
    public TransferListener f25956y;

    /* loaded from: classes5.dex */
    public static final class Factory implements MediaSourceFactory {

        /* renamed from: a */
        public final HlsDataSourceFactory f25957a;

        /* renamed from: b */
        public HlsExtractorFactory f25958b;

        /* renamed from: c */
        public HlsPlaylistParserFactory f25959c;

        /* renamed from: d */
        public HlsPlaylistTracker.Factory f25960d;

        /* renamed from: e */
        public CompositeSequenceableLoaderFactory f25961e;

        /* renamed from: f */
        public DrmSessionManagerProvider f25962f;

        /* renamed from: g */
        public LoadErrorHandlingPolicy f25963g;

        /* renamed from: h */
        public boolean f25964h;

        /* renamed from: i */
        public int f25965i;

        /* renamed from: j */
        public boolean f25966j;

        /* renamed from: k */
        public long f25967k;

        public Factory(DataSource.Factory factory) {
            this(new DefaultHlsDataSourceFactory(factory));
        }

        @VisibleForTesting
        /* renamed from: a */
        public Factory m20088a(long j) {
            this.f25967k = j;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return new int[]{2};
        }

        public Factory setAllowChunklessPreparation(boolean z) {
            this.f25964h = z;
            return this;
        }

        public Factory setCompositeSequenceableLoaderFactory(@Nullable CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory) {
            if (compositeSequenceableLoaderFactory == null) {
                compositeSequenceableLoaderFactory = new DefaultCompositeSequenceableLoaderFactory();
            }
            this.f25961e = compositeSequenceableLoaderFactory;
            return this;
        }

        public Factory setExtractorFactory(@Nullable HlsExtractorFactory hlsExtractorFactory) {
            if (hlsExtractorFactory == null) {
                hlsExtractorFactory = HlsExtractorFactory.DEFAULT;
            }
            this.f25958b = hlsExtractorFactory;
            return this;
        }

        public Factory setMetadataType(int i) {
            this.f25965i = i;
            return this;
        }

        public Factory setPlaylistParserFactory(@Nullable HlsPlaylistParserFactory hlsPlaylistParserFactory) {
            if (hlsPlaylistParserFactory == null) {
                hlsPlaylistParserFactory = new DefaultHlsPlaylistParserFactory();
            }
            this.f25959c = hlsPlaylistParserFactory;
            return this;
        }

        public Factory setPlaylistTrackerFactory(@Nullable HlsPlaylistTracker.Factory factory) {
            if (factory == null) {
                factory = DefaultHlsPlaylistTracker.FACTORY;
            }
            this.f25960d = factory;
            return this;
        }

        public Factory setUseSessionKeys(boolean z) {
            this.f25966j = z;
            return this;
        }

        public Factory(HlsDataSourceFactory hlsDataSourceFactory) {
            this.f25957a = (HlsDataSourceFactory) Assertions.checkNotNull(hlsDataSourceFactory);
            this.f25962f = new DefaultDrmSessionManagerProvider();
            this.f25959c = new DefaultHlsPlaylistParserFactory();
            this.f25960d = DefaultHlsPlaylistTracker.FACTORY;
            this.f25958b = HlsExtractorFactory.DEFAULT;
            this.f25963g = new DefaultLoadErrorHandlingPolicy();
            this.f25961e = new DefaultCompositeSequenceableLoaderFactory();
            this.f25965i = 1;
            this.f25967k = C4649C.TIME_UNSET;
            this.f25964h = true;
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public HlsMediaSource createMediaSource(MediaItem mediaItem) {
            Assertions.checkNotNull(mediaItem.localConfiguration);
            HlsPlaylistParserFactory hlsPlaylistParserFactory = this.f25959c;
            List<StreamKey> list = mediaItem.localConfiguration.streamKeys;
            if (!list.isEmpty()) {
                hlsPlaylistParserFactory = new FilteringHlsPlaylistParserFactory(hlsPlaylistParserFactory, list);
            }
            HlsDataSourceFactory hlsDataSourceFactory = this.f25957a;
            HlsExtractorFactory hlsExtractorFactory = this.f25958b;
            CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory = this.f25961e;
            DrmSessionManager drmSessionManager = this.f25962f.get(mediaItem);
            LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.f25963g;
            return new HlsMediaSource(mediaItem, hlsDataSourceFactory, hlsExtractorFactory, compositeSequenceableLoaderFactory, drmSessionManager, loadErrorHandlingPolicy, this.f25960d.createTracker(this.f25957a, loadErrorHandlingPolicy, hlsPlaylistParserFactory), this.f25967k, this.f25964h, this.f25965i, this.f25966j);
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public Factory setDrmSessionManagerProvider(@Nullable DrmSessionManagerProvider drmSessionManagerProvider) {
            if (drmSessionManagerProvider == null) {
                drmSessionManagerProvider = new DefaultDrmSessionManagerProvider();
            }
            this.f25962f = drmSessionManagerProvider;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public Factory setLoadErrorHandlingPolicy(@Nullable LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            if (loadErrorHandlingPolicy == null) {
                loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            }
            this.f25963g = loadErrorHandlingPolicy;
            return this;
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface MetadataType {
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.hls");
    }

    @Nullable
    /* renamed from: c */
    public static HlsMediaPlaylist.Part m20080c(List<HlsMediaPlaylist.Part> list, long j) {
        HlsMediaPlaylist.Part part = null;
        for (int i = 0; i < list.size(); i++) {
            HlsMediaPlaylist.Part part2 = list.get(i);
            long j2 = part2.relativeStartTimeUs;
            if (j2 > j || !part2.isIndependent) {
                if (j2 > j) {
                    break;
                }
            } else {
                part = part2;
            }
        }
        return part;
    }

    /* renamed from: d */
    public static HlsMediaPlaylist.Segment m20081d(List<HlsMediaPlaylist.Segment> list, long j) {
        return list.get(Util.binarySearchFloor((List<? extends Comparable<? super Long>>) list, Long.valueOf(j), true, true));
    }

    /* renamed from: g */
    public static long m20082g(HlsMediaPlaylist hlsMediaPlaylist, long j) {
        long j2;
        HlsMediaPlaylist.ServerControl serverControl = hlsMediaPlaylist.serverControl;
        long j3 = hlsMediaPlaylist.startOffsetUs;
        if (j3 != C4649C.TIME_UNSET) {
            j2 = hlsMediaPlaylist.durationUs - j3;
        } else {
            long j4 = serverControl.partHoldBackUs;
            if (j4 == C4649C.TIME_UNSET || hlsMediaPlaylist.partTargetDurationUs == C4649C.TIME_UNSET) {
                long j5 = serverControl.holdBackUs;
                j2 = j5 != C4649C.TIME_UNSET ? j5 : hlsMediaPlaylist.targetDurationUs * 3;
            } else {
                j2 = j4;
            }
        }
        return j2 + j;
    }

    /* renamed from: a */
    public final SinglePeriodTimeline m20083a(HlsMediaPlaylist hlsMediaPlaylist, long j, long j2, HlsManifest hlsManifest) {
        long initialStartTimeUs = hlsMediaPlaylist.startTimeUs - this.f25952u.getInitialStartTimeUs();
        long j3 = hlsMediaPlaylist.hasEndTag ? initialStartTimeUs + hlsMediaPlaylist.durationUs : -9223372036854775807L;
        long m20085e = m20085e(hlsMediaPlaylist);
        long j4 = this.f25955x.targetOffsetMs;
        m20087h(hlsMediaPlaylist, Util.constrainValue(j4 != C4649C.TIME_UNSET ? Util.msToUs(j4) : m20082g(hlsMediaPlaylist, m20085e), m20085e, hlsMediaPlaylist.durationUs + m20085e));
        return new SinglePeriodTimeline(j, j2, C4649C.TIME_UNSET, j3, hlsMediaPlaylist.durationUs, initialStartTimeUs, m20086f(hlsMediaPlaylist, m20085e), true, !hlsMediaPlaylist.hasEndTag, hlsMediaPlaylist.playlistType == 2 && hlsMediaPlaylist.hasPositiveStartOffset, hlsManifest, this.f25954w, this.f25955x);
    }

    /* renamed from: b */
    public final SinglePeriodTimeline m20084b(HlsMediaPlaylist hlsMediaPlaylist, long j, long j2, HlsManifest hlsManifest) {
        long j3;
        if (hlsMediaPlaylist.startOffsetUs == C4649C.TIME_UNSET || hlsMediaPlaylist.segments.isEmpty()) {
            j3 = 0;
        } else {
            if (!hlsMediaPlaylist.preciseStart) {
                long j4 = hlsMediaPlaylist.startOffsetUs;
                if (j4 != hlsMediaPlaylist.durationUs) {
                    j3 = m20081d(hlsMediaPlaylist.segments, j4).relativeStartTimeUs;
                }
            }
            j3 = hlsMediaPlaylist.startOffsetUs;
        }
        long j5 = hlsMediaPlaylist.durationUs;
        return new SinglePeriodTimeline(j, j2, C4649C.TIME_UNSET, j5, j5, 0L, j3, true, false, true, hlsManifest, this.f25954w, null);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        MediaSourceEventListener.EventDispatcher createEventDispatcher = createEventDispatcher(mediaPeriodId);
        return new HlsMediaPeriod(this.f25943l, this.f25952u, this.f25945n, this.f25956y, this.f25947p, createDrmEventDispatcher(mediaPeriodId), this.f25948q, createEventDispatcher, allocator, this.f25946o, this.f25949r, this.f25950s, this.f25951t, getPlayerId());
    }

    /* renamed from: e */
    public final long m20085e(HlsMediaPlaylist hlsMediaPlaylist) {
        if (hlsMediaPlaylist.hasProgramDateTime) {
            return Util.msToUs(Util.getNowUnixTimeMs(this.f25953v)) - hlsMediaPlaylist.getEndTimeUs();
        }
        return 0L;
    }

    /* renamed from: f */
    public final long m20086f(HlsMediaPlaylist hlsMediaPlaylist, long j) {
        long j2 = hlsMediaPlaylist.startOffsetUs;
        if (j2 == C4649C.TIME_UNSET) {
            j2 = (hlsMediaPlaylist.durationUs + j) - Util.msToUs(this.f25955x.targetOffsetMs);
        }
        if (hlsMediaPlaylist.preciseStart) {
            return j2;
        }
        HlsMediaPlaylist.Part m20080c = m20080c(hlsMediaPlaylist.trailingParts, j2);
        if (m20080c != null) {
            return m20080c.relativeStartTimeUs;
        }
        if (hlsMediaPlaylist.segments.isEmpty()) {
            return 0L;
        }
        HlsMediaPlaylist.Segment m20081d = m20081d(hlsMediaPlaylist.segments, j2);
        HlsMediaPlaylist.Part m20080c2 = m20080c(m20081d.parts, j2);
        return m20080c2 != null ? m20080c2.relativeStartTimeUs : m20081d.relativeStartTimeUs;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.f25954w;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m20087h(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist r5, long r6) {
        /*
            r4 = this;
            com.google.android.exoplayer2.MediaItem r0 = r4.f25954w
            com.google.android.exoplayer2.MediaItem$LiveConfiguration r0 = r0.liveConfiguration
            float r1 = r0.minPlaybackSpeed
            r2 = -8388609(0xffffffffff7fffff, float:-3.4028235E38)
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 != 0) goto L28
            float r0 = r0.maxPlaybackSpeed
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L28
            com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist$ServerControl r5 = r5.serverControl
            long r0 = r5.holdBackUs
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L28
            long r0 = r5.partHoldBackUs
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 != 0) goto L28
            r5 = 1
            goto L29
        L28:
            r5 = 0
        L29:
            com.google.android.exoplayer2.MediaItem$LiveConfiguration$Builder r0 = new com.google.android.exoplayer2.MediaItem$LiveConfiguration$Builder
            r0.<init>()
            long r6 = com.google.android.exoplayer2.util.Util.usToMs(r6)
            com.google.android.exoplayer2.MediaItem$LiveConfiguration$Builder r6 = r0.setTargetOffsetMs(r6)
            r7 = 1065353216(0x3f800000, float:1.0)
            if (r5 == 0) goto L3c
            r0 = r7
            goto L40
        L3c:
            com.google.android.exoplayer2.MediaItem$LiveConfiguration r0 = r4.f25955x
            float r0 = r0.minPlaybackSpeed
        L40:
            com.google.android.exoplayer2.MediaItem$LiveConfiguration$Builder r6 = r6.setMinPlaybackSpeed(r0)
            if (r5 == 0) goto L47
            goto L4b
        L47:
            com.google.android.exoplayer2.MediaItem$LiveConfiguration r5 = r4.f25955x
            float r7 = r5.maxPlaybackSpeed
        L4b:
            com.google.android.exoplayer2.MediaItem$LiveConfiguration$Builder r5 = r6.setMaxPlaybackSpeed(r7)
            com.google.android.exoplayer2.MediaItem$LiveConfiguration r5 = r5.build()
            r4.f25955x = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsMediaSource.m20087h(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist, long):void");
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.f25952u.maybeThrowPrimaryPlaylistRefreshError();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PrimaryPlaylistListener
    public void onPrimaryPlaylistRefreshed(HlsMediaPlaylist hlsMediaPlaylist) {
        long usToMs = hlsMediaPlaylist.hasProgramDateTime ? Util.usToMs(hlsMediaPlaylist.startTimeUs) : -9223372036854775807L;
        int i = hlsMediaPlaylist.playlistType;
        long j = (i == 2 || i == 1) ? usToMs : -9223372036854775807L;
        HlsManifest hlsManifest = new HlsManifest((HlsMultivariantPlaylist) Assertions.checkNotNull(this.f25952u.getMultivariantPlaylist()), hlsMediaPlaylist);
        refreshSourceInfo(this.f25952u.isLive() ? m20083a(hlsMediaPlaylist, j, usToMs, hlsManifest) : m20084b(hlsMediaPlaylist, j, usToMs, hlsManifest));
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        this.f25956y = transferListener;
        this.f25947p.prepare();
        this.f25947p.setPlayer((Looper) Assertions.checkNotNull(Looper.myLooper()), getPlayerId());
        this.f25952u.start(this.f25944m.uri, createEventDispatcher(null), this);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((HlsMediaPeriod) mediaPeriod).release();
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        this.f25952u.stop();
        this.f25947p.release();
    }

    public HlsMediaSource(MediaItem mediaItem, HlsDataSourceFactory hlsDataSourceFactory, HlsExtractorFactory hlsExtractorFactory, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistTracker hlsPlaylistTracker, long j, boolean z, int i, boolean z2) {
        this.f25944m = (MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration);
        this.f25954w = mediaItem;
        this.f25955x = mediaItem.liveConfiguration;
        this.f25945n = hlsDataSourceFactory;
        this.f25943l = hlsExtractorFactory;
        this.f25946o = compositeSequenceableLoaderFactory;
        this.f25947p = drmSessionManager;
        this.f25948q = loadErrorHandlingPolicy;
        this.f25952u = hlsPlaylistTracker;
        this.f25953v = j;
        this.f25949r = z;
        this.f25950s = i;
        this.f25951t = z2;
    }
}
