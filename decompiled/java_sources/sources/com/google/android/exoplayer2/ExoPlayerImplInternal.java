package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.DefaultMediaClock;
import com.google.android.exoplayer2.ExoPlayerImplInternal;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaSourceList;
import com.google.android.exoplayer2.PlayerMessage;
import com.google.android.exoplayer2.Renderer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsCollector;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataRenderer;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.TextRenderer;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.HandlerWrapper;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Sets;
import com.sunia.HTREnginev2.jlj;
import com.sunia.HTREnginev2.klj;
import com.sunia.HTREnginev2.o4l;
import com.sunia.HTREnginev2.v4l;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public final class ExoPlayerImplInternal implements Handler.Callback, MediaPeriod.Callback, TrackSelector.InvalidationListener, MediaSourceList.MediaSourceListInfoRefreshListener, DefaultMediaClock.PlaybackParametersListener, PlayerMessage.Sender {

    /* renamed from: I0 */
    public static final String f22317I0 = "ExoPlayerImplInternal";

    /* renamed from: J0 */
    public static final int f22318J0 = 0;

    /* renamed from: K0 */
    public static final int f22319K0 = 1;

    /* renamed from: L0 */
    public static final int f22320L0 = 2;

    /* renamed from: M0 */
    public static final int f22321M0 = 3;

    /* renamed from: N0 */
    public static final int f22322N0 = 4;

    /* renamed from: O0 */
    public static final int f22323O0 = 5;

    /* renamed from: P0 */
    public static final int f22324P0 = 6;

    /* renamed from: Q0 */
    public static final int f22325Q0 = 7;

    /* renamed from: R0 */
    public static final int f22326R0 = 8;

    /* renamed from: S0 */
    public static final int f22327S0 = 9;

    /* renamed from: T0 */
    public static final int f22328T0 = 10;

    /* renamed from: U0 */
    public static final int f22329U0 = 11;

    /* renamed from: V0 */
    public static final int f22330V0 = 12;

    /* renamed from: W0 */
    public static final int f22331W0 = 13;

    /* renamed from: X0 */
    public static final int f22332X0 = 14;

    /* renamed from: Y0 */
    public static final int f22333Y0 = 15;

    /* renamed from: Z0 */
    public static final int f22334Z0 = 16;

    /* renamed from: a1 */
    public static final int f22335a1 = 17;

    /* renamed from: b1 */
    public static final int f22336b1 = 18;

    /* renamed from: c1 */
    public static final int f22337c1 = 19;

    /* renamed from: d1 */
    public static final int f22338d1 = 20;

    /* renamed from: e1 */
    public static final int f22339e1 = 21;

    /* renamed from: f1 */
    public static final int f22340f1 = 22;

    /* renamed from: g1 */
    public static final int f22341g1 = 23;

    /* renamed from: h1 */
    public static final int f22342h1 = 24;

    /* renamed from: i1 */
    public static final int f22343i1 = 25;

    /* renamed from: j1 */
    public static final int f22344j1 = 10;

    /* renamed from: k1 */
    public static final int f22345k1 = 1000;

    /* renamed from: l1 */
    public static final long f22346l1 = 2000;

    /* renamed from: m1 */
    public static final long f22347m1 = 4000;

    /* renamed from: A0 */
    public int f22348A0;

    /* renamed from: B0 */
    @Nullable
    public C4656f f22349B0;

    /* renamed from: C0 */
    public long f22350C0;

    /* renamed from: D0 */
    public int f22351D0;

    /* renamed from: E0 */
    public boolean f22352E0;

    /* renamed from: F0 */
    @Nullable
    public ExoPlaybackException f22353F0;

    /* renamed from: G0 */
    public long f22354G0;

    /* renamed from: H0 */
    public long f22355H0 = C4649C.TIME_UNSET;

    /* renamed from: J */
    public SeekParameters f22356J;

    /* renamed from: O */
    public o4l f22357O;

    /* renamed from: Q */
    public PlaybackInfoUpdate f22358Q;

    /* renamed from: Z */
    public boolean f22359Z;

    /* renamed from: e */
    public final Renderer[] f22360e;

    /* renamed from: f */
    public final Set<Renderer> f22361f;

    /* renamed from: g */
    public final RendererCapabilities[] f22362g;

    /* renamed from: h */
    public final TrackSelector f22363h;

    /* renamed from: i */
    public final TrackSelectorResult f22364i;

    /* renamed from: j */
    public final LoadControl f22365j;

    /* renamed from: k */
    public final BandwidthMeter f22366k;

    /* renamed from: k0 */
    public boolean f22367k0;

    /* renamed from: l */
    public final HandlerWrapper f22368l;

    /* renamed from: m */
    public final HandlerThread f22369m;

    /* renamed from: n */
    public final Looper f22370n;

    /* renamed from: o */
    public final Timeline.Window f22371o;

    /* renamed from: p */
    public final Timeline.Period f22372p;

    /* renamed from: q */
    public final long f22373q;

    /* renamed from: q0 */
    public boolean f22374q0;

    /* renamed from: r */
    public final boolean f22375r;

    /* renamed from: s */
    public final DefaultMediaClock f22376s;

    /* renamed from: t */
    public final ArrayList<C4654d> f22377t;

    /* renamed from: t0 */
    public boolean f22378t0;

    /* renamed from: u */
    public final Clock f22379u;

    /* renamed from: u0 */
    public boolean f22380u0;

    /* renamed from: v */
    public final PlaybackInfoUpdateListener f22381v;

    /* renamed from: v0 */
    public int f22382v0;

    /* renamed from: w */
    public final C4704b f22383w;

    /* renamed from: w0 */
    public boolean f22384w0;

    /* renamed from: x */
    public final MediaSourceList f22385x;

    /* renamed from: x0 */
    public boolean f22386x0;

    /* renamed from: y */
    public final LivePlaybackSpeedControl f22387y;

    /* renamed from: y0 */
    public boolean f22388y0;

    /* renamed from: z */
    public final long f22389z;

    /* renamed from: z0 */
    public boolean f22390z0;

    /* loaded from: classes5.dex */
    public static final class PlaybackInfoUpdate {

        /* renamed from: a */
        public boolean f22391a;
        public int discontinuityReason;
        public boolean hasPlayWhenReadyChangeReason;
        public int operationAcks;
        public int playWhenReadyChangeReason;
        public o4l playbackInfo;
        public boolean positionDiscontinuity;

        public PlaybackInfoUpdate(o4l o4lVar) {
            this.playbackInfo = o4lVar;
        }

        public void incrementPendingOperationAcks(int i) {
            this.f22391a |= i > 0;
            this.operationAcks += i;
        }

        public void setPlayWhenReadyChangeReason(int i) {
            this.f22391a = true;
            this.hasPlayWhenReadyChangeReason = true;
            this.playWhenReadyChangeReason = i;
        }

        public void setPlaybackInfo(o4l o4lVar) {
            this.f22391a |= this.playbackInfo != o4lVar;
            this.playbackInfo = o4lVar;
        }

        public void setPositionDiscontinuity(int i) {
            if (this.positionDiscontinuity && this.discontinuityReason != 5) {
                Assertions.checkArgument(i == 5);
                return;
            }
            this.f22391a = true;
            this.positionDiscontinuity = true;
            this.discontinuityReason = i;
        }
    }

    /* loaded from: classes5.dex */
    public interface PlaybackInfoUpdateListener {
        void onPlaybackInfoUpdate(PlaybackInfoUpdate playbackInfoUpdate);
    }

    /* renamed from: com.google.android.exoplayer2.ExoPlayerImplInternal$a */
    /* loaded from: classes5.dex */
    public class C4651a implements Renderer.WakeupListener {
        public C4651a() {
        }

        @Override // com.google.android.exoplayer2.Renderer.WakeupListener
        public void onSleep(long j) {
            if (j >= 2000) {
                ExoPlayerImplInternal.this.f22388y0 = true;
            }
        }

        @Override // com.google.android.exoplayer2.Renderer.WakeupListener
        public void onWakeup() {
            ExoPlayerImplInternal.this.f22368l.sendEmptyMessage(2);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ExoPlayerImplInternal$b */
    /* loaded from: classes5.dex */
    public static final class C4652b {

        /* renamed from: a */
        public final List<MediaSourceList.C4663c> f22393a;

        /* renamed from: b */
        public final ShuffleOrder f22394b;

        /* renamed from: c */
        public final int f22395c;

        /* renamed from: d */
        public final long f22396d;

        public /* synthetic */ C4652b(List list, ShuffleOrder shuffleOrder, int i, long j, C4651a c4651a) {
            this(list, shuffleOrder, i, j);
        }

        public C4652b(List<MediaSourceList.C4663c> list, ShuffleOrder shuffleOrder, int i, long j) {
            this.f22393a = list;
            this.f22394b = shuffleOrder;
            this.f22395c = i;
            this.f22396d = j;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ExoPlayerImplInternal$c */
    /* loaded from: classes5.dex */
    public static class C4653c {

        /* renamed from: a */
        public final int f22397a;

        /* renamed from: b */
        public final int f22398b;

        /* renamed from: c */
        public final int f22399c;

        /* renamed from: d */
        public final ShuffleOrder f22400d;

        public C4653c(int i, int i2, int i3, ShuffleOrder shuffleOrder) {
            this.f22397a = i;
            this.f22398b = i2;
            this.f22399c = i3;
            this.f22400d = shuffleOrder;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ExoPlayerImplInternal$d */
    /* loaded from: classes5.dex */
    public static final class C4654d implements Comparable<C4654d> {

        /* renamed from: e */
        public final PlayerMessage f22401e;

        /* renamed from: f */
        public int f22402f;

        /* renamed from: g */
        public long f22403g;

        /* renamed from: h */
        @Nullable
        public Object f22404h;

        public C4654d(PlayerMessage playerMessage) {
            this.f22401e = playerMessage;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C4654d c4654d) {
            Object obj = this.f22404h;
            if ((obj == null) != (c4654d.f22404h == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i = this.f22402f - c4654d.f22402f;
            return i != 0 ? i : Util.compareLong(this.f22403g, c4654d.f22403g);
        }

        /* renamed from: b */
        public void m17824b(int i, long j, Object obj) {
            this.f22402f = i;
            this.f22403g = j;
            this.f22404h = obj;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ExoPlayerImplInternal$e */
    /* loaded from: classes5.dex */
    public static final class C4655e {

        /* renamed from: a */
        public final MediaSource.MediaPeriodId f22405a;

        /* renamed from: b */
        public final long f22406b;

        /* renamed from: c */
        public final long f22407c;

        /* renamed from: d */
        public final boolean f22408d;

        /* renamed from: e */
        public final boolean f22409e;

        /* renamed from: f */
        public final boolean f22410f;

        public C4655e(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, boolean z, boolean z2, boolean z3) {
            this.f22405a = mediaPeriodId;
            this.f22406b = j;
            this.f22407c = j2;
            this.f22408d = z;
            this.f22409e = z2;
            this.f22410f = z3;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ExoPlayerImplInternal$f */
    /* loaded from: classes5.dex */
    public static final class C4656f {

        /* renamed from: a */
        public final Timeline f22411a;

        /* renamed from: b */
        public final int f22412b;

        /* renamed from: c */
        public final long f22413c;

        public C4656f(Timeline timeline, int i, long j) {
            this.f22411a = timeline;
            this.f22412b = i;
            this.f22413c = j;
        }
    }

    public ExoPlayerImplInternal(Renderer[] rendererArr, TrackSelector trackSelector, TrackSelectorResult trackSelectorResult, LoadControl loadControl, BandwidthMeter bandwidthMeter, int i, boolean z, AnalyticsCollector analyticsCollector, SeekParameters seekParameters, LivePlaybackSpeedControl livePlaybackSpeedControl, long j, boolean z2, Looper looper, Clock clock, PlaybackInfoUpdateListener playbackInfoUpdateListener, PlayerId playerId) {
        this.f22381v = playbackInfoUpdateListener;
        this.f22360e = rendererArr;
        this.f22363h = trackSelector;
        this.f22364i = trackSelectorResult;
        this.f22365j = loadControl;
        this.f22366k = bandwidthMeter;
        this.f22382v0 = i;
        this.f22384w0 = z;
        this.f22356J = seekParameters;
        this.f22387y = livePlaybackSpeedControl;
        this.f22389z = j;
        this.f22354G0 = j;
        this.f22367k0 = z2;
        this.f22379u = clock;
        this.f22373q = loadControl.getBackBufferDurationUs();
        this.f22375r = loadControl.retainBackBufferFromKeyframe();
        o4l m55888k = o4l.m55888k(trackSelectorResult);
        this.f22357O = m55888k;
        this.f22358Q = new PlaybackInfoUpdate(m55888k);
        this.f22362g = new RendererCapabilities[rendererArr.length];
        for (int i2 = 0; i2 < rendererArr.length; i2++) {
            rendererArr[i2].init(i2, playerId);
            this.f22362g[i2] = rendererArr[i2].getCapabilities();
        }
        this.f22376s = new DefaultMediaClock(this, clock);
        this.f22377t = new ArrayList<>();
        this.f22361f = Sets.newIdentityHashSet();
        this.f22371o = new Timeline.Window();
        this.f22372p = new Timeline.Period();
        trackSelector.init(this, bandwidthMeter);
        this.f22352E0 = true;
        Handler handler = new Handler(looper);
        this.f22383w = new C4704b(analyticsCollector, handler);
        this.f22385x = new MediaSourceList(this, analyticsCollector, handler, playerId);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.f22369m = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.f22370n = looper2;
        this.f22368l = clock.createHandler(looper2, this);
    }

    /* renamed from: J */
    public static boolean m17697J(boolean z, MediaSource.MediaPeriodId mediaPeriodId, long j, MediaSource.MediaPeriodId mediaPeriodId2, Timeline.Period period, long j2) {
        if (!z && j == j2 && mediaPeriodId.periodUid.equals(mediaPeriodId2.periodUid)) {
            return (mediaPeriodId.isAd() && period.isServerSideInsertedAdGroup(mediaPeriodId.adGroupIndex)) ? (period.getAdState(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup) == 4 || period.getAdState(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup) == 2) ? false : true : mediaPeriodId2.isAd() && period.isServerSideInsertedAdGroup(mediaPeriodId2.adGroupIndex);
        }
        return false;
    }

    /* renamed from: L */
    public static boolean m17698L(Renderer renderer) {
        return renderer.getState() != 0;
    }

    /* renamed from: N */
    public static boolean m17699N(o4l o4lVar, Timeline.Period period) {
        MediaSource.MediaPeriodId mediaPeriodId = o4lVar.f79307b;
        Timeline timeline = o4lVar.f79306a;
        return timeline.isEmpty() || timeline.getPeriodByUid(mediaPeriodId.periodUid, period).isPlaceholder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O */
    public /* synthetic */ Boolean m17700O() {
        return Boolean.valueOf(this.f22359Z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P */
    public /* synthetic */ void m17701P(PlayerMessage playerMessage) {
        try {
            m17776h(playerMessage);
        } catch (ExoPlaybackException e) {
            Log.m21490e(f22317I0, "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    /* renamed from: q0 */
    public static void m17706q0(Timeline timeline, C4654d c4654d, Timeline.Window window, Timeline.Period period) {
        int i = timeline.getWindow(timeline.getPeriodByUid(c4654d.f22404h, period).windowIndex, window).lastPeriodIndex;
        Object obj = timeline.getPeriod(i, period, true).uid;
        long j = period.durationUs;
        c4654d.m17824b(i, j != C4649C.TIME_UNSET ? j - 1 : Long.MAX_VALUE, obj);
    }

    /* renamed from: r0 */
    public static boolean m17707r0(C4654d c4654d, Timeline timeline, Timeline timeline2, int i, boolean z, Timeline.Window window, Timeline.Period period) {
        Object obj = c4654d.f22404h;
        if (obj == null) {
            Pair<Object, Long> m17710u0 = m17710u0(timeline, new C4656f(c4654d.f22401e.getTimeline(), c4654d.f22401e.getMediaItemIndex(), c4654d.f22401e.getPositionMs() == Long.MIN_VALUE ? C4649C.TIME_UNSET : Util.msToUs(c4654d.f22401e.getPositionMs())), false, i, z, window, period);
            if (m17710u0 == null) {
                return false;
            }
            c4654d.m17824b(timeline.getIndexOfPeriod(m17710u0.first), ((Long) m17710u0.second).longValue(), m17710u0.first);
            if (c4654d.f22401e.getPositionMs() == Long.MIN_VALUE) {
                m17706q0(timeline, c4654d, window, period);
            }
            return true;
        }
        int indexOfPeriod = timeline.getIndexOfPeriod(obj);
        if (indexOfPeriod == -1) {
            return false;
        }
        if (c4654d.f22401e.getPositionMs() == Long.MIN_VALUE) {
            m17706q0(timeline, c4654d, window, period);
            return true;
        }
        c4654d.f22402f = indexOfPeriod;
        timeline2.getPeriodByUid(c4654d.f22404h, period);
        if (period.isPlaceholder && timeline2.getWindow(period.windowIndex, window).firstPeriodIndex == timeline2.getIndexOfPeriod(c4654d.f22404h)) {
            Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(window, period, timeline.getPeriodByUid(c4654d.f22404h, period).windowIndex, c4654d.f22403g + period.getPositionInWindowUs());
            c4654d.m17824b(timeline.getIndexOfPeriod(periodPositionUs.first), ((Long) periodPositionUs.second).longValue(), periodPositionUs.first);
        }
        return true;
    }

    /* renamed from: s */
    public static Format[] m17708s(ExoTrackSelection exoTrackSelection) {
        int length = exoTrackSelection != null ? exoTrackSelection.length() : 0;
        Format[] formatArr = new Format[length];
        for (int i = 0; i < length; i++) {
            formatArr[i] = exoTrackSelection.getFormat(i);
        }
        return formatArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0175  */
    /* renamed from: t0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.ExoPlayerImplInternal.C4655e m17709t0(com.google.android.exoplayer2.Timeline r30, com.sunia.HTREnginev2.o4l r31, @androidx.annotation.Nullable com.google.android.exoplayer2.ExoPlayerImplInternal.C4656f r32, com.google.android.exoplayer2.C4704b r33, int r34, boolean r35, com.google.android.exoplayer2.Timeline.Window r36, com.google.android.exoplayer2.Timeline.Period r37) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ExoPlayerImplInternal.m17709t0(com.google.android.exoplayer2.Timeline, com.sunia.HTREnginev2.o4l, com.google.android.exoplayer2.ExoPlayerImplInternal$f, com.google.android.exoplayer2.b, int, boolean, com.google.android.exoplayer2.Timeline$Window, com.google.android.exoplayer2.Timeline$Period):com.google.android.exoplayer2.ExoPlayerImplInternal$e");
    }

    @Nullable
    /* renamed from: u0 */
    public static Pair<Object, Long> m17710u0(Timeline timeline, C4656f c4656f, boolean z, int i, boolean z2, Timeline.Window window, Timeline.Period period) {
        Pair<Object, Long> periodPositionUs;
        Object m17711v0;
        Timeline timeline2 = c4656f.f22411a;
        if (timeline.isEmpty()) {
            return null;
        }
        Timeline timeline3 = timeline2.isEmpty() ? timeline : timeline2;
        try {
            periodPositionUs = timeline3.getPeriodPositionUs(window, period, c4656f.f22412b, c4656f.f22413c);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (timeline.equals(timeline3)) {
            return periodPositionUs;
        }
        if (timeline.getIndexOfPeriod(periodPositionUs.first) != -1) {
            return (timeline3.getPeriodByUid(periodPositionUs.first, period).isPlaceholder && timeline3.getWindow(period.windowIndex, window).firstPeriodIndex == timeline3.getIndexOfPeriod(periodPositionUs.first)) ? timeline.getPeriodPositionUs(window, period, timeline.getPeriodByUid(periodPositionUs.first, period).windowIndex, c4656f.f22413c) : periodPositionUs;
        }
        if (z && (m17711v0 = m17711v0(window, period, i, z2, periodPositionUs.first, timeline3, timeline)) != null) {
            return timeline.getPeriodPositionUs(window, period, timeline.getPeriodByUid(m17711v0, period).windowIndex, C4649C.TIME_UNSET);
        }
        return null;
    }

    @Nullable
    /* renamed from: v0 */
    public static Object m17711v0(Timeline.Window window, Timeline.Period period, int i, boolean z, Object obj, Timeline timeline, Timeline timeline2) {
        int indexOfPeriod = timeline.getIndexOfPeriod(obj);
        int periodCount = timeline.getPeriodCount();
        int i2 = indexOfPeriod;
        int i3 = -1;
        for (int i4 = 0; i4 < periodCount && i3 == -1; i4++) {
            i2 = timeline.getNextPeriodIndex(i2, period, window, i, z);
            if (i2 == -1) {
                break;
            }
            i3 = timeline2.getIndexOfPeriod(timeline.getUidOfPeriod(i2));
        }
        if (i3 == -1) {
            return null;
        }
        return timeline2.getUidOfPeriod(i3);
    }

    /* renamed from: A */
    public final void m17712A(IOException iOException, int i) {
        ExoPlaybackException createForSource = ExoPlaybackException.createForSource(iOException, i);
        jlj m18622p = this.f22383w.m18622p();
        if (m18622p != null) {
            createForSource = createForSource.copyWithMediaPeriodId(m18622p.f74435f.f75530a);
        }
        Log.m21490e(f22317I0, "Playback error", createForSource);
        m17781i1(false, false);
        this.f22357O = this.f22357O.m55895f(createForSource);
    }

    /* renamed from: A0 */
    public final long m17713A0(MediaSource.MediaPeriodId mediaPeriodId, long j, boolean z) throws ExoPlaybackException {
        return m17715B0(mediaPeriodId, j, this.f22383w.m18622p() != this.f22383w.m18623q(), z);
    }

    /* renamed from: B */
    public final void m17714B(boolean z) {
        jlj m18616j = this.f22383w.m18616j();
        MediaSource.MediaPeriodId mediaPeriodId = m18616j == null ? this.f22357O.f79307b : m18616j.f74435f.f75530a;
        boolean z2 = !this.f22357O.f79316k.equals(mediaPeriodId);
        if (z2) {
            this.f22357O = this.f22357O.m55891b(mediaPeriodId);
        }
        o4l o4lVar = this.f22357O;
        o4lVar.f79322q = m18616j == null ? o4lVar.f79324s : m18616j.m54962i();
        this.f22357O.f79323r = m17812x();
        if ((z2 || z) && m18616j != null && m18616j.f74433d) {
            m17790l1(m18616j.m54967n(), m18616j.m54968o());
        }
    }

    /* renamed from: B0 */
    public final long m17715B0(MediaSource.MediaPeriodId mediaPeriodId, long j, boolean z, boolean z2) throws ExoPlaybackException {
        m17784j1();
        this.f22378t0 = false;
        if (z2 || this.f22357O.f79310e == 3) {
            m17760a1(2);
        }
        jlj m18622p = this.f22383w.m18622p();
        jlj jljVar = m18622p;
        while (jljVar != null && !mediaPeriodId.equals(jljVar.f74435f.f75530a)) {
            jljVar = jljVar.m54963j();
        }
        if (z || m18622p != jljVar || (jljVar != null && jljVar.m54978z(j) < 0)) {
            for (Renderer renderer : this.f22360e) {
                m17779i(renderer);
            }
            if (jljVar != null) {
                while (this.f22383w.m18622p() != jljVar) {
                    this.f22383w.m18608b();
                }
                this.f22383w.m18631z(jljVar);
                jljVar.m54976x(1000000000000L);
                m17788l();
            }
        }
        if (jljVar != null) {
            this.f22383w.m18631z(jljVar);
            if (!jljVar.f74433d) {
                jljVar.f74435f = jljVar.f74435f.m55230b(j);
            } else if (jljVar.f74434e) {
                long seekToUs = jljVar.f74430a.seekToUs(j);
                jljVar.f74430a.discardBuffer(seekToUs - this.f22373q, this.f22375r);
                j = seekToUs;
            }
            m17801p0(j);
            m17739Q();
        } else {
            this.f22383w.m18612f();
            m17801p0(j);
        }
        m17714B(false);
        this.f22368l.sendEmptyMessage(2);
        return j;
    }

    /* renamed from: C */
    public final void m17716C(Timeline timeline, boolean z) throws ExoPlaybackException {
        int i;
        int i2;
        boolean z2;
        C4655e m17709t0 = m17709t0(timeline, this.f22357O, this.f22349B0, this.f22383w, this.f22382v0, this.f22384w0, this.f22371o, this.f22372p);
        MediaSource.MediaPeriodId mediaPeriodId = m17709t0.f22405a;
        long j = m17709t0.f22407c;
        boolean z3 = m17709t0.f22408d;
        long j2 = m17709t0.f22406b;
        boolean z4 = (this.f22357O.f79307b.equals(mediaPeriodId) && j2 == this.f22357O.f79324s) ? false : true;
        C4656f c4656f = null;
        long j3 = C4649C.TIME_UNSET;
        try {
            if (m17709t0.f22409e) {
                if (this.f22357O.f79310e != 1) {
                    m17760a1(4);
                }
                m17795n0(false, false, false, true);
            }
            try {
                if (z4) {
                    i2 = 4;
                    z2 = false;
                    if (!timeline.isEmpty()) {
                        for (jlj m18622p = this.f22383w.m18622p(); m18622p != null; m18622p = m18622p.m54963j()) {
                            if (m18622p.f74435f.f75530a.equals(mediaPeriodId)) {
                                m18622p.f74435f = this.f22383w.m18624r(timeline, m18622p.f74435f);
                                m18622p.m54954A();
                            }
                        }
                        j2 = m17713A0(mediaPeriodId, j2, z3);
                    }
                } else {
                    try {
                    } catch (Throwable th) {
                        th = th;
                        i = 4;
                    }
                    try {
                        i2 = 4;
                        z2 = false;
                        if (!this.f22383w.m18605G(timeline, this.f22350C0, m17808u())) {
                            m17815y0(false);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        i = 4;
                        c4656f = null;
                        o4l o4lVar = this.f22357O;
                        Timeline timeline2 = o4lVar.f79306a;
                        MediaSource.MediaPeriodId mediaPeriodId2 = o4lVar.f79307b;
                        if (m17709t0.f22410f) {
                            j3 = j2;
                        }
                        C4656f c4656f2 = c4656f;
                        m17799o1(timeline, mediaPeriodId, timeline2, mediaPeriodId2, j3);
                        if (z4 || j != this.f22357O.f79308c) {
                            o4l o4lVar2 = this.f22357O;
                            Object obj = o4lVar2.f79307b.periodUid;
                            Timeline timeline3 = o4lVar2.f79306a;
                            this.f22357O = m17724G(mediaPeriodId, j2, j, this.f22357O.f79309d, z4 && z && !timeline3.isEmpty() && !timeline3.getPeriodByUid(obj, this.f22372p).isPlaceholder, timeline.getIndexOfPeriod(obj) == -1 ? i : 3);
                        }
                        m17798o0();
                        m17806s0(timeline, this.f22357O.f79306a);
                        this.f22357O = this.f22357O.m55899j(timeline);
                        if (!timeline.isEmpty()) {
                            this.f22349B0 = c4656f2;
                        }
                        m17714B(false);
                        throw th;
                    }
                }
                o4l o4lVar3 = this.f22357O;
                m17799o1(timeline, mediaPeriodId, o4lVar3.f79306a, o4lVar3.f79307b, m17709t0.f22410f ? j2 : -9223372036854775807L);
                if (z4 || j != this.f22357O.f79308c) {
                    o4l o4lVar4 = this.f22357O;
                    Object obj2 = o4lVar4.f79307b.periodUid;
                    Timeline timeline4 = o4lVar4.f79306a;
                    this.f22357O = m17724G(mediaPeriodId, j2, j, this.f22357O.f79309d, (!z4 || !z || timeline4.isEmpty() || timeline4.getPeriodByUid(obj2, this.f22372p).isPlaceholder) ? z2 : true, timeline.getIndexOfPeriod(obj2) == -1 ? i2 : 3);
                }
                m17798o0();
                m17806s0(timeline, this.f22357O.f79306a);
                this.f22357O = this.f22357O.m55899j(timeline);
                if (!timeline.isEmpty()) {
                    this.f22349B0 = null;
                }
                m17714B(z2);
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            i = 4;
        }
    }

    /* renamed from: C0 */
    public final void m17717C0(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.getPositionMs() == C4649C.TIME_UNSET) {
            m17719D0(playerMessage);
            return;
        }
        if (this.f22357O.f79306a.isEmpty()) {
            this.f22377t.add(new C4654d(playerMessage));
            return;
        }
        C4654d c4654d = new C4654d(playerMessage);
        Timeline timeline = this.f22357O.f79306a;
        if (!m17707r0(c4654d, timeline, timeline, this.f22382v0, this.f22384w0, this.f22371o, this.f22372p)) {
            playerMessage.markAsProcessed(false);
        } else {
            this.f22377t.add(c4654d);
            Collections.sort(this.f22377t);
        }
    }

    /* renamed from: D */
    public final void m17718D(MediaPeriod mediaPeriod) throws ExoPlaybackException {
        if (this.f22383w.m18628v(mediaPeriod)) {
            jlj m18616j = this.f22383w.m18616j();
            m18616j.m54969p(this.f22376s.getPlaybackParameters().speed, this.f22357O.f79306a);
            m17790l1(m18616j.m54967n(), m18616j.m54968o());
            if (m18616j == this.f22383w.m18622p()) {
                m17801p0(m18616j.f74435f.f75531b);
                m17788l();
                o4l o4lVar = this.f22357O;
                MediaSource.MediaPeriodId mediaPeriodId = o4lVar.f79307b;
                long j = m18616j.f74435f.f75531b;
                this.f22357O = m17724G(mediaPeriodId, j, o4lVar.f79308c, j, false, 5);
            }
            m17739Q();
        }
    }

    /* renamed from: D0 */
    public final void m17719D0(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.getLooper() != this.f22370n) {
            this.f22368l.obtainMessage(15, playerMessage).sendToTarget();
            return;
        }
        m17776h(playerMessage);
        int i = this.f22357O.f79310e;
        if (i == 3 || i == 2) {
            this.f22368l.sendEmptyMessage(2);
        }
    }

    /* renamed from: E */
    public final void m17720E(PlaybackParameters playbackParameters, float f, boolean z, boolean z2) throws ExoPlaybackException {
        if (z) {
            if (z2) {
                this.f22358Q.incrementPendingOperationAcks(1);
            }
            this.f22357O = this.f22357O.m55896g(playbackParameters);
        }
        m17802p1(playbackParameters.speed);
        for (Renderer renderer : this.f22360e) {
            if (renderer != null) {
                renderer.setPlaybackSpeed(f, playbackParameters.speed);
            }
        }
    }

    /* renamed from: E0 */
    public final void m17721E0(final PlayerMessage playerMessage) {
        Looper looper = playerMessage.getLooper();
        if (looper.getThread().isAlive()) {
            this.f22379u.createHandler(looper, null).post(new Runnable() { // from class: com.sunia.HTREnginev2.m1g
                @Override // java.lang.Runnable
                public final void run() {
                    ExoPlayerImplInternal.this.m17701P(playerMessage);
                }
            });
        } else {
            Log.m21493w("TAG", "Trying to send message on a dead thread.");
            playerMessage.markAsProcessed(false);
        }
    }

    /* renamed from: F */
    public final void m17722F(PlaybackParameters playbackParameters, boolean z) throws ExoPlaybackException {
        m17720E(playbackParameters, playbackParameters.speed, true, z);
    }

    /* renamed from: F0 */
    public final void m17723F0(long j) {
        for (Renderer renderer : this.f22360e) {
            if (renderer.getStream() != null) {
                m17725G0(renderer, j);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckResult
    /* renamed from: G */
    public final o4l m17724G(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, long j3, boolean z, int i) {
        List list;
        TrackGroupArray trackGroupArray;
        TrackSelectorResult trackSelectorResult;
        this.f22352E0 = (!this.f22352E0 && j == this.f22357O.f79324s && mediaPeriodId.equals(this.f22357O.f79307b)) ? false : true;
        m17798o0();
        o4l o4lVar = this.f22357O;
        TrackGroupArray trackGroupArray2 = o4lVar.f79313h;
        TrackSelectorResult trackSelectorResult2 = o4lVar.f79314i;
        List list2 = o4lVar.f79315j;
        if (this.f22385x.m17965t()) {
            jlj m18622p = this.f22383w.m18622p();
            TrackGroupArray m54967n = m18622p == null ? TrackGroupArray.EMPTY : m18622p.m54967n();
            TrackSelectorResult m54968o = m18622p == null ? this.f22364i : m18622p.m54968o();
            List m17803q = m17803q(m54968o.selections);
            if (m18622p != null) {
                klj kljVar = m18622p.f74435f;
                if (kljVar.f75532c != j2) {
                    m18622p.f74435f = kljVar.m55229a(j2);
                }
            }
            trackGroupArray = m54967n;
            trackSelectorResult = m54968o;
            list = m17803q;
        } else if (mediaPeriodId.equals(this.f22357O.f79307b)) {
            list = list2;
            trackGroupArray = trackGroupArray2;
            trackSelectorResult = trackSelectorResult2;
        } else {
            trackGroupArray = TrackGroupArray.EMPTY;
            trackSelectorResult = this.f22364i;
            list = ImmutableList.m26161of();
        }
        if (z) {
            this.f22358Q.setPositionDiscontinuity(i);
        }
        return this.f22357O.m55892c(mediaPeriodId, j, j2, j3, m17812x(), trackGroupArray, trackSelectorResult, list);
    }

    /* renamed from: G0 */
    public final void m17725G0(Renderer renderer, long j) {
        renderer.setCurrentStreamFinal();
        if (renderer instanceof TextRenderer) {
            ((TextRenderer) renderer).setFinalStreamEndPositionUs(j);
        }
    }

    /* renamed from: H */
    public final boolean m17726H(Renderer renderer, jlj jljVar) {
        jlj m54963j = jljVar.m54963j();
        return jljVar.f74435f.f75535f && m54963j.f74433d && ((renderer instanceof TextRenderer) || (renderer instanceof MetadataRenderer) || renderer.getReadingPositionUs() >= m54963j.m54966m());
    }

    /* renamed from: H0 */
    public synchronized boolean m17727H0(boolean z) {
        if (!this.f22359Z && this.f22369m.isAlive()) {
            if (z) {
                this.f22368l.obtainMessage(13, 1, 0).sendToTarget();
                return true;
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.f22368l.obtainMessage(13, 0, 0, atomicBoolean).sendToTarget();
            m17804q1(new Supplier() { // from class: com.sunia.HTREnginev2.n1g
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    return Boolean.valueOf(atomicBoolean.get());
                }
            }, this.f22354G0);
            return atomicBoolean.get();
        }
        return true;
    }

    /* renamed from: I */
    public final boolean m17728I() {
        jlj m18623q = this.f22383w.m18623q();
        if (!m18623q.f74433d) {
            return false;
        }
        int i = 0;
        while (true) {
            Renderer[] rendererArr = this.f22360e;
            if (i >= rendererArr.length) {
                return true;
            }
            Renderer renderer = rendererArr[i];
            SampleStream sampleStream = m18623q.f74432c[i];
            if (renderer.getStream() != sampleStream || (sampleStream != null && !renderer.hasReadStreamToEnd() && !m17726H(renderer, m18623q))) {
                break;
            }
            i++;
        }
        return false;
    }

    /* renamed from: I0 */
    public final void m17729I0(boolean z, @Nullable AtomicBoolean atomicBoolean) {
        if (this.f22386x0 != z) {
            this.f22386x0 = z;
            if (!z) {
                for (Renderer renderer : this.f22360e) {
                    if (!m17698L(renderer) && this.f22361f.remove(renderer)) {
                        renderer.reset();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    /* renamed from: J0 */
    public final void m17730J0(C4652b c4652b) throws ExoPlaybackException {
        this.f22358Q.incrementPendingOperationAcks(1);
        if (c4652b.f22395c != -1) {
            this.f22349B0 = new C4656f(new v4l(c4652b.f22393a, c4652b.f22394b), c4652b.f22395c, c4652b.f22396d);
        }
        m17716C(this.f22385x.m17954E(c4652b.f22393a, c4652b.f22394b), false);
    }

    /* renamed from: K */
    public final boolean m17731K() {
        jlj m18616j = this.f22383w.m18616j();
        return (m18616j == null || m18616j.m54964k() == Long.MIN_VALUE) ? false : true;
    }

    /* renamed from: K0 */
    public void m17732K0(List<MediaSourceList.C4663c> list, int i, long j, ShuffleOrder shuffleOrder) {
        this.f22368l.obtainMessage(17, new C4652b(list, shuffleOrder, i, j, null)).sendToTarget();
    }

    /* renamed from: L0 */
    public final void m17733L0(boolean z) {
        if (z == this.f22390z0) {
            return;
        }
        this.f22390z0 = z;
        o4l o4lVar = this.f22357O;
        int i = o4lVar.f79310e;
        if (z || i == 4 || i == 1) {
            this.f22357O = o4lVar.m55893d(z);
        } else {
            this.f22368l.sendEmptyMessage(2);
        }
    }

    /* renamed from: M */
    public final boolean m17734M() {
        jlj m18622p = this.f22383w.m18622p();
        long j = m18622p.f74435f.f75534e;
        return m18622p.f74433d && (j == C4649C.TIME_UNSET || this.f22357O.f79324s < j || !m17766d1());
    }

    /* renamed from: M0 */
    public void m17735M0(boolean z) {
        this.f22368l.obtainMessage(23, z ? 1 : 0, 0).sendToTarget();
    }

    /* renamed from: N0 */
    public final void m17736N0(boolean z) throws ExoPlaybackException {
        this.f22367k0 = z;
        m17798o0();
        if (!this.f22374q0 || this.f22383w.m18623q() == this.f22383w.m18622p()) {
            return;
        }
        m17815y0(true);
        m17714B(false);
    }

    /* renamed from: O0 */
    public void m17737O0(boolean z, int i) {
        this.f22368l.obtainMessage(1, z ? 1 : 0, i).sendToTarget();
    }

    /* renamed from: P0 */
    public final void m17738P0(boolean z, int i, boolean z2, int i2) throws ExoPlaybackException {
        this.f22358Q.incrementPendingOperationAcks(z2 ? 1 : 0);
        this.f22358Q.setPlayWhenReadyChangeReason(i2);
        this.f22357O = this.f22357O.m55894e(z, i);
        this.f22378t0 = false;
        m17763c0(z);
        if (!m17766d1()) {
            m17784j1();
            m17796n1();
            return;
        }
        int i3 = this.f22357O.f79310e;
        if (i3 == 3) {
            m17775g1();
            this.f22368l.sendEmptyMessage(2);
        } else if (i3 == 2) {
            this.f22368l.sendEmptyMessage(2);
        }
    }

    /* renamed from: Q */
    public final void m17739Q() {
        boolean m17764c1 = m17764c1();
        this.f22380u0 = m17764c1;
        if (m17764c1) {
            this.f22383w.m18616j().m54958d(this.f22350C0);
        }
        m17787k1();
    }

    /* renamed from: Q0 */
    public void m17740Q0(PlaybackParameters playbackParameters) {
        this.f22368l.obtainMessage(4, playbackParameters).sendToTarget();
    }

    /* renamed from: R */
    public final void m17741R() {
        this.f22358Q.setPlaybackInfo(this.f22357O);
        if (this.f22358Q.f22391a) {
            this.f22381v.onPlaybackInfoUpdate(this.f22358Q);
            this.f22358Q = new PlaybackInfoUpdate(this.f22357O);
        }
    }

    /* renamed from: R0 */
    public final void m17742R0(PlaybackParameters playbackParameters) throws ExoPlaybackException {
        this.f22376s.setPlaybackParameters(playbackParameters);
        m17722F(this.f22376s.getPlaybackParameters(), true);
    }

    /* renamed from: S */
    public final boolean m17743S(long j, long j2) {
        if (this.f22390z0 && this.f22388y0) {
            return false;
        }
        m17811w0(j, j2);
        return true;
    }

    /* renamed from: S0 */
    public void m17744S0(int i) {
        this.f22368l.obtainMessage(11, i, 0).sendToTarget();
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0074, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0045, code lost:
    
        r3 = null;
     */
    /* renamed from: T */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17745T(long r8, long r10) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ExoPlayerImplInternal.m17745T(long, long):void");
    }

    /* renamed from: T0 */
    public final void m17746T0(int i) throws ExoPlaybackException {
        this.f22382v0 = i;
        if (!this.f22383w.m18606H(this.f22357O.f79306a, i)) {
            m17815y0(true);
        }
        m17714B(false);
    }

    /* renamed from: U */
    public final void m17747U() throws ExoPlaybackException {
        klj m18621o;
        this.f22383w.m18630y(this.f22350C0);
        if (this.f22383w.m18603E() && (m18621o = this.f22383w.m18621o(this.f22350C0, this.f22357O)) != null) {
            jlj m18613g = this.f22383w.m18613g(this.f22362g, this.f22363h, this.f22365j.getAllocator(), this.f22385x, m18621o, this.f22364i);
            m18613g.f74430a.prepare(this, m18621o.f75531b);
            if (this.f22383w.m18622p() == m18613g) {
                m17801p0(m18621o.f75531b);
            }
            m17714B(false);
        }
        if (!this.f22380u0) {
            m17739Q();
        } else {
            this.f22380u0 = m17731K();
            m17787k1();
        }
    }

    /* renamed from: U0 */
    public void m17748U0(SeekParameters seekParameters) {
        this.f22368l.obtainMessage(5, seekParameters).sendToTarget();
    }

    /* renamed from: V */
    public final void m17749V() throws ExoPlaybackException {
        boolean z;
        boolean z2 = false;
        while (m17762b1()) {
            if (z2) {
                m17741R();
            }
            jlj jljVar = (jlj) Assertions.checkNotNull(this.f22383w.m18608b());
            if (this.f22357O.f79307b.periodUid.equals(jljVar.f74435f.f75530a.periodUid)) {
                MediaSource.MediaPeriodId mediaPeriodId = this.f22357O.f79307b;
                if (mediaPeriodId.adGroupIndex == -1) {
                    MediaSource.MediaPeriodId mediaPeriodId2 = jljVar.f74435f.f75530a;
                    if (mediaPeriodId2.adGroupIndex == -1 && mediaPeriodId.nextAdGroupIndex != mediaPeriodId2.nextAdGroupIndex) {
                        z = true;
                        klj kljVar = jljVar.f74435f;
                        MediaSource.MediaPeriodId mediaPeriodId3 = kljVar.f75530a;
                        long j = kljVar.f75531b;
                        this.f22357O = m17724G(mediaPeriodId3, j, kljVar.f75532c, j, !z, 0);
                        m17798o0();
                        m17796n1();
                        z2 = true;
                    }
                }
            }
            z = false;
            klj kljVar2 = jljVar.f74435f;
            MediaSource.MediaPeriodId mediaPeriodId32 = kljVar2.f75530a;
            long j2 = kljVar2.f75531b;
            this.f22357O = m17724G(mediaPeriodId32, j2, kljVar2.f75532c, j2, !z, 0);
            m17798o0();
            m17796n1();
            z2 = true;
        }
    }

    /* renamed from: V0 */
    public final void m17750V0(SeekParameters seekParameters) {
        this.f22356J = seekParameters;
    }

    /* renamed from: W */
    public final void m17751W() {
        jlj m18623q = this.f22383w.m18623q();
        if (m18623q == null) {
            return;
        }
        int i = 0;
        if (m18623q.m54963j() != null && !this.f22374q0) {
            if (m17728I()) {
                if (m18623q.m54963j().f74433d || this.f22350C0 >= m18623q.m54963j().m54966m()) {
                    TrackSelectorResult m54968o = m18623q.m54968o();
                    jlj m18609c = this.f22383w.m18609c();
                    TrackSelectorResult m54968o2 = m18609c.m54968o();
                    Timeline timeline = this.f22357O.f79306a;
                    m17799o1(timeline, m18609c.f74435f.f75530a, timeline, m18623q.f74435f.f75530a, C4649C.TIME_UNSET);
                    if (m18609c.f74433d && m18609c.f74430a.readDiscontinuity() != C4649C.TIME_UNSET) {
                        m17723F0(m18609c.m54966m());
                        return;
                    }
                    for (int i2 = 0; i2 < this.f22360e.length; i2++) {
                        boolean isRendererEnabled = m54968o.isRendererEnabled(i2);
                        boolean isRendererEnabled2 = m54968o2.isRendererEnabled(i2);
                        if (isRendererEnabled && !this.f22360e[i2].isCurrentStreamFinal()) {
                            boolean z = this.f22362g[i2].getTrackType() == -2;
                            RendererConfiguration rendererConfiguration = m54968o.rendererConfigurations[i2];
                            RendererConfiguration rendererConfiguration2 = m54968o2.rendererConfigurations[i2];
                            if (!isRendererEnabled2 || !rendererConfiguration2.equals(rendererConfiguration) || z) {
                                m17725G0(this.f22360e[i2], m18609c.m54966m());
                            }
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (!m18623q.f74435f.f75538i && !this.f22374q0) {
            return;
        }
        while (true) {
            Renderer[] rendererArr = this.f22360e;
            if (i >= rendererArr.length) {
                return;
            }
            Renderer renderer = rendererArr[i];
            SampleStream sampleStream = m18623q.f74432c[i];
            if (sampleStream != null && renderer.getStream() == sampleStream && renderer.hasReadStreamToEnd()) {
                long j = m18623q.f74435f.f75534e;
                m17725G0(renderer, (j == C4649C.TIME_UNSET || j == Long.MIN_VALUE) ? -9223372036854775807L : m18623q.m54965l() + m18623q.f74435f.f75534e);
            }
            i++;
        }
    }

    /* renamed from: W0 */
    public void m17752W0(boolean z) {
        this.f22368l.obtainMessage(12, z ? 1 : 0, 0).sendToTarget();
    }

    /* renamed from: X */
    public final void m17753X() throws ExoPlaybackException {
        jlj m18623q = this.f22383w.m18623q();
        if (m18623q == null || this.f22383w.m18622p() == m18623q || m18623q.f74436g || !m17789l0()) {
            return;
        }
        m17788l();
    }

    /* renamed from: X0 */
    public final void m17754X0(boolean z) throws ExoPlaybackException {
        this.f22384w0 = z;
        if (!this.f22383w.m18607I(this.f22357O.f79306a, z)) {
            m17815y0(true);
        }
        m17714B(false);
    }

    /* renamed from: Y */
    public final void m17755Y() throws ExoPlaybackException {
        m17716C(this.f22385x.m17960j(), true);
    }

    /* renamed from: Y0 */
    public void m17756Y0(ShuffleOrder shuffleOrder) {
        this.f22368l.obtainMessage(21, shuffleOrder).sendToTarget();
    }

    /* renamed from: Z */
    public final void m17757Z(C4653c c4653c) throws ExoPlaybackException {
        this.f22358Q.incrementPendingOperationAcks(1);
        m17716C(this.f22385x.m17968x(c4653c.f22397a, c4653c.f22398b, c4653c.f22399c, c4653c.f22400d), false);
    }

    /* renamed from: Z0 */
    public final void m17758Z0(ShuffleOrder shuffleOrder) throws ExoPlaybackException {
        this.f22358Q.incrementPendingOperationAcks(1);
        m17716C(this.f22385x.m17955F(shuffleOrder), false);
    }

    /* renamed from: a0 */
    public void m17759a0(int i, int i2, int i3, ShuffleOrder shuffleOrder) {
        this.f22368l.obtainMessage(19, new C4653c(i, i2, i3, shuffleOrder)).sendToTarget();
    }

    /* renamed from: a1 */
    public final void m17760a1(int i) {
        o4l o4lVar = this.f22357O;
        if (o4lVar.f79310e != i) {
            if (i != 2) {
                this.f22355H0 = C4649C.TIME_UNSET;
            }
            this.f22357O = o4lVar.m55897h(i);
        }
    }

    /* renamed from: b0 */
    public final void m17761b0() {
        for (jlj m18622p = this.f22383w.m18622p(); m18622p != null; m18622p = m18622p.m54963j()) {
            for (ExoTrackSelection exoTrackSelection : m18622p.m54968o().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onDiscontinuity();
                }
            }
        }
    }

    /* renamed from: b1 */
    public final boolean m17762b1() {
        jlj m18622p;
        jlj m54963j;
        return m17766d1() && !this.f22374q0 && (m18622p = this.f22383w.m18622p()) != null && (m54963j = m18622p.m54963j()) != null && this.f22350C0 >= m54963j.m54966m() && m54963j.f74436g;
    }

    /* renamed from: c0 */
    public final void m17763c0(boolean z) {
        for (jlj m18622p = this.f22383w.m18622p(); m18622p != null; m18622p = m18622p.m54963j()) {
            for (ExoTrackSelection exoTrackSelection : m18622p.m54968o().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onPlayWhenReadyChanged(z);
                }
            }
        }
    }

    /* renamed from: c1 */
    public final boolean m17764c1() {
        if (!m17731K()) {
            return false;
        }
        jlj m18616j = this.f22383w.m18616j();
        return this.f22365j.shouldContinueLoading(m18616j == this.f22383w.m18622p() ? m18616j.m54977y(this.f22350C0) : m18616j.m54977y(this.f22350C0) - m18616j.f74435f.f75531b, m17814y(m18616j.m54964k()), this.f22376s.getPlaybackParameters().speed);
    }

    /* renamed from: d0 */
    public final void m17765d0() {
        for (jlj m18622p = this.f22383w.m18622p(); m18622p != null; m18622p = m18622p.m54963j()) {
            for (ExoTrackSelection exoTrackSelection : m18622p.m54968o().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onRebuffer();
                }
            }
        }
    }

    /* renamed from: d1 */
    public final boolean m17766d1() {
        o4l o4lVar = this.f22357O;
        return o4lVar.f79317l && o4lVar.f79318m == 0;
    }

    /* renamed from: e */
    public final void m17767e(C4652b c4652b, int i) throws ExoPlaybackException {
        this.f22358Q.incrementPendingOperationAcks(1);
        MediaSourceList mediaSourceList = this.f22385x;
        if (i == -1) {
            i = mediaSourceList.m17964r();
        }
        m17716C(mediaSourceList.m17956f(i, c4652b.f22393a, c4652b.f22394b), false);
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    /* renamed from: e0, reason: merged with bridge method [inline-methods] */
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        this.f22368l.obtainMessage(9, mediaPeriod).sendToTarget();
    }

    /* renamed from: e1 */
    public final boolean m17769e1(boolean z) {
        if (this.f22348A0 == 0) {
            return m17734M();
        }
        if (!z) {
            return false;
        }
        o4l o4lVar = this.f22357O;
        if (!o4lVar.f79312g) {
            return true;
        }
        long targetLiveOffsetUs = m17772f1(o4lVar.f79306a, this.f22383w.m18622p().f74435f.f75530a) ? this.f22387y.getTargetLiveOffsetUs() : C4649C.TIME_UNSET;
        jlj m18616j = this.f22383w.m18616j();
        return (m18616j.m54970q() && m18616j.f74435f.f75538i) || (m18616j.f74435f.f75530a.isAd() && !m18616j.f74433d) || this.f22365j.shouldStartPlayback(m17812x(), this.f22376s.getPlaybackParameters().speed, this.f22378t0, targetLiveOffsetUs);
    }

    /* renamed from: f */
    public void m17770f(int i, List<MediaSourceList.C4663c> list, ShuffleOrder shuffleOrder) {
        this.f22368l.obtainMessage(18, i, 0, new C4652b(list, shuffleOrder, -1, C4649C.TIME_UNSET, null)).sendToTarget();
    }

    /* renamed from: f0 */
    public void m17771f0() {
        this.f22368l.obtainMessage(0).sendToTarget();
    }

    /* renamed from: f1 */
    public final boolean m17772f1(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        if (mediaPeriodId.isAd() || timeline.isEmpty()) {
            return false;
        }
        timeline.getWindow(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.f22372p).windowIndex, this.f22371o);
        if (!this.f22371o.isLive()) {
            return false;
        }
        Timeline.Window window = this.f22371o;
        return window.isDynamic && window.windowStartTimeMs != C4649C.TIME_UNSET;
    }

    /* renamed from: g */
    public final void m17773g() throws ExoPlaybackException {
        m17815y0(true);
    }

    /* renamed from: g0 */
    public final void m17774g0() {
        this.f22358Q.incrementPendingOperationAcks(1);
        m17795n0(false, false, false, true);
        this.f22365j.onPrepared();
        m17760a1(this.f22357O.f79306a.isEmpty() ? 4 : 2);
        this.f22385x.m17969y(this.f22366k.getTransferListener());
        this.f22368l.sendEmptyMessage(2);
    }

    /* renamed from: g1 */
    public final void m17775g1() throws ExoPlaybackException {
        this.f22378t0 = false;
        this.f22376s.m17644e();
        for (Renderer renderer : this.f22360e) {
            if (m17698L(renderer)) {
                renderer.start();
            }
        }
    }

    /* renamed from: h */
    public final void m17776h(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.isCanceled()) {
            return;
        }
        try {
            playerMessage.getTarget().handleMessage(playerMessage.getType(), playerMessage.getPayload());
        } finally {
            playerMessage.markAsProcessed(true);
        }
    }

    /* renamed from: h0 */
    public synchronized boolean m17777h0() {
        if (!this.f22359Z && this.f22369m.isAlive()) {
            this.f22368l.sendEmptyMessage(7);
            m17804q1(new Supplier() { // from class: com.sunia.HTREnginev2.l1g
                @Override // com.google.common.base.Supplier, java.util.function.Supplier
                public final Object get() {
                    Boolean m17700O;
                    m17700O = ExoPlayerImplInternal.this.m17700O();
                    return m17700O;
                }
            }, this.f22389z);
            return this.f22359Z;
        }
        return true;
    }

    /* renamed from: h1 */
    public void m17778h1() {
        this.f22368l.obtainMessage(6).sendToTarget();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i;
        jlj m18623q;
        try {
            switch (message.what) {
                case 0:
                    m17774g0();
                    break;
                case 1:
                    m17738P0(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    m17782j();
                    break;
                case 3:
                    m17817z0((C4656f) message.obj);
                    break;
                case 4:
                    m17742R0((PlaybackParameters) message.obj);
                    break;
                case 5:
                    m17750V0((SeekParameters) message.obj);
                    break;
                case 6:
                    m17781i1(false, true);
                    break;
                case 7:
                    m17780i0();
                    return true;
                case 8:
                    m17718D((MediaPeriod) message.obj);
                    break;
                case 9:
                    m17816z((MediaPeriod) message.obj);
                    break;
                case 10:
                    m17792m0();
                    break;
                case 11:
                    m17746T0(message.arg1);
                    break;
                case 12:
                    m17754X0(message.arg1 != 0);
                    break;
                case 13:
                    m17729I0(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    m17717C0((PlayerMessage) message.obj);
                    break;
                case 15:
                    m17721E0((PlayerMessage) message.obj);
                    break;
                case 16:
                    m17722F((PlaybackParameters) message.obj, false);
                    break;
                case 17:
                    m17730J0((C4652b) message.obj);
                    break;
                case 18:
                    m17767e((C4652b) message.obj, message.arg1);
                    break;
                case 19:
                    m17757Z((C4653c) message.obj);
                    break;
                case 20:
                    m17783j0(message.arg1, message.arg2, (ShuffleOrder) message.obj);
                    break;
                case 21:
                    m17758Z0((ShuffleOrder) message.obj);
                    break;
                case 22:
                    m17755Y();
                    break;
                case 23:
                    m17736N0(message.arg1 != 0);
                    break;
                case 24:
                    m17733L0(message.arg1 == 1);
                    break;
                case 25:
                    m17773g();
                    break;
                default:
                    return false;
            }
        } catch (ExoPlaybackException e) {
            e = e;
            if (e.type == 1 && (m18623q = this.f22383w.m18623q()) != null) {
                e = e.copyWithMediaPeriodId(m18623q.f74435f.f75530a);
            }
            if (e.isRecoverable && this.f22353F0 == null) {
                Log.m21494w(f22317I0, "Recoverable renderer error", e);
                this.f22353F0 = e;
                HandlerWrapper handlerWrapper = this.f22368l;
                handlerWrapper.sendMessageAtFrontOfQueue(handlerWrapper.obtainMessage(25, e));
            } else {
                ExoPlaybackException exoPlaybackException = this.f22353F0;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(e);
                    e = this.f22353F0;
                }
                Log.m21490e(f22317I0, "Playback error", e);
                m17781i1(true, false);
                this.f22357O = this.f22357O.m55895f(e);
            }
        } catch (ParserException e2) {
            int i2 = e2.dataType;
            if (i2 == 1) {
                i = e2.contentIsMalformed ? 3001 : 3003;
            } else {
                if (i2 == 4) {
                    i = e2.contentIsMalformed ? 3002 : 3004;
                }
                m17712A(e2, r2);
            }
            r2 = i;
            m17712A(e2, r2);
        } catch (DrmSession.DrmSessionException e3) {
            m17712A(e3, e3.errorCode);
        } catch (BehindLiveWindowException e4) {
            m17712A(e4, 1002);
        } catch (DataSourceException e5) {
            m17712A(e5, e5.reason);
        } catch (IOException e6) {
            m17712A(e6, 2000);
        } catch (RuntimeException e7) {
            ExoPlaybackException createForUnexpected = ExoPlaybackException.createForUnexpected(e7, ((e7 instanceof IllegalStateException) || (e7 instanceof IllegalArgumentException)) ? 1004 : 1000);
            Log.m21490e(f22317I0, "Playback error", createForUnexpected);
            m17781i1(true, false);
            this.f22357O = this.f22357O.m55895f(createForUnexpected);
        }
        m17741R();
        return true;
    }

    /* renamed from: i */
    public final void m17779i(Renderer renderer) throws ExoPlaybackException {
        if (m17698L(renderer)) {
            this.f22376s.m17640a(renderer);
            m17794n(renderer);
            renderer.disable();
            this.f22348A0--;
        }
    }

    /* renamed from: i0 */
    public final void m17780i0() {
        m17795n0(true, false, true, false);
        this.f22365j.onReleased();
        m17760a1(1);
        this.f22369m.quit();
        synchronized (this) {
            this.f22359Z = true;
            notifyAll();
        }
    }

    /* renamed from: i1 */
    public final void m17781i1(boolean z, boolean z2) {
        m17795n0(z || !this.f22386x0, false, true, false);
        this.f22358Q.incrementPendingOperationAcks(z2 ? 1 : 0);
        this.f22365j.onStopped();
        m17760a1(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01a2  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17782j() throws com.google.android.exoplayer2.ExoPlaybackException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ExoPlayerImplInternal.m17782j():void");
    }

    /* renamed from: j0 */
    public final void m17783j0(int i, int i2, ShuffleOrder shuffleOrder) throws ExoPlaybackException {
        this.f22358Q.incrementPendingOperationAcks(1);
        m17716C(this.f22385x.m17952C(i, i2, shuffleOrder), false);
    }

    /* renamed from: j1 */
    public final void m17784j1() throws ExoPlaybackException {
        this.f22376s.m17645f();
        for (Renderer renderer : this.f22360e) {
            if (m17698L(renderer)) {
                m17794n(renderer);
            }
        }
    }

    /* renamed from: k */
    public final void m17785k(int i, boolean z) throws ExoPlaybackException {
        Renderer renderer = this.f22360e[i];
        if (m17698L(renderer)) {
            return;
        }
        jlj m18623q = this.f22383w.m18623q();
        boolean z2 = m18623q == this.f22383w.m18622p();
        TrackSelectorResult m54968o = m18623q.m54968o();
        RendererConfiguration rendererConfiguration = m54968o.rendererConfigurations[i];
        Format[] m17708s = m17708s(m54968o.selections[i]);
        boolean z3 = m17766d1() && this.f22357O.f79310e == 3;
        boolean z4 = !z && z3;
        this.f22348A0++;
        this.f22361f.add(renderer);
        renderer.enable(rendererConfiguration, m17708s, m18623q.f74432c[i], this.f22350C0, z4, z2, m18623q.m54966m(), m18623q.m54965l());
        renderer.handleMessage(11, new C4651a());
        this.f22376s.m17641b(renderer);
        if (z3) {
            renderer.start();
        }
    }

    /* renamed from: k0 */
    public void m17786k0(int i, int i2, ShuffleOrder shuffleOrder) {
        this.f22368l.obtainMessage(20, i, i2, shuffleOrder).sendToTarget();
    }

    /* renamed from: k1 */
    public final void m17787k1() {
        jlj m18616j = this.f22383w.m18616j();
        boolean z = this.f22380u0 || (m18616j != null && m18616j.f74430a.isLoading());
        o4l o4lVar = this.f22357O;
        if (z != o4lVar.f79312g) {
            this.f22357O = o4lVar.m55890a(z);
        }
    }

    /* renamed from: l */
    public final void m17788l() throws ExoPlaybackException {
        m17791m(new boolean[this.f22360e.length]);
    }

    /* renamed from: l0 */
    public final boolean m17789l0() throws ExoPlaybackException {
        jlj m18623q = this.f22383w.m18623q();
        TrackSelectorResult m54968o = m18623q.m54968o();
        int i = 0;
        boolean z = false;
        while (true) {
            Renderer[] rendererArr = this.f22360e;
            if (i >= rendererArr.length) {
                return !z;
            }
            Renderer renderer = rendererArr[i];
            if (m17698L(renderer)) {
                boolean z2 = renderer.getStream() != m18623q.f74432c[i];
                if (!m54968o.isRendererEnabled(i) || z2) {
                    if (!renderer.isCurrentStreamFinal()) {
                        renderer.replaceStream(m17708s(m54968o.selections[i]), m18623q.f74432c[i], m18623q.m54966m(), m18623q.m54965l());
                    } else if (renderer.isEnded()) {
                        m17779i(renderer);
                    } else {
                        z = true;
                    }
                }
            }
            i++;
        }
    }

    /* renamed from: l1 */
    public final void m17790l1(TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult) {
        this.f22365j.onTracksSelected(this.f22360e, trackGroupArray, trackSelectorResult.selections);
    }

    /* renamed from: m */
    public final void m17791m(boolean[] zArr) throws ExoPlaybackException {
        jlj m18623q = this.f22383w.m18623q();
        TrackSelectorResult m54968o = m18623q.m54968o();
        for (int i = 0; i < this.f22360e.length; i++) {
            if (!m54968o.isRendererEnabled(i) && this.f22361f.remove(this.f22360e[i])) {
                this.f22360e[i].reset();
            }
        }
        for (int i2 = 0; i2 < this.f22360e.length; i2++) {
            if (m54968o.isRendererEnabled(i2)) {
                m17785k(i2, zArr[i2]);
            }
        }
        m18623q.f74436g = true;
    }

    /* renamed from: m0 */
    public final void m17792m0() throws ExoPlaybackException {
        float f = this.f22376s.getPlaybackParameters().speed;
        jlj m18623q = this.f22383w.m18623q();
        boolean z = true;
        for (jlj m18622p = this.f22383w.m18622p(); m18622p != null && m18622p.f74433d; m18622p = m18622p.m54963j()) {
            TrackSelectorResult m54974v = m18622p.m54974v(f, this.f22357O.f79306a);
            if (!m54974v.isEquivalent(m18622p.m54968o())) {
                if (z) {
                    jlj m18622p2 = this.f22383w.m18622p();
                    boolean m18631z = this.f22383w.m18631z(m18622p2);
                    boolean[] zArr = new boolean[this.f22360e.length];
                    long m54956b = m18622p2.m54956b(m54974v, this.f22357O.f79324s, m18631z, zArr);
                    o4l o4lVar = this.f22357O;
                    boolean z2 = (o4lVar.f79310e == 4 || m54956b == o4lVar.f79324s) ? false : true;
                    o4l o4lVar2 = this.f22357O;
                    this.f22357O = m17724G(o4lVar2.f79307b, m54956b, o4lVar2.f79308c, o4lVar2.f79309d, z2, 5);
                    if (z2) {
                        m17801p0(m54956b);
                    }
                    boolean[] zArr2 = new boolean[this.f22360e.length];
                    int i = 0;
                    while (true) {
                        Renderer[] rendererArr = this.f22360e;
                        if (i >= rendererArr.length) {
                            break;
                        }
                        Renderer renderer = rendererArr[i];
                        boolean m17698L = m17698L(renderer);
                        zArr2[i] = m17698L;
                        SampleStream sampleStream = m18622p2.f74432c[i];
                        if (m17698L) {
                            if (sampleStream != renderer.getStream()) {
                                m17779i(renderer);
                            } else if (zArr[i]) {
                                renderer.resetPosition(this.f22350C0);
                            }
                        }
                        i++;
                    }
                    m17791m(zArr2);
                } else {
                    this.f22383w.m18631z(m18622p);
                    if (m18622p.f74433d) {
                        m18622p.m54955a(m54974v, Math.max(m18622p.f74435f.f75531b, m18622p.m54977y(this.f22350C0)), false);
                    }
                }
                m17714B(true);
                if (this.f22357O.f79310e != 4) {
                    m17739Q();
                    m17796n1();
                    this.f22368l.sendEmptyMessage(2);
                    return;
                }
                return;
            }
            if (m18622p == m18623q) {
                z = false;
            }
        }
    }

    /* renamed from: m1 */
    public final void m17793m1() throws ExoPlaybackException, IOException {
        if (this.f22357O.f79306a.isEmpty() || !this.f22385x.m17965t()) {
            return;
        }
        m17747U();
        m17751W();
        m17753X();
        m17749V();
    }

    /* renamed from: n */
    public final void m17794n(Renderer renderer) throws ExoPlaybackException {
        if (renderer.getState() == 2) {
            renderer.stop();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c0  */
    /* renamed from: n0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17795n0(boolean r30, boolean r31, boolean r32, boolean r33) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ExoPlayerImplInternal.m17795n0(boolean, boolean, boolean, boolean):void");
    }

    /* renamed from: n1 */
    public final void m17796n1() throws ExoPlaybackException {
        jlj m18622p = this.f22383w.m18622p();
        if (m18622p == null) {
            return;
        }
        long readDiscontinuity = m18622p.f74433d ? m18622p.f74430a.readDiscontinuity() : -9223372036854775807L;
        if (readDiscontinuity != C4649C.TIME_UNSET) {
            m17801p0(readDiscontinuity);
            if (readDiscontinuity != this.f22357O.f79324s) {
                o4l o4lVar = this.f22357O;
                this.f22357O = m17724G(o4lVar.f79307b, readDiscontinuity, o4lVar.f79308c, readDiscontinuity, true, 5);
            }
        } else {
            long m17646g = this.f22376s.m17646g(m18622p != this.f22383w.m18623q());
            this.f22350C0 = m17646g;
            long m54977y = m18622p.m54977y(m17646g);
            m17745T(this.f22357O.f79324s, m54977y);
            this.f22357O.f79324s = m54977y;
        }
        this.f22357O.f79322q = this.f22383w.m18616j().m54962i();
        this.f22357O.f79323r = m17812x();
        o4l o4lVar2 = this.f22357O;
        if (o4lVar2.f79317l && o4lVar2.f79310e == 3 && m17772f1(o4lVar2.f79306a, o4lVar2.f79307b) && this.f22357O.f79319n.speed == 1.0f) {
            float adjustedPlaybackSpeed = this.f22387y.getAdjustedPlaybackSpeed(m17805r(), m17812x());
            if (this.f22376s.getPlaybackParameters().speed != adjustedPlaybackSpeed) {
                this.f22376s.setPlaybackParameters(this.f22357O.f79319n.withSpeed(adjustedPlaybackSpeed));
                m17720E(this.f22357O.f79319n, this.f22376s.getPlaybackParameters().speed, false, false);
            }
        }
    }

    /* renamed from: o */
    public void m17797o(long j) {
        this.f22354G0 = j;
    }

    /* renamed from: o0 */
    public final void m17798o0() {
        jlj m18622p = this.f22383w.m18622p();
        this.f22374q0 = m18622p != null && m18622p.f74435f.f75537h && this.f22367k0;
    }

    /* renamed from: o1 */
    public final void m17799o1(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline2, MediaSource.MediaPeriodId mediaPeriodId2, long j) {
        if (!m17772f1(timeline, mediaPeriodId)) {
            PlaybackParameters playbackParameters = mediaPeriodId.isAd() ? PlaybackParameters.DEFAULT : this.f22357O.f79319n;
            if (this.f22376s.getPlaybackParameters().equals(playbackParameters)) {
                return;
            }
            this.f22376s.setPlaybackParameters(playbackParameters);
            return;
        }
        timeline.getWindow(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.f22372p).windowIndex, this.f22371o);
        this.f22387y.setLiveConfiguration((MediaItem.LiveConfiguration) Util.castNonNull(this.f22371o.liveConfiguration));
        if (j != C4649C.TIME_UNSET) {
            this.f22387y.setTargetLiveOffsetOverrideUs(m17807t(timeline, mediaPeriodId.periodUid, j));
            return;
        }
        if (Util.areEqual(!timeline2.isEmpty() ? timeline2.getWindow(timeline2.getPeriodByUid(mediaPeriodId2.periodUid, this.f22372p).windowIndex, this.f22371o).uid : null, this.f22371o.uid)) {
            return;
        }
        this.f22387y.setTargetLiveOffsetOverrideUs(C4649C.TIME_UNSET);
    }

    @Override // com.google.android.exoplayer2.DefaultMediaClock.PlaybackParametersListener
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        this.f22368l.obtainMessage(16, playbackParameters).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.MediaSourceList.MediaSourceListInfoRefreshListener
    public void onPlaylistUpdateRequested() {
        this.f22368l.sendEmptyMessage(22);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        this.f22368l.obtainMessage(8, mediaPeriod).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector.InvalidationListener
    public void onTrackSelectionsInvalidated() {
        this.f22368l.sendEmptyMessage(10);
    }

    /* renamed from: p */
    public void m17800p(boolean z) {
        this.f22368l.obtainMessage(24, z ? 1 : 0, 0).sendToTarget();
    }

    /* renamed from: p0 */
    public final void m17801p0(long j) throws ExoPlaybackException {
        jlj m18622p = this.f22383w.m18622p();
        long m54978z = m18622p == null ? j + 1000000000000L : m18622p.m54978z(j);
        this.f22350C0 = m54978z;
        this.f22376s.m17642c(m54978z);
        for (Renderer renderer : this.f22360e) {
            if (m17698L(renderer)) {
                renderer.resetPosition(this.f22350C0);
            }
        }
        m17761b0();
    }

    /* renamed from: p1 */
    public final void m17802p1(float f) {
        for (jlj m18622p = this.f22383w.m18622p(); m18622p != null; m18622p = m18622p.m54963j()) {
            for (ExoTrackSelection exoTrackSelection : m18622p.m54968o().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onPlaybackSpeed(f);
                }
            }
        }
    }

    /* renamed from: q */
    public final ImmutableList<Metadata> m17803q(ExoTrackSelection[] exoTrackSelectionArr) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        boolean z = false;
        for (ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
            if (exoTrackSelection != null) {
                Metadata metadata = exoTrackSelection.getFormat(0).metadata;
                if (metadata == null) {
                    builder.add((ImmutableList.Builder) new Metadata(new Metadata.Entry[0]));
                } else {
                    builder.add((ImmutableList.Builder) metadata);
                    z = true;
                }
            }
        }
        return z ? builder.build() : ImmutableList.m26161of();
    }

    /* renamed from: q1 */
    public final synchronized void m17804q1(Supplier<Boolean> supplier, long j) {
        long elapsedRealtime = this.f22379u.elapsedRealtime() + j;
        boolean z = false;
        while (!supplier.get().booleanValue() && j > 0) {
            try {
                this.f22379u.onThreadBlocked();
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = elapsedRealtime - this.f22379u.elapsedRealtime();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    /* renamed from: r */
    public final long m17805r() {
        o4l o4lVar = this.f22357O;
        return m17807t(o4lVar.f79306a, o4lVar.f79307b.periodUid, o4lVar.f79324s);
    }

    /* renamed from: s0 */
    public final void m17806s0(Timeline timeline, Timeline timeline2) {
        if (timeline.isEmpty() && timeline2.isEmpty()) {
            return;
        }
        for (int size = this.f22377t.size() - 1; size >= 0; size--) {
            if (!m17707r0(this.f22377t.get(size), timeline, timeline2, this.f22382v0, this.f22384w0, this.f22371o, this.f22372p)) {
                this.f22377t.get(size).f22401e.markAsProcessed(false);
                this.f22377t.remove(size);
            }
        }
        Collections.sort(this.f22377t);
    }

    @Override // com.google.android.exoplayer2.PlayerMessage.Sender
    public synchronized void sendMessage(PlayerMessage playerMessage) {
        if (!this.f22359Z && this.f22369m.isAlive()) {
            this.f22368l.obtainMessage(14, playerMessage).sendToTarget();
            return;
        }
        Log.m21493w(f22317I0, "Ignoring messages sent after release.");
        playerMessage.markAsProcessed(false);
    }

    /* renamed from: t */
    public final long m17807t(Timeline timeline, Object obj, long j) {
        timeline.getWindow(timeline.getPeriodByUid(obj, this.f22372p).windowIndex, this.f22371o);
        Timeline.Window window = this.f22371o;
        if (window.windowStartTimeMs != C4649C.TIME_UNSET && window.isLive()) {
            Timeline.Window window2 = this.f22371o;
            if (window2.isDynamic) {
                return Util.msToUs(window2.getCurrentUnixTimeMs() - this.f22371o.windowStartTimeMs) - (j + this.f22372p.getPositionInWindowUs());
            }
        }
        return C4649C.TIME_UNSET;
    }

    /* renamed from: u */
    public final long m17808u() {
        jlj m18623q = this.f22383w.m18623q();
        if (m18623q == null) {
            return 0L;
        }
        long m54965l = m18623q.m54965l();
        if (!m18623q.f74433d) {
            return m54965l;
        }
        int i = 0;
        while (true) {
            Renderer[] rendererArr = this.f22360e;
            if (i >= rendererArr.length) {
                return m54965l;
            }
            if (m17698L(rendererArr[i]) && this.f22360e[i].getStream() == m18623q.f74432c[i]) {
                long readingPositionUs = this.f22360e[i].getReadingPositionUs();
                if (readingPositionUs == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                m54965l = Math.max(readingPositionUs, m54965l);
            }
            i++;
        }
    }

    /* renamed from: v */
    public final Pair<MediaSource.MediaPeriodId, Long> m17809v(Timeline timeline) {
        if (timeline.isEmpty()) {
            return Pair.create(o4l.m55889l(), 0L);
        }
        Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(this.f22371o, this.f22372p, timeline.getFirstWindowIndex(this.f22384w0), C4649C.TIME_UNSET);
        MediaSource.MediaPeriodId m18601C = this.f22383w.m18601C(timeline, periodPositionUs.first, 0L);
        long longValue = ((Long) periodPositionUs.second).longValue();
        if (m18601C.isAd()) {
            timeline.getPeriodByUid(m18601C.periodUid, this.f22372p);
            longValue = m18601C.adIndexInAdGroup == this.f22372p.getFirstAdIndexToPlay(m18601C.adGroupIndex) ? this.f22372p.getAdResumePositionUs() : 0L;
        }
        return Pair.create(m18601C, Long.valueOf(longValue));
    }

    /* renamed from: w */
    public Looper m17810w() {
        return this.f22370n;
    }

    /* renamed from: w0 */
    public final void m17811w0(long j, long j2) {
        this.f22368l.removeMessages(2);
        this.f22368l.sendEmptyMessageAtTime(2, j + j2);
    }

    /* renamed from: x */
    public final long m17812x() {
        return m17814y(this.f22357O.f79322q);
    }

    /* renamed from: x0 */
    public void m17813x0(Timeline timeline, int i, long j) {
        this.f22368l.obtainMessage(3, new C4656f(timeline, i, j)).sendToTarget();
    }

    /* renamed from: y */
    public final long m17814y(long j) {
        jlj m18616j = this.f22383w.m18616j();
        if (m18616j == null) {
            return 0L;
        }
        return Math.max(0L, j - m18616j.m54977y(this.f22350C0));
    }

    /* renamed from: y0 */
    public final void m17815y0(boolean z) throws ExoPlaybackException {
        MediaSource.MediaPeriodId mediaPeriodId = this.f22383w.m18622p().f74435f.f75530a;
        long m17715B0 = m17715B0(mediaPeriodId, this.f22357O.f79324s, true, false);
        if (m17715B0 != this.f22357O.f79324s) {
            o4l o4lVar = this.f22357O;
            this.f22357O = m17724G(mediaPeriodId, m17715B0, o4lVar.f79308c, o4lVar.f79309d, z, 5);
        }
    }

    /* renamed from: z */
    public final void m17816z(MediaPeriod mediaPeriod) {
        if (this.f22383w.m18628v(mediaPeriod)) {
            this.f22383w.m18630y(this.f22350C0);
            m17739Q();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00ac A[Catch: all -> 0x0148, TryCatch #1 {all -> 0x0148, blocks: (B:6:0x00a2, B:8:0x00ac, B:15:0x00b2, B:17:0x00b8, B:18:0x00bb, B:19:0x00c1, B:21:0x00cb, B:23:0x00d3, B:27:0x00db, B:28:0x00e5, B:30:0x00f5, B:34:0x00ff, B:37:0x0111, B:40:0x011a), top: B:5:0x00a2 }] */
    /* renamed from: z0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17817z0(com.google.android.exoplayer2.ExoPlayerImplInternal.C4656f r19) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ExoPlayerImplInternal.m17817z0(com.google.android.exoplayer2.ExoPlayerImplInternal$f):void");
    }
}
