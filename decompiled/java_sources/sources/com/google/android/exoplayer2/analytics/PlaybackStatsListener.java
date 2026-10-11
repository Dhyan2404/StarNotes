package com.google.android.exoplayer2.analytics;

import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.TracksInfo;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.PlaybackSessionManager;
import com.google.android.exoplayer2.analytics.PlaybackStats;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoSize;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class PlaybackStatsListener implements AnalyticsListener, PlaybackSessionManager.Listener {

    /* renamed from: a */
    public final PlaybackSessionManager f22912a;

    /* renamed from: b */
    public final Map<String, C4676a> f22913b;

    /* renamed from: c */
    public final Map<String, AnalyticsListener.EventTime> f22914c;

    /* renamed from: d */
    @Nullable
    public final Callback f22915d;

    /* renamed from: e */
    public final boolean f22916e;

    /* renamed from: f */
    public final Timeline.Period f22917f;

    /* renamed from: g */
    public PlaybackStats f22918g;

    /* renamed from: h */
    @Nullable
    public String f22919h;

    /* renamed from: i */
    public long f22920i;

    /* renamed from: j */
    public int f22921j;

    /* renamed from: k */
    public int f22922k;

    /* renamed from: l */
    @Nullable
    public Exception f22923l;

    /* renamed from: m */
    public long f22924m;

    /* renamed from: n */
    public long f22925n;

    /* renamed from: o */
    @Nullable
    public Format f22926o;

    /* renamed from: p */
    @Nullable
    public Format f22927p;

    /* renamed from: q */
    public VideoSize f22928q;

    /* loaded from: classes5.dex */
    public interface Callback {
        void onPlaybackStatsReady(AnalyticsListener.EventTime eventTime, PlaybackStats playbackStats);
    }

    /* renamed from: com.google.android.exoplayer2.analytics.PlaybackStatsListener$a */
    /* loaded from: classes5.dex */
    public static final class C4676a {

        /* renamed from: A */
        public long f22929A;

        /* renamed from: B */
        public long f22930B;

        /* renamed from: C */
        public long f22931C;

        /* renamed from: D */
        public long f22932D;

        /* renamed from: E */
        public long f22933E;

        /* renamed from: F */
        public int f22934F;

        /* renamed from: G */
        public int f22935G;

        /* renamed from: H */
        public int f22936H;

        /* renamed from: I */
        public long f22937I;

        /* renamed from: J */
        public boolean f22938J;

        /* renamed from: K */
        public boolean f22939K;

        /* renamed from: L */
        public boolean f22940L;

        /* renamed from: M */
        public boolean f22941M;

        /* renamed from: N */
        public boolean f22942N;

        /* renamed from: O */
        public long f22943O;

        /* renamed from: P */
        @Nullable
        public Format f22944P;

        /* renamed from: Q */
        @Nullable
        public Format f22945Q;

        /* renamed from: R */
        public long f22946R;

        /* renamed from: S */
        public long f22947S;

        /* renamed from: T */
        public float f22948T;

        /* renamed from: a */
        public final boolean f22949a;

        /* renamed from: b */
        public final long[] f22950b = new long[16];

        /* renamed from: c */
        public final List<PlaybackStats.EventTimeAndPlaybackState> f22951c;

        /* renamed from: d */
        public final List<long[]> f22952d;

        /* renamed from: e */
        public final List<PlaybackStats.EventTimeAndFormat> f22953e;

        /* renamed from: f */
        public final List<PlaybackStats.EventTimeAndFormat> f22954f;

        /* renamed from: g */
        public final List<PlaybackStats.EventTimeAndException> f22955g;

        /* renamed from: h */
        public final List<PlaybackStats.EventTimeAndException> f22956h;

        /* renamed from: i */
        public final boolean f22957i;

        /* renamed from: j */
        public long f22958j;

        /* renamed from: k */
        public boolean f22959k;

        /* renamed from: l */
        public boolean f22960l;

        /* renamed from: m */
        public boolean f22961m;

        /* renamed from: n */
        public int f22962n;

        /* renamed from: o */
        public int f22963o;

        /* renamed from: p */
        public int f22964p;

        /* renamed from: q */
        public int f22965q;

        /* renamed from: r */
        public long f22966r;

        /* renamed from: s */
        public int f22967s;

        /* renamed from: t */
        public long f22968t;

        /* renamed from: u */
        public long f22969u;

        /* renamed from: v */
        public long f22970v;

        /* renamed from: w */
        public long f22971w;

        /* renamed from: x */
        public long f22972x;

        /* renamed from: y */
        public long f22973y;

        /* renamed from: z */
        public long f22974z;

        public C4676a(boolean z, AnalyticsListener.EventTime eventTime) {
            this.f22949a = z;
            this.f22951c = z ? new ArrayList<>() : Collections.emptyList();
            this.f22952d = z ? new ArrayList<>() : Collections.emptyList();
            this.f22953e = z ? new ArrayList<>() : Collections.emptyList();
            this.f22954f = z ? new ArrayList<>() : Collections.emptyList();
            this.f22955g = z ? new ArrayList<>() : Collections.emptyList();
            this.f22956h = z ? new ArrayList<>() : Collections.emptyList();
            boolean z2 = false;
            this.f22936H = 0;
            this.f22937I = eventTime.realtimeMs;
            this.f22958j = C4649C.TIME_UNSET;
            this.f22966r = C4649C.TIME_UNSET;
            MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
            if (mediaPeriodId != null && mediaPeriodId.isAd()) {
                z2 = true;
            }
            this.f22957i = z2;
            this.f22969u = -1L;
            this.f22968t = -1L;
            this.f22967s = -1;
            this.f22948T = 1.0f;
        }

        /* renamed from: c */
        public static boolean m18390c(int i, int i2) {
            return ((i != 1 && i != 2 && i != 14) || i2 == 1 || i2 == 2 || i2 == 14 || i2 == 3 || i2 == 4 || i2 == 9 || i2 == 11) ? false : true;
        }

        /* renamed from: d */
        public static boolean m18391d(int i) {
            return i == 4 || i == 7;
        }

        /* renamed from: e */
        public static boolean m18392e(int i) {
            return i == 3 || i == 4 || i == 9;
        }

        /* renamed from: f */
        public static boolean m18393f(int i) {
            return i == 6 || i == 7 || i == 10;
        }

        /* renamed from: a */
        public PlaybackStats m18394a(boolean z) {
            long[] jArr;
            List<long[]> list;
            long[] jArr2 = this.f22950b;
            List<long[]> list2 = this.f22952d;
            if (z) {
                jArr = jArr2;
                list = list2;
            } else {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long[] copyOf = Arrays.copyOf(this.f22950b, 16);
                long max = Math.max(0L, elapsedRealtime - this.f22937I);
                int i = this.f22936H;
                copyOf[i] = copyOf[i] + max;
                m18399j(elapsedRealtime);
                m18397h(elapsedRealtime);
                m18396g(elapsedRealtime);
                ArrayList arrayList = new ArrayList(this.f22952d);
                if (this.f22949a && this.f22936H == 3) {
                    arrayList.add(m18395b(elapsedRealtime));
                }
                jArr = copyOf;
                list = arrayList;
            }
            int i2 = (this.f22961m || !this.f22959k) ? 1 : 0;
            long j = i2 != 0 ? C4649C.TIME_UNSET : jArr[2];
            int i3 = jArr[1] > 0 ? 1 : 0;
            List arrayList2 = z ? this.f22953e : new ArrayList(this.f22953e);
            List arrayList3 = z ? this.f22954f : new ArrayList(this.f22954f);
            List arrayList4 = z ? this.f22951c : new ArrayList(this.f22951c);
            long j2 = this.f22958j;
            boolean z2 = this.f22939K;
            int i4 = !this.f22959k ? 1 : 0;
            boolean z3 = this.f22960l;
            int i5 = i2 ^ 1;
            int i6 = this.f22962n;
            int i7 = this.f22963o;
            int i8 = this.f22964p;
            int i9 = this.f22965q;
            long j3 = this.f22966r;
            boolean z4 = this.f22957i;
            long[] jArr3 = jArr;
            long j4 = this.f22970v;
            long j5 = this.f22971w;
            long j6 = this.f22972x;
            long j7 = this.f22973y;
            long j8 = this.f22974z;
            long j9 = this.f22929A;
            int i10 = this.f22967s;
            int i11 = i10 == -1 ? 0 : 1;
            long j10 = this.f22968t;
            int i12 = j10 == -1 ? 0 : 1;
            long j11 = this.f22969u;
            int i13 = j11 == -1 ? 0 : 1;
            long j12 = this.f22930B;
            long j13 = this.f22931C;
            long j14 = this.f22932D;
            long j15 = this.f22933E;
            int i14 = this.f22934F;
            return new PlaybackStats(1, jArr3, arrayList4, list, j2, z2 ? 1 : 0, i4, z3 ? 1 : 0, i3, j, i5, i6, i7, i8, i9, j3, z4 ? 1 : 0, arrayList2, arrayList3, j4, j5, j6, j7, j8, j9, i11, i12, i10, j10, i13, j11, j12, j13, j14, j15, i14 > 0 ? 1 : 0, i14, this.f22935G, this.f22955g, this.f22956h);
        }

        /* renamed from: b */
        public final long[] m18395b(long j) {
            List<long[]> list = this.f22952d;
            return new long[]{j, list.get(list.size() - 1)[1] + (((float) (j - r0[0])) * this.f22948T)};
        }

        /* renamed from: g */
        public final void m18396g(long j) {
            Format format;
            int i;
            if (this.f22936H == 3 && (format = this.f22945Q) != null && (i = format.bitrate) != -1) {
                long j2 = ((float) (j - this.f22947S)) * this.f22948T;
                this.f22974z += j2;
                this.f22929A += j2 * i;
            }
            this.f22947S = j;
        }

        /* renamed from: h */
        public final void m18397h(long j) {
            Format format;
            if (this.f22936H == 3 && (format = this.f22944P) != null) {
                long j2 = ((float) (j - this.f22946R)) * this.f22948T;
                int i = format.height;
                if (i != -1) {
                    this.f22970v += j2;
                    this.f22971w += i * j2;
                }
                int i2 = format.bitrate;
                if (i2 != -1) {
                    this.f22972x += j2;
                    this.f22973y += j2 * i2;
                }
            }
            this.f22946R = j;
        }

        /* renamed from: i */
        public final void m18398i(AnalyticsListener.EventTime eventTime, @Nullable Format format) {
            int i;
            if (Util.areEqual(this.f22945Q, format)) {
                return;
            }
            m18396g(eventTime.realtimeMs);
            if (format != null && this.f22969u == -1 && (i = format.bitrate) != -1) {
                this.f22969u = i;
            }
            this.f22945Q = format;
            if (this.f22949a) {
                this.f22954f.add(new PlaybackStats.EventTimeAndFormat(eventTime, format));
            }
        }

        /* renamed from: j */
        public final void m18399j(long j) {
            if (m18393f(this.f22936H)) {
                long j2 = j - this.f22943O;
                long j3 = this.f22966r;
                if (j3 == C4649C.TIME_UNSET || j2 > j3) {
                    this.f22966r = j2;
                }
            }
        }

        /* renamed from: k */
        public final void m18400k(long j, long j2) {
            if (this.f22949a) {
                if (this.f22936H != 3) {
                    if (j2 == C4649C.TIME_UNSET) {
                        return;
                    }
                    if (!this.f22952d.isEmpty()) {
                        List<long[]> list = this.f22952d;
                        long j3 = list.get(list.size() - 1)[1];
                        if (j3 != j2) {
                            this.f22952d.add(new long[]{j, j3});
                        }
                    }
                }
                if (j2 != C4649C.TIME_UNSET) {
                    this.f22952d.add(new long[]{j, j2});
                } else {
                    if (this.f22952d.isEmpty()) {
                        return;
                    }
                    this.f22952d.add(m18395b(j));
                }
            }
        }

        /* renamed from: l */
        public final void m18401l(AnalyticsListener.EventTime eventTime, @Nullable Format format) {
            int i;
            int i2;
            if (Util.areEqual(this.f22944P, format)) {
                return;
            }
            m18397h(eventTime.realtimeMs);
            if (format != null) {
                if (this.f22967s == -1 && (i2 = format.height) != -1) {
                    this.f22967s = i2;
                }
                if (this.f22968t == -1 && (i = format.bitrate) != -1) {
                    this.f22968t = i;
                }
            }
            this.f22944P = format;
            if (this.f22949a) {
                this.f22953e.add(new PlaybackStats.EventTimeAndFormat(eventTime, format));
            }
        }

        /* renamed from: m */
        public void m18402m(Player player, AnalyticsListener.EventTime eventTime, boolean z, long j, boolean z2, int i, boolean z3, boolean z4, @Nullable PlaybackException playbackException, @Nullable Exception exc, long j2, long j3, @Nullable Format format, @Nullable Format format2, @Nullable VideoSize videoSize) {
            long j4 = C4649C.TIME_UNSET;
            if (j != C4649C.TIME_UNSET) {
                m18400k(eventTime.realtimeMs, j);
                this.f22938J = true;
            }
            if (player.getPlaybackState() != 2) {
                this.f22938J = false;
            }
            int playbackState = player.getPlaybackState();
            if (playbackState == 1 || playbackState == 4 || z2) {
                this.f22940L = false;
            }
            if (playbackException != null) {
                this.f22941M = true;
                this.f22934F++;
                if (this.f22949a) {
                    this.f22955g.add(new PlaybackStats.EventTimeAndException(eventTime, playbackException));
                }
            } else if (player.getPlayerError() == null) {
                this.f22941M = false;
            }
            if (this.f22939K && !this.f22940L) {
                TracksInfo currentTracksInfo = player.getCurrentTracksInfo();
                if (!currentTracksInfo.isTypeSelected(2)) {
                    m18401l(eventTime, null);
                }
                if (!currentTracksInfo.isTypeSelected(1)) {
                    m18398i(eventTime, null);
                }
            }
            if (format != null) {
                m18401l(eventTime, format);
            }
            if (format2 != null) {
                m18398i(eventTime, format2);
            }
            Format format3 = this.f22944P;
            if (format3 != null && format3.height == -1 && videoSize != null) {
                m18401l(eventTime, format3.buildUpon().setWidth(videoSize.width).setHeight(videoSize.height).build());
            }
            if (z4) {
                this.f22942N = true;
            }
            if (z3) {
                this.f22933E++;
            }
            this.f22932D += i;
            this.f22930B += j2;
            this.f22931C += j3;
            if (exc != null) {
                this.f22935G++;
                if (this.f22949a) {
                    this.f22956h.add(new PlaybackStats.EventTimeAndException(eventTime, exc));
                }
            }
            int m18406q = m18406q(player);
            float f = player.getPlaybackParameters().speed;
            if (this.f22936H != m18406q || this.f22948T != f) {
                long j5 = eventTime.realtimeMs;
                if (z) {
                    j4 = eventTime.eventPlaybackPositionMs;
                }
                m18400k(j5, j4);
                m18397h(eventTime.realtimeMs);
                m18396g(eventTime.realtimeMs);
            }
            this.f22948T = f;
            if (this.f22936H != m18406q) {
                m18407r(m18406q, eventTime);
            }
        }

        /* renamed from: n */
        public void m18403n(AnalyticsListener.EventTime eventTime, boolean z, long j) {
            int i = 11;
            if (this.f22936H != 11 && !z) {
                i = 15;
            }
            m18400k(eventTime.realtimeMs, j);
            m18397h(eventTime.realtimeMs);
            m18396g(eventTime.realtimeMs);
            m18407r(i, eventTime);
        }

        /* renamed from: o */
        public void m18404o() {
            this.f22939K = true;
        }

        /* renamed from: p */
        public void m18405p() {
            this.f22940L = true;
            this.f22938J = false;
        }

        /* renamed from: q */
        public final int m18406q(Player player) {
            int playbackState = player.getPlaybackState();
            if (this.f22938J && this.f22939K) {
                return 5;
            }
            if (this.f22941M) {
                return 13;
            }
            if (!this.f22939K) {
                return this.f22942N ? 1 : 0;
            }
            if (this.f22940L) {
                return 14;
            }
            if (playbackState == 4) {
                return 11;
            }
            if (playbackState != 2) {
                if (playbackState == 3) {
                    if (player.getPlayWhenReady()) {
                        return player.getPlaybackSuppressionReason() != 0 ? 9 : 3;
                    }
                    return 4;
                }
                if (playbackState != 1 || this.f22936H == 0) {
                    return this.f22936H;
                }
                return 12;
            }
            int i = this.f22936H;
            if (i == 0 || i == 1 || i == 2 || i == 14) {
                return 2;
            }
            if (player.getPlayWhenReady()) {
                return player.getPlaybackSuppressionReason() != 0 ? 10 : 6;
            }
            return 7;
        }

        /* renamed from: r */
        public final void m18407r(int i, AnalyticsListener.EventTime eventTime) {
            Assertions.checkArgument(eventTime.realtimeMs >= this.f22937I);
            long j = eventTime.realtimeMs;
            long j2 = j - this.f22937I;
            long[] jArr = this.f22950b;
            int i2 = this.f22936H;
            jArr[i2] = jArr[i2] + j2;
            if (this.f22958j == C4649C.TIME_UNSET) {
                this.f22958j = j;
            }
            this.f22961m |= m18390c(i2, i);
            this.f22959k |= m18392e(i);
            this.f22960l |= i == 11;
            if (!m18391d(this.f22936H) && m18391d(i)) {
                this.f22962n++;
            }
            if (i == 5) {
                this.f22964p++;
            }
            if (!m18393f(this.f22936H) && m18393f(i)) {
                this.f22965q++;
                this.f22943O = eventTime.realtimeMs;
            }
            if (m18393f(this.f22936H) && this.f22936H != 7 && i == 7) {
                this.f22963o++;
            }
            m18399j(eventTime.realtimeMs);
            this.f22936H = i;
            this.f22937I = eventTime.realtimeMs;
            if (this.f22949a) {
                this.f22951c.add(new PlaybackStats.EventTimeAndPlaybackState(eventTime, i));
            }
        }
    }

    public PlaybackStatsListener(boolean z, @Nullable Callback callback) {
        this.f22915d = callback;
        this.f22916e = z;
        DefaultPlaybackSessionManager defaultPlaybackSessionManager = new DefaultPlaybackSessionManager();
        this.f22912a = defaultPlaybackSessionManager;
        this.f22913b = new HashMap();
        this.f22914c = new HashMap();
        this.f22918g = PlaybackStats.EMPTY;
        this.f22917f = new Timeline.Period();
        this.f22928q = VideoSize.UNKNOWN;
        defaultPlaybackSessionManager.setListener(this);
    }

    /* renamed from: a */
    public final Pair<AnalyticsListener.EventTime, Boolean> m18387a(AnalyticsListener.Events events, String str) {
        MediaSource.MediaPeriodId mediaPeriodId;
        AnalyticsListener.EventTime eventTime = null;
        boolean z = false;
        for (int i = 0; i < events.size(); i++) {
            AnalyticsListener.EventTime eventTime2 = events.getEventTime(events.get(i));
            boolean belongsToSession = this.f22912a.belongsToSession(eventTime2, str);
            if (eventTime == null || ((belongsToSession && !z) || (belongsToSession == z && eventTime2.realtimeMs > eventTime.realtimeMs))) {
                eventTime = eventTime2;
                z = belongsToSession;
            }
        }
        Assertions.checkNotNull(eventTime);
        if (!z && (mediaPeriodId = eventTime.mediaPeriodId) != null && mediaPeriodId.isAd()) {
            long adGroupTimeUs = eventTime.timeline.getPeriodByUid(eventTime.mediaPeriodId.periodUid, this.f22917f).getAdGroupTimeUs(eventTime.mediaPeriodId.adGroupIndex);
            if (adGroupTimeUs == Long.MIN_VALUE) {
                adGroupTimeUs = this.f22917f.durationUs;
            }
            long positionInWindowUs = adGroupTimeUs + this.f22917f.getPositionInWindowUs();
            long j = eventTime.realtimeMs;
            Timeline timeline = eventTime.timeline;
            int i2 = eventTime.windowIndex;
            MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.mediaPeriodId;
            AnalyticsListener.EventTime eventTime3 = new AnalyticsListener.EventTime(j, timeline, i2, new MediaSource.MediaPeriodId(mediaPeriodId2.periodUid, mediaPeriodId2.windowSequenceNumber, mediaPeriodId2.adGroupIndex), Util.usToMs(positionInWindowUs), eventTime.timeline, eventTime.currentWindowIndex, eventTime.currentMediaPeriodId, eventTime.currentPlaybackPositionMs, eventTime.totalBufferedDurationMs);
            z = this.f22912a.belongsToSession(eventTime3, str);
            eventTime = eventTime3;
        }
        return Pair.create(eventTime, Boolean.valueOf(z));
    }

    /* renamed from: b */
    public final boolean m18388b(AnalyticsListener.Events events, String str, int i) {
        return events.contains(i) && this.f22912a.belongsToSession(events.getEventTime(i), str);
    }

    /* renamed from: c */
    public final void m18389c(AnalyticsListener.Events events) {
        for (int i = 0; i < events.size(); i++) {
            int i2 = events.get(i);
            AnalyticsListener.EventTime eventTime = events.getEventTime(i2);
            if (i2 == 0) {
                this.f22912a.updateSessionsWithTimelineChange(eventTime);
            } else if (i2 == 11) {
                this.f22912a.updateSessionsWithDiscontinuity(eventTime, this.f22921j);
            } else {
                this.f22912a.updateSessions(eventTime);
            }
        }
    }

    public PlaybackStats getCombinedPlaybackStats() {
        int i = 1;
        PlaybackStats[] playbackStatsArr = new PlaybackStats[this.f22913b.size() + 1];
        playbackStatsArr[0] = this.f22918g;
        Iterator<C4676a> it2 = this.f22913b.values().iterator();
        while (it2.hasNext()) {
            playbackStatsArr[i] = it2.next().m18394a(false);
            i++;
        }
        return PlaybackStats.merge(playbackStatsArr);
    }

    @Nullable
    public PlaybackStats getPlaybackStats() {
        String activeSessionId = this.f22912a.getActiveSessionId();
        C4676a c4676a = activeSessionId == null ? null : this.f22913b.get(activeSessionId);
        if (c4676a == null) {
            return null;
        }
        return c4676a.m18394a(false);
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager.Listener
    public void onAdPlaybackStarted(AnalyticsListener.EventTime eventTime, String str, String str2) {
        ((C4676a) Assertions.checkNotNull(this.f22913b.get(str))).m18405p();
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onBandwidthEstimate(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
        this.f22924m = i;
        this.f22925n = j;
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDownstreamFormatChanged(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        int i = mediaLoadData.trackType;
        if (i == 2 || i == 0) {
            this.f22926o = mediaLoadData.trackFormat;
        } else if (i == 1) {
            this.f22927p = mediaLoadData.trackFormat;
        }
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmSessionManagerError(AnalyticsListener.EventTime eventTime, Exception exc) {
        this.f22923l = exc;
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDroppedVideoFrames(AnalyticsListener.EventTime eventTime, int i, long j) {
        this.f22922k = i;
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onEvents(Player player, AnalyticsListener.Events events) {
        if (events.size() == 0) {
            return;
        }
        m18389c(events);
        for (String str : this.f22913b.keySet()) {
            Pair<AnalyticsListener.EventTime, Boolean> m18387a = m18387a(events, str);
            C4676a c4676a = this.f22913b.get(str);
            boolean m18388b = m18388b(events, str, 11);
            boolean m18388b2 = m18388b(events, str, 1018);
            boolean m18388b3 = m18388b(events, str, 1011);
            boolean m18388b4 = m18388b(events, str, 1000);
            boolean m18388b5 = m18388b(events, str, 10);
            boolean z = m18388b(events, str, 1003) || m18388b(events, str, 1024);
            boolean m18388b6 = m18388b(events, str, 1006);
            boolean m18388b7 = m18388b(events, str, 1004);
            c4676a.m18402m(player, (AnalyticsListener.EventTime) m18387a.first, ((Boolean) m18387a.second).booleanValue(), str.equals(this.f22919h) ? this.f22920i : C4649C.TIME_UNSET, m18388b, m18388b2 ? this.f22922k : 0, m18388b3, m18388b4, m18388b5 ? player.getPlayerError() : null, z ? this.f22923l : null, m18388b6 ? this.f22924m : 0L, m18388b6 ? this.f22925n : 0L, m18388b7 ? this.f22926o : null, m18388b7 ? this.f22927p : null, m18388b(events, str, 25) ? this.f22928q : null);
        }
        this.f22926o = null;
        this.f22927p = null;
        this.f22919h = null;
        if (events.contains(1028)) {
            this.f22912a.finishAllSessions(events.getEventTime(1028));
        }
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onLoadError(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        this.f22923l = iOException;
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        if (this.f22919h == null) {
            this.f22919h = this.f22912a.getActiveSessionId();
            this.f22920i = positionInfo.positionMs;
        }
        this.f22921j = i;
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager.Listener
    public void onSessionActive(AnalyticsListener.EventTime eventTime, String str) {
        ((C4676a) Assertions.checkNotNull(this.f22913b.get(str))).m18404o();
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager.Listener
    public void onSessionCreated(AnalyticsListener.EventTime eventTime, String str) {
        this.f22913b.put(str, new C4676a(this.f22916e, eventTime));
        this.f22914c.put(str, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager.Listener
    public void onSessionFinished(AnalyticsListener.EventTime eventTime, String str, boolean z) {
        C4676a c4676a = (C4676a) Assertions.checkNotNull(this.f22913b.remove(str));
        AnalyticsListener.EventTime eventTime2 = (AnalyticsListener.EventTime) Assertions.checkNotNull(this.f22914c.remove(str));
        c4676a.m18403n(eventTime, z, str.equals(this.f22919h) ? this.f22920i : C4649C.TIME_UNSET);
        PlaybackStats m18394a = c4676a.m18394a(true);
        this.f22918g = PlaybackStats.merge(this.f22918g, m18394a);
        Callback callback = this.f22915d;
        if (callback != null) {
            callback.onPlaybackStatsReady(eventTime2, m18394a);
        }
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        this.f22928q = videoSize;
    }
}
