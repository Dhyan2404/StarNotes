package com.google.android.exoplayer2.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.TracksInfo;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.PlaybackSessionManager;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.UnsupportedDrmException;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.UdpDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.NetworkTypeObserver;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import com.sunia.HTREnginev2.hjj;
import com.sunia.HTREnginev2.jkj;
import com.sunia.HTREnginev2.kkj;
import com.sunia.HTREnginev2.mkj;
import com.sunia.HTREnginev2.nkj;
import com.sunia.HTREnginev2.okj;
import com.sunia.HTREnginev2.qjj;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

@RequiresApi(31)
/* loaded from: classes5.dex */
public final class MediaMetricsListener implements AnalyticsListener, PlaybackSessionManager.Listener {

    /* renamed from: A */
    public boolean f22878A;

    /* renamed from: a */
    public final Context f22879a;

    /* renamed from: b */
    public final PlaybackSessionManager f22880b;

    /* renamed from: c */
    public final PlaybackSession f22881c;

    /* renamed from: i */
    @Nullable
    public String f22887i;

    /* renamed from: j */
    @Nullable
    public PlaybackMetrics.Builder f22888j;

    /* renamed from: k */
    public int f22889k;

    /* renamed from: n */
    @Nullable
    public PlaybackException f22892n;

    /* renamed from: o */
    @Nullable
    public C4675b f22893o;

    /* renamed from: p */
    @Nullable
    public C4675b f22894p;

    /* renamed from: q */
    @Nullable
    public C4675b f22895q;

    /* renamed from: r */
    @Nullable
    public Format f22896r;

    /* renamed from: s */
    @Nullable
    public Format f22897s;

    /* renamed from: t */
    @Nullable
    public Format f22898t;

    /* renamed from: u */
    public boolean f22899u;

    /* renamed from: v */
    public int f22900v;

    /* renamed from: w */
    public boolean f22901w;

    /* renamed from: x */
    public int f22902x;

    /* renamed from: y */
    public int f22903y;

    /* renamed from: z */
    public int f22904z;

    /* renamed from: e */
    public final Timeline.Window f22883e = new Timeline.Window();

    /* renamed from: f */
    public final Timeline.Period f22884f = new Timeline.Period();

    /* renamed from: h */
    public final HashMap<String, Long> f22886h = new HashMap<>();

    /* renamed from: g */
    public final HashMap<String, Long> f22885g = new HashMap<>();

    /* renamed from: d */
    public final long f22882d = SystemClock.elapsedRealtime();

    /* renamed from: l */
    public int f22890l = 0;

    /* renamed from: m */
    public int f22891m = 0;

    /* renamed from: com.google.android.exoplayer2.analytics.MediaMetricsListener$a */
    /* loaded from: classes5.dex */
    public static final class C4674a {

        /* renamed from: a */
        public final int f22905a;

        /* renamed from: b */
        public final int f22906b;

