package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.drm.DrmSessionManagerProvider;
import com.google.android.exoplayer2.source.BaseMediaSource;
import com.google.android.exoplayer2.source.ForwardingTimeline;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceFactory;
import com.google.android.exoplayer2.source.SinglePeriodTimeline;
import com.google.android.exoplayer2.source.rtsp.C4918b;
import com.google.android.exoplayer2.source.rtsp.RtpDataChannel;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.aul;
import java.io.IOException;
import javax.net.SocketFactory;

/* loaded from: classes5.dex */
public final class RtspMediaSource extends BaseMediaSource {
    public static final long DEFAULT_TIMEOUT_MS = 8000;

    /* renamed from: l */
    public final MediaItem f26369l;

    /* renamed from: m */
    public final RtpDataChannel.Factory f26370m;

    /* renamed from: n */
    public final String f26371n;

    /* renamed from: o */
    public final Uri f26372o;

    /* renamed from: p */
    public final SocketFactory f26373p;

    /* renamed from: q */
    public final boolean f26374q;

    /* renamed from: s */
    public boolean f26376s;

    /* renamed from: t */
    public boolean f26377t;

    /* renamed from: r */
    public long f26375r = C4649C.TIME_UNSET;

    /* renamed from: u */
    public boolean f26378u = true;

    /* loaded from: classes5.dex */
    public static final class Factory implements MediaSourceFactory {

        /* renamed from: a */
        public long f26379a = RtspMediaSource.DEFAULT_TIMEOUT_MS;

        /* renamed from: b */
        public String f26380b = ExoPlayerLibraryInfo.VERSION_SLASHY;

        /* renamed from: c */
        public SocketFactory f26381c = SocketFactory.getDefault();

        /* renamed from: d */
        public boolean f26382d;

        /* renamed from: e */
        public boolean f26383e;

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return new int[]{3};
        }

        public Factory setDebugLoggingEnabled(boolean z) {
            this.f26383e = z;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public Factory setDrmSessionManagerProvider(@Nullable DrmSessionManagerProvider drmSessionManagerProvider) {
            return this;
        }

        public Factory setForceUseRtpTcp(boolean z) {
            this.f26382d = z;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public Factory setLoadErrorHandlingPolicy(@Nullable LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            return this;
        }

        public Factory setSocketFactory(SocketFactory socketFactory) {
            this.f26381c = socketFactory;
            return this;
        }

        public Factory setTimeoutMs(@IntRange(from = 1) long j) {
            Assertions.checkArgument(j > 0);
            this.f26379a = j;
            return this;
        }

        public Factory setUserAgent(String str) {
            this.f26380b = str;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public RtspMediaSource createMediaSource(MediaItem mediaItem) {
            RtpDataChannel.Factory c4925i;
            Assertions.checkNotNull(mediaItem.localConfiguration);
            if (this.f26382d) {
                c4925i = new C4923g(this.f26379a);
            } else {
                c4925i = new C4925i(this.f26379a);
            }
            return new RtspMediaSource(mediaItem, c4925i, this.f26380b, this.f26381c, this.f26383e);
        }
    }

    /* loaded from: classes5.dex */
    public static final class RtspPlaybackException extends IOException {
        public RtspPlaybackException(String str) {
            super(str);
        }

        public RtspPlaybackException(Throwable th) {
            super(th);
        }

        public RtspPlaybackException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.rtsp.RtspMediaSource$a */
    /* loaded from: classes5.dex */
    public class C4909a implements C4918b.c {
        public C4909a() {
        }

        @Override // com.google.android.exoplayer2.source.rtsp.C4918b.c
        /* renamed from: a */
        public void mo20366a() {
            RtspMediaSource.this.f26376s = false;
            RtspMediaSource.this.m20365f();
        }

        @Override // com.google.android.exoplayer2.source.rtsp.C4918b.c
        /* renamed from: b */
        public void mo20367b(aul aulVar) {
            RtspMediaSource.this.f26375r = Util.msToUs(aulVar.m53100a());
            RtspMediaSource.this.f26376s = !aulVar.m53101c();
            RtspMediaSource.this.f26377t = aulVar.m53101c();
            RtspMediaSource.this.f26378u = false;
            RtspMediaSource.this.m20365f();
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.rtsp.RtspMediaSource$b */
    /* loaded from: classes5.dex */
    public class C4910b extends ForwardingTimeline {
        public C4910b(RtspMediaSource rtspMediaSource, Timeline timeline) {
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

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.rtsp");
    }

    @VisibleForTesting
    public RtspMediaSource(MediaItem mediaItem, RtpDataChannel.Factory factory, String str, SocketFactory socketFactory, boolean z) {
        this.f26369l = mediaItem;
        this.f26370m = factory;
        this.f26371n = str;
        this.f26372o = ((MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration)).uri;
        this.f26373p = socketFactory;
        this.f26374q = z;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        return new C4918b(allocator, this.f26370m, this.f26372o, new C4909a(), this.f26371n, this.f26373p, this.f26374q);
    }

    /* renamed from: f */
    public final void m20365f() {
        Timeline singlePeriodTimeline = new SinglePeriodTimeline(this.f26375r, this.f26376s, false, this.f26377t, (Object) null, this.f26369l);
        if (this.f26378u) {
            singlePeriodTimeline = new C4910b(this, singlePeriodTimeline);
        }
        refreshSourceInfo(singlePeriodTimeline);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.f26369l;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        m20365f();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((C4918b) mediaPeriod).m20457K();
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
    }
}
