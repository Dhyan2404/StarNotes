package com.sunia.HTREnginev2;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* loaded from: classes5.dex */
public final class o4l {

    /* renamed from: t */
    public static final MediaSource.MediaPeriodId f79305t = new MediaSource.MediaPeriodId(new Object());

    /* renamed from: a */
    public final Timeline f79306a;

    /* renamed from: b */
    public final MediaSource.MediaPeriodId f79307b;

    /* renamed from: c */
    public final long f79308c;

    /* renamed from: d */
    public final long f79309d;

    /* renamed from: e */
    public final int f79310e;

    /* renamed from: f */
    @Nullable
    public final ExoPlaybackException f79311f;

    /* renamed from: g */
    public final boolean f79312g;

    /* renamed from: h */
    public final TrackGroupArray f79313h;

    /* renamed from: i */
    public final TrackSelectorResult f79314i;

    /* renamed from: j */
    public final List<Metadata> f79315j;

    /* renamed from: k */
    public final MediaSource.MediaPeriodId f79316k;

    /* renamed from: l */
    public final boolean f79317l;

    /* renamed from: m */
    public final int f79318m;

    /* renamed from: n */
    public final PlaybackParameters f79319n;

    /* renamed from: o */
    public final boolean f79320o;

    /* renamed from: p */
    public final boolean f79321p;

    /* renamed from: q */
    public volatile long f79322q;

    /* renamed from: r */
    public volatile long f79323r;

    /* renamed from: s */
    public volatile long f79324s;

    public o4l(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, int i, @Nullable ExoPlaybackException exoPlaybackException, boolean z, TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult, List<Metadata> list, MediaSource.MediaPeriodId mediaPeriodId2, boolean z2, int i2, PlaybackParameters playbackParameters, long j3, long j4, long j5, boolean z3, boolean z4) {
        this.f79306a = timeline;
        this.f79307b = mediaPeriodId;
        this.f79308c = j;
        this.f79309d = j2;
        this.f79310e = i;
        this.f79311f = exoPlaybackException;
        this.f79312g = z;
        this.f79313h = trackGroupArray;
        this.f79314i = trackSelectorResult;
        this.f79315j = list;
        this.f79316k = mediaPeriodId2;
        this.f79317l = z2;
        this.f79318m = i2;
        this.f79319n = playbackParameters;
        this.f79322q = j3;
        this.f79323r = j4;
        this.f79324s = j5;
        this.f79320o = z3;
        this.f79321p = z4;
    }

    /* renamed from: k */
    public static o4l m55888k(TrackSelectorResult trackSelectorResult) {
        Timeline timeline = Timeline.EMPTY;
        MediaSource.MediaPeriodId mediaPeriodId = f79305t;
        return new o4l(timeline, mediaPeriodId, C4649C.TIME_UNSET, 0L, 1, null, false, TrackGroupArray.EMPTY, trackSelectorResult, ImmutableList.m26161of(), mediaPeriodId, false, 0, PlaybackParameters.DEFAULT, 0L, 0L, 0L, false, false);
    }

    /* renamed from: l */
    public static MediaSource.MediaPeriodId m55889l() {
        return f79305t;
    }

    @CheckResult
    /* renamed from: a */
    public o4l m55890a(boolean z) {
        return new o4l(this.f79306a, this.f79307b, this.f79308c, this.f79309d, this.f79310e, this.f79311f, z, this.f79313h, this.f79314i, this.f79315j, this.f79316k, this.f79317l, this.f79318m, this.f79319n, this.f79322q, this.f79323r, this.f79324s, this.f79320o, this.f79321p);
    }

    @CheckResult
    /* renamed from: b */
    public o4l m55891b(MediaSource.MediaPeriodId mediaPeriodId) {
        return new o4l(this.f79306a, this.f79307b, this.f79308c, this.f79309d, this.f79310e, this.f79311f, this.f79312g, this.f79313h, this.f79314i, this.f79315j, mediaPeriodId, this.f79317l, this.f79318m, this.f79319n, this.f79322q, this.f79323r, this.f79324s, this.f79320o, this.f79321p);
    }