        public C4674a(int i, int i2) {
            this.f22905a = i;
            this.f22906b = i2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.analytics.MediaMetricsListener$b */
    /* loaded from: classes5.dex */
    public static final class C4675b {

        /* renamed from: a */
        public final Format f22907a;

        /* renamed from: b */
        public final int f22908b;

        /* renamed from: c */
        public final String f22909c;

        public C4675b(Format format, int i, String str) {
            this.f22907a = format;
            this.f22908b = i;
            this.f22909c = str;
        }
    }

    public MediaMetricsListener(Context context, PlaybackSession playbackSession) {
        this.f22879a = context.getApplicationContext();
        this.f22881c = playbackSession;
        DefaultPlaybackSessionManager defaultPlaybackSessionManager = new DefaultPlaybackSessionManager();
        this.f22880b = defaultPlaybackSessionManager;
        defaultPlaybackSessionManager.setListener(this);
    }

    @SuppressLint({"SwitchIntDef"})
    /* renamed from: c */
    public static int m18365c(int i) {
        switch (Util.getErrorCodeForMediaDrmErrorCode(i)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    @Nullable
    public static MediaMetricsListener create(Context context) {
        PlaybackSession createPlaybackSession;
        MediaMetricsManager m54560a = hjj.m54560a(context.getSystemService("media_metrics"));
        if (m54560a == null) {
            return null;
        }
        createPlaybackSession = m54560a.createPlaybackSession();
        return new MediaMetricsListener(context, createPlaybackSession);
    }

    @Nullable
    /* renamed from: d */
    public static DrmInitData m18366d(ImmutableList<TracksInfo.TrackGroupInfo> immutableList) {
        DrmInitData drmInitData;
        UnmodifiableIterator<TracksInfo.TrackGroupInfo> it2 = immutableList.iterator();
        while (it2.hasNext()) {
            TracksInfo.TrackGroupInfo next = it2.next();
            TrackGroup trackGroup = next.getTrackGroup();
            for (int i = 0; i < trackGroup.length; i++) {
                if (next.isTrackSelected(i) && (drmInitData = trackGroup.getFormat(i).drmInitData) != null) {
                    return drmInitData;
                }
            }
        }
        return null;
    }

    /* renamed from: e */
    public static int m18367e(DrmInitData drmInitData) {
        for (int i = 0; i < drmInitData.schemeDataCount; i++) {
            UUID uuid = drmInitData.get(i).uuid;
            if (uuid.equals(C4649C.WIDEVINE_UUID)) {
                return 3;
            }
            if (uuid.equals(C4649C.PLAYREADY_UUID)) {
                return 2;
            }
            if (uuid.equals(C4649C.CLEARKEY_UUID)) {
                return 6;
            }
        }
        return 1;
    }

    /* renamed from: f */
    public static C4674a m18368f(PlaybackException playbackException, Context context, boolean z) {
        int i;
        boolean z2;
        if (playbackException.errorCode == 1001) {
            return new C4674a(20, 0);
        }
        if (playbackException instanceof ExoPlaybackException) {
            ExoPlaybackException exoPlaybackException = (ExoPlaybackException) playbackException;
            z2 = exoPlaybackException.type == 1;
            i = exoPlaybackException.rendererFormatSupport;
        } else {
            i = 0;
            z2 = false;
        }
        Throwable th = (Throwable) Assertions.checkNotNull(playbackException.getCause());
        if (!(th instanceof IOException)) {
            if (z2 && (i == 0 || i == 1)) {
                return new C4674a(35, 0);
            }
            if (z2 && i == 3) {
                return new C4674a(15, 0);
            }
            if (z2 && i == 2) {
                return new C4674a(23, 0);
            }
            if (th instanceof MediaCodecRenderer.DecoderInitializationException) {
                return new C4674a(13, Util.getErrorCodeFromPlatformDiagnosticsInfo(((MediaCodecRenderer.DecoderInitializationException) th).diagnosticInfo));
            }
            if (th instanceof MediaCodecDecoderException) {
                return new C4674a(14, Util.getErrorCodeFromPlatformDiagnosticsInfo(((MediaCodecDecoderException) th).diagnosticInfo));
            }
            if (th instanceof OutOfMemoryError) {
                return new C4674a(14, 0);
            }
            if (th instanceof AudioSink.InitializationException) {
                return new C4674a(17, ((AudioSink.InitializationException) th).audioTrackState);
            }
            if (th instanceof AudioSink.WriteException) {
                return new C4674a(18, ((AudioSink.WriteException) th).errorCode);
            }
            if (Util.SDK_INT < 16 || !(th instanceof MediaCodec.CryptoException)) {
                return new C4674a(22, 0);
            }
            int errorCode = ((MediaCodec.CryptoException) th).getErrorCode();
            return new C4674a(m18365c(errorCode), errorCode);
        }
        if (th instanceof HttpDataSource.InvalidResponseCodeException) {
            return new C4674a(5, ((HttpDataSource.InvalidResponseCodeException) th).responseCode);
        }
        if ((th instanceof HttpDataSource.InvalidContentTypeException) || (th instanceof ParserException)) {
            return new C4674a(z ? 10 : 11, 0);
        }
        if ((th instanceof HttpDataSource.HttpDataSourceException) || (th instanceof UdpDataSource.UdpDataSourceException)) {
            if (NetworkTypeObserver.getInstance(context).getNetworkType() == 1) {
                return new C4674a(3, 0);
            }
            Throwable cause = th.getCause();
            return cause instanceof UnknownHostException ? new C4674a(6, 0) : cause instanceof SocketTimeoutException ? new C4674a(7, 0) : ((th instanceof HttpDataSource.HttpDataSourceException) && ((HttpDataSource.HttpDataSourceException) th).type == 1) ? new C4674a(4, 0) : new C4674a(8, 0);
        }
        if (playbackException.errorCode == 1002) {
            return new C4674a(21, 0);
        }
        if (!(th instanceof DrmSession.DrmSessionException)) {
            if (!(th instanceof FileDataSource.FileDataSourceException) || !(th.getCause() instanceof FileNotFoundException)) {
                return new C4674a(9, 0);
            }
            Throwable cause2 = ((Throwable) Assertions.checkNotNull(th.getCause())).getCause();
            return (Util.SDK_INT >= 21 && (cause2 instanceof ErrnoException) && ((ErrnoException) cause2).errno == OsConstants.EACCES) ? new C4674a(32, 0) : new C4674a(31, 0);
        }
        Throwable th2 = (Throwable) Assertions.checkNotNull(th.getCause());
        int i2 = Util.SDK_INT;
        if (i2 < 21 || !(th2 instanceof MediaDrm.MediaDrmStateException)) {
            return (i2 < 23 || !(th2 instanceof MediaDrmResetException)) ? (i2 < 18 || !(th2 instanceof NotProvisionedException)) ? (i2 < 18 || !(th2 instanceof DeniedByServerException)) ? th2 instanceof UnsupportedDrmException ? new C4674a(23, 0) : th2 instanceof DefaultDrmSessionManager.MissingSchemeDataException ? new C4674a(28, 0) : new C4674a(30, 0) : new C4674a(29, 0) : new C4674a(24, 0) : new C4674a(27, 0);
        }
        int errorCodeFromPlatformDiagnosticsInfo = Util.getErrorCodeFromPlatformDiagnosticsInfo(((MediaDrm.MediaDrmStateException) th2).getDiagnosticInfo());
        return new C4674a(m18365c(errorCodeFromPlatformDiagnosticsInfo), errorCodeFromPlatformDiagnosticsInfo);
    }

    /* renamed from: g */
    public static Pair<String, String> m18369g(String str) {
        String[] split = Util.split(str, "-");
        return Pair.create(split[0], split.length >= 2 ? split[1] : null);
    }

    /* renamed from: h */
    public static int m18370h(Context context) {
        switch (NetworkTypeObserver.getInstance(context).getNetworkType()) {
            case 0:
                return 0;
            case 1:
                return 9;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
            case 8:
            default:
                return 1;
            case 7:
                return 3;
            case 9:
                return 8;
            case 10:
                return 7;
        }
    }

    /* renamed from: i */
    public static int m18371i(MediaItem mediaItem) {
        MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
        if (localConfiguration == null) {
            return 0;
        }
        int inferContentTypeForUriAndMimeType = Util.inferContentTypeForUriAndMimeType(localConfiguration.uri, localConfiguration.mimeType);
        if (inferContentTypeForUriAndMimeType == 0) {
            return 3;
        }
        if (inferContentTypeForUriAndMimeType != 1) {
            return inferContentTypeForUriAndMimeType != 2 ? 1 : 4;
        }
        return 5;
    }

    /* renamed from: j */
    public static int m18372j(int i) {
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 1 : 4;
        }
        return 3;
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = true)
    /* renamed from: a */
    public final boolean m18373a(@Nullable C4675b c4675b) {
        return c4675b != null && c4675b.f22909c.equals(this.f22880b.getActiveSessionId());
    }

    /* renamed from: b */
    public final void m18374b() {
        PlaybackMetrics build;
        PlaybackMetrics.Builder builder = this.f22888j;
        if (builder != null && this.f22878A) {
            builder.setAudioUnderrunCount(this.f22904z);
            this.f22888j.setVideoFramesDropped(this.f22902x);
            this.f22888j.setVideoFramesPlayed(this.f22903y);
            Long l = this.f22885g.get(this.f22887i);
            this.f22888j.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l2 = this.f22886h.get(this.f22887i);
            this.f22888j.setNetworkBytesRead(l2 == null ? 0L : l2.longValue());
            this.f22888j.setStreamSource((l2 == null || l2.longValue() <= 0) ? 0 : 1);
            PlaybackSession playbackSession = this.f22881c;
            build = this.f22888j.build();
            playbackSession.reportPlaybackMetrics(build);
        }
        this.f22888j = null;
        this.f22887i = null;
        this.f22904z = 0;
        this.f22902x = 0;
        this.f22903y = 0;
        this.f22896r = null;
        this.f22897s = null;
        this.f22898t = null;
        this.f22878A = false;
    }

    public LogSessionId getLogSessionId() {
        LogSessionId sessionId;
        sessionId = this.f22881c.getSessionId();
        return sessionId;
    }

    /* renamed from: k */
    public final void m18375k(AnalyticsListener.Events events) {
        for (int i = 0; i < events.size(); i++) {
            int i2 = events.get(i);
            AnalyticsListener.EventTime eventTime = events.getEventTime(i2);
            if (i2 == 0) {
                this.f22880b.updateSessionsWithTimelineChange(eventTime);
            } else if (i2 == 11) {
                this.f22880b.updateSessionsWithDiscontinuity(eventTime, this.f22889k);
            } else {
                this.f22880b.updateSessions(eventTime);
            }
        }
    }

    /* renamed from: l */
    public final void m18376l(long j) {
        NetworkEvent.Builder networkType;
        NetworkEvent.Builder timeSinceCreatedMillis;
        NetworkEvent build;
        int m18370h = m18370h(this.f22879a);
        if (m18370h != this.f22891m) {
            this.f22891m = m18370h;
            PlaybackSession playbackSession = this.f22881c;
            networkType = mkj.m55647a().setNetworkType(m18370h);
            timeSinceCreatedMillis = networkType.setTimeSinceCreatedMillis(j - this.f22882d);
            build = timeSinceCreatedMillis.build();
            playbackSession.reportNetworkEvent(build);
        }
    }

    /* renamed from: m */
    public final void m18377m(long j) {
        PlaybackErrorEvent.Builder timeSinceCreatedMillis;
        PlaybackErrorEvent.Builder errorCode;
        PlaybackErrorEvent.Builder subErrorCode;
        PlaybackErrorEvent.Builder exception;
        PlaybackErrorEvent build;
        PlaybackException playbackException = this.f22892n;
        if (playbackException == null) {
            return;
        }
        C4674a m18368f = m18368f(playbackException, this.f22879a, this.f22900v == 4);
        PlaybackSession playbackSession = this.f22881c;
        timeSinceCreatedMillis = jkj.m54950a().setTimeSinceCreatedMillis(j - this.f22882d);
        errorCode = timeSinceCreatedMillis.setErrorCode(m18368f.f22905a);
        subErrorCode = errorCode.setSubErrorCode(m18368f.f22906b);
        exception = subErrorCode.setException(playbackException);
        build = exception.build();
        playbackSession.reportPlaybackErrorEvent(build);
        this.f22878A = true;
        this.f22892n = null;
    }

    /* renamed from: n */
    public final void m18378n(Player player, AnalyticsListener.Events events, long j) {
        PlaybackStateEvent.Builder state;
        PlaybackStateEvent.Builder timeSinceCreatedMillis;
        PlaybackStateEvent build;
        if (player.getPlaybackState() != 2) {
            this.f22899u = false;
        }
        if (player.getPlayerError() == null) {
            this.f22901w = false;
        } else if (events.contains(10)) {
            this.f22901w = true;
        }
        int m18386v = m18386v(player);
        if (this.f22890l != m18386v) {
            this.f22890l = m18386v;
            this.f22878A = true;
            PlaybackSession playbackSession = this.f22881c;
            state = kkj.m55227a().setState(this.f22890l);
            timeSinceCreatedMillis = state.setTimeSinceCreatedMillis(j - this.f22882d);
            build = timeSinceCreatedMillis.build();
            playbackSession.reportPlaybackStateEvent(build);
        }
    }

    /* renamed from: o */
    public final void m18379o(Player player, AnalyticsListener.Events events, long j) {
        if (events.contains(2)) {
            TracksInfo currentTracksInfo = player.getCurrentTracksInfo();
            boolean isTypeSelected = currentTracksInfo.isTypeSelected(2);
            boolean isTypeSelected2 = currentTracksInfo.isTypeSelected(1);
            boolean isTypeSelected3 = currentTracksInfo.isTypeSelected(3);
            if (isTypeSelected || isTypeSelected2 || isTypeSelected3) {
                if (!isTypeSelected) {
                    m18384t(j, null, 0);
                }
                if (!isTypeSelected2) {
                    m18380p(j, null, 0);
                }
                if (!isTypeSelected3) {
                    m18382r(j, null, 0);
                }
            }
        }
        if (m18373a(this.f22893o)) {
            C4675b c4675b = this.f22893o;
            Format format = c4675b.f22907a;
            if (format.height != -1) {
                m18384t(j, format, c4675b.f22908b);
                this.f22893o = null;
            }
        }
        if (m18373a(this.f22894p)) {
            C4675b c4675b2 = this.f22894p;
            m18380p(j, c4675b2.f22907a, c4675b2.f22908b);
            this.f22894p = null;
        }
        if (m18373a(this.f22895q)) {
            C4675b c4675b3 = this.f22895q;
            m18382r(j, c4675b3.f22907a, c4675b3.f22908b);
            this.f22895q = null;
        }
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager.Listener
    public void onAdPlaybackStarted(AnalyticsListener.EventTime eventTime, String str, String str2) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onBandwidthEstimate(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if (mediaPeriodId != null) {
            String sessionForMediaPeriodId = this.f22880b.getSessionForMediaPeriodId(eventTime.timeline, (MediaSource.MediaPeriodId) Assertions.checkNotNull(mediaPeriodId));
            Long l = this.f22886h.get(sessionForMediaPeriodId);
            Long l2 = this.f22885g.get(sessionForMediaPeriodId);
            this.f22886h.put(sessionForMediaPeriodId, Long.valueOf((l == null ? 0L : l.longValue()) + j));
            this.f22885g.put(sessionForMediaPeriodId, Long.valueOf((l2 != null ? l2.longValue() : 0L) + i));
        }
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDownstreamFormatChanged(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        if (eventTime.mediaPeriodId == null) {
            return;
        }
        C4675b c4675b = new C4675b((Format) Assertions.checkNotNull(mediaLoadData.trackFormat), mediaLoadData.trackSelectionReason, this.f22880b.getSessionForMediaPeriodId(eventTime.timeline, (MediaSource.MediaPeriodId) Assertions.checkNotNull(eventTime.mediaPeriodId)));
        int i = mediaLoadData.trackType;
        if (i != 0) {
            if (i == 1) {
                this.f22894p = c4675b;
                return;
            } else if (i != 2) {
                if (i != 3) {
                    return;
                }
                this.f22895q = c4675b;
                return;
            }
        }
        this.f22893o = c4675b;
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onEvents(Player player, AnalyticsListener.Events events) {
        if (events.size() == 0) {
            return;
        }
        m18375k(events);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        m18381q(player, events);
        m18377m(elapsedRealtime);
        m18379o(player, events, elapsedRealtime);
        m18376l(elapsedRealtime);
        m18378n(player, events, elapsedRealtime);
        if (events.contains(1028)) {
            this.f22880b.finishAllSessions(events.getEventTime(1028));
        }
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onLoadError(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        this.f22900v = mediaLoadData.dataType;
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPlayerError(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
        this.f22892n = playbackException;
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        if (i == 1) {
            this.f22899u = true;
        }
        this.f22889k = i;
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager.Listener
    public void onSessionActive(AnalyticsListener.EventTime eventTime, String str) {
        PlaybackMetrics.Builder playerName;
        PlaybackMetrics.Builder playerVersion;
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if (mediaPeriodId == null || !mediaPeriodId.isAd()) {
            m18374b();
            this.f22887i = str;
            playerName = nkj.m55764a().setPlayerName(ExoPlayerLibraryInfo.TAG);
            playerVersion = playerName.setPlayerVersion(ExoPlayerLibraryInfo.VERSION);
            this.f22888j = playerVersion;
            m18383s(eventTime.timeline, eventTime.mediaPeriodId);
        }
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager.Listener
    public void onSessionCreated(AnalyticsListener.EventTime eventTime, String str) {
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager.Listener
    public void onSessionFinished(AnalyticsListener.EventTime eventTime, String str, boolean z) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if ((mediaPeriodId == null || !mediaPeriodId.isAd()) && str.equals(this.f22887i)) {
            m18374b();
        }
        this.f22885g.remove(str);
        this.f22886h.remove(str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoDisabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        this.f22902x += decoderCounters.droppedBufferCount;
        this.f22903y += decoderCounters.renderedOutputBufferCount;
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        C4675b c4675b = this.f22893o;
        if (c4675b != null) {
            Format format = c4675b.f22907a;
            if (format.height == -1) {
                this.f22893o = new C4675b(format.buildUpon().setWidth(videoSize.width).setHeight(videoSize.height).build(), c4675b.f22908b, c4675b.f22909c);
            }
        }
    }

    /* renamed from: p */
    public final void m18380p(long j, @Nullable Format format, int i) {
        if (Util.areEqual(this.f22897s, format)) {
            return;
        }
        if (this.f22897s == null && i == 0) {
            i = 1;
        }
        this.f22897s = format;
        m18385u(0, j, format, i);
    }

    /* renamed from: q */
    public final void m18381q(Player player, AnalyticsListener.Events events) {
        DrmInitData m18366d;
        if (events.contains(0)) {
            AnalyticsListener.EventTime eventTime = events.getEventTime(0);
            if (this.f22888j != null) {
                m18383s(eventTime.timeline, eventTime.mediaPeriodId);
            }
        }
        if (events.contains(2) && this.f22888j != null && (m18366d = m18366d(player.getCurrentTracksInfo().getTrackGroupInfos())) != null) {
            qjj.m56720a(Util.castNonNull(this.f22888j)).setDrmType(m18367e(m18366d));
        }
        if (events.contains(1011)) {
            this.f22904z++;
        }
    }

    /* renamed from: r */
    public final void m18382r(long j, @Nullable Format format, int i) {
        if (Util.areEqual(this.f22898t, format)) {
            return;
        }
        if (this.f22898t == null && i == 0) {
            i = 1;
        }
        this.f22898t = format;
        m18385u(2, j, format, i);
    }

    @RequiresNonNull({"metricsBuilder"})
    /* renamed from: s */
    public final void m18383s(Timeline timeline, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        int indexOfPeriod;
        PlaybackMetrics.Builder builder = this.f22888j;
        if (mediaPeriodId == null || (indexOfPeriod = timeline.getIndexOfPeriod(mediaPeriodId.periodUid)) == -1) {
            return;
        }
        timeline.getPeriod(indexOfPeriod, this.f22884f);
        timeline.getWindow(this.f22884f.windowIndex, this.f22883e);
        builder.setStreamType(m18371i(this.f22883e.mediaItem));
        Timeline.Window window = this.f22883e;
        if (window.durationUs != C4649C.TIME_UNSET && !window.isPlaceholder && !window.isDynamic && !window.isLive()) {
            builder.setMediaDurationMillis(this.f22883e.getDurationMs());
        }
        builder.setPlaybackType(this.f22883e.isLive() ? 2 : 1);
        this.f22878A = true;
    }

    /* renamed from: t */
    public final void m18384t(long j, @Nullable Format format, int i) {
        if (Util.areEqual(this.f22896r, format)) {
            return;
        }
        if (this.f22896r == null && i == 0) {
            i = 1;
        }
        this.f22896r = format;
        m18385u(1, j, format, i);
    }

    /* renamed from: u */
    public final void m18385u(int i, long j, @Nullable Format format, int i2) {
        TrackChangeEvent.Builder timeSinceCreatedMillis;
        TrackChangeEvent build;
        timeSinceCreatedMillis = okj.m55989a(i).setTimeSinceCreatedMillis(j - this.f22882d);
        if (format != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(m18372j(i2));
            String str = format.containerMimeType;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = format.sampleMimeType;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = format.codecs;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i3 = format.bitrate;
            if (i3 != -1) {
                timeSinceCreatedMillis.setBitrate(i3);
            }
            int i4 = format.width;
            if (i4 != -1) {
                timeSinceCreatedMillis.setWidth(i4);
            }
            int i5 = format.height;
            if (i5 != -1) {
                timeSinceCreatedMillis.setHeight(i5);
            }
            int i6 = format.channelCount;
            if (i6 != -1) {
                timeSinceCreatedMillis.setChannelCount(i6);
            }
            int i7 = format.sampleRate;
            if (i7 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i7);
            }
            String str4 = format.language;
            if (str4 != null) {
                Pair<String, String> m18369g = m18369g(str4);
                timeSinceCreatedMillis.setLanguage((String) m18369g.first);
                Object obj = m18369g.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = format.frameRate;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.f22878A = true;
        PlaybackSession playbackSession = this.f22881c;
        build = timeSinceCreatedMillis.build();
        playbackSession.reportTrackChangeEvent(build);
    }

    /* renamed from: v */
    public final int m18386v(Player player) {
        int playbackState = player.getPlaybackState();
        if (this.f22899u) {
            return 5;
        }
        if (this.f22901w) {
            return 13;
        }
        if (playbackState == 4) {
            return 11;
        }
        if (playbackState == 2) {
            int i = this.f22890l;
            if (i == 0 || i == 2) {
                return 2;
            }
            if (player.getPlayWhenReady()) {
                return player.getPlaybackSuppressionReason() != 0 ? 10 : 6;
            }
            return 7;
        }
        if (playbackState == 3) {
            if (player.getPlayWhenReady()) {
                return player.getPlaybackSuppressionReason() != 0 ? 9 : 3;
            }
            return 4;
        }
        if (playbackState != 1 || this.f22890l == 0) {
            return this.f22890l;
        }
        return 12;
    }
}