    @CheckResult
    /* renamed from: c */
    public o4l m55892c(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, long j3, long j4, TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult, List<Metadata> list) {
        return new o4l(this.f79306a, mediaPeriodId, j2, j3, this.f79310e, this.f79311f, this.f79312g, trackGroupArray, trackSelectorResult, list, this.f79316k, this.f79317l, this.f79318m, this.f79319n, this.f79322q, j4, j, this.f79320o, this.f79321p);
    }

    @CheckResult
    /* renamed from: d */
    public o4l m55893d(boolean z) {
        return new o4l(this.f79306a, this.f79307b, this.f79308c, this.f79309d, this.f79310e, this.f79311f, this.f79312g, this.f79313h, this.f79314i, this.f79315j, this.f79316k, this.f79317l, this.f79318m, this.f79319n, this.f79322q, this.f79323r, this.f79324s, z, this.f79321p);
    }

    @CheckResult
    /* renamed from: e */
    public o4l m55894e(boolean z, int i) {
        return new o4l(this.f79306a, this.f79307b, this.f79308c, this.f79309d, this.f79310e, this.f79311f, this.f79312g, this.f79313h, this.f79314i, this.f79315j, this.f79316k, z, i, this.f79319n, this.f79322q, this.f79323r, this.f79324s, this.f79320o, this.f79321p);
    }

    @CheckResult
    /* renamed from: f */
    public o4l m55895f(@Nullable ExoPlaybackException exoPlaybackException) {
        return new o4l(this.f79306a, this.f79307b, this.f79308c, this.f79309d, this.f79310e, exoPlaybackException, this.f79312g, this.f79313h, this.f79314i, this.f79315j, this.f79316k, this.f79317l, this.f79318m, this.f79319n, this.f79322q, this.f79323r, this.f79324s, this.f79320o, this.f79321p);
    }

    @CheckResult
    /* renamed from: g */
    public o4l m55896g(PlaybackParameters playbackParameters) {
        return new o4l(this.f79306a, this.f79307b, this.f79308c, this.f79309d, this.f79310e, this.f79311f, this.f79312g, this.f79313h, this.f79314i, this.f79315j, this.f79316k, this.f79317l, this.f79318m, playbackParameters, this.f79322q, this.f79323r, this.f79324s, this.f79320o, this.f79321p);
    }

    @CheckResult
    /* renamed from: h */
    public o4l m55897h(int i) {
        return new o4l(this.f79306a, this.f79307b, this.f79308c, this.f79309d, i, this.f79311f, this.f79312g, this.f79313h, this.f79314i, this.f79315j, this.f79316k, this.f79317l, this.f79318m, this.f79319n, this.f79322q, this.f79323r, this.f79324s, this.f79320o, this.f79321p);
    }

    @CheckResult
    /* renamed from: i */
    public o4l m55898i(boolean z) {
        return new o4l(this.f79306a, this.f79307b, this.f79308c, this.f79309d, this.f79310e, this.f79311f, this.f79312g, this.f79313h, this.f79314i, this.f79315j, this.f79316k, this.f79317l, this.f79318m, this.f79319n, this.f79322q, this.f79323r, this.f79324s, this.f79320o, z);
    }

    @CheckResult
    /* renamed from: j */
    public o4l m55899j(Timeline timeline) {
        return new o4l(timeline, this.f79307b, this.f79308c, this.f79309d, this.f79310e, this.f79311f, this.f79312g, this.f79313h, this.f79314i, this.f79315j, this.f79316k, this.f79317l, this.f79318m, this.f79319n, this.f79322q, this.f79323r, this.f79324s, this.f79320o, this.f79321p);
    }
}
