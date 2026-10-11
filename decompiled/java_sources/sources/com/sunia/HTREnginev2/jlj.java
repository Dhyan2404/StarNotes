package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaSourceList;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.ClippingMediaPeriod;
import com.google.android.exoplayer2.source.EmptySampleStream;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;

/* loaded from: classes5.dex */
public final class jlj {

    /* renamed from: p */
    public static final String f74429p = "MediaPeriodHolder";

    /* renamed from: a */
    public final MediaPeriod f74430a;

    /* renamed from: b */
    public final Object f74431b;

    /* renamed from: c */
    public final SampleStream[] f74432c;

    /* renamed from: d */
    public boolean f74433d;

    /* renamed from: e */
    public boolean f74434e;

    /* renamed from: f */
    public klj f74435f;

    /* renamed from: g */
    public boolean f74436g;

    /* renamed from: h */
    public final boolean[] f74437h;

    /* renamed from: i */
    public final RendererCapabilities[] f74438i;

    /* renamed from: j */
    public final TrackSelector f74439j;

    /* renamed from: k */
    public final MediaSourceList f74440k;

    /* renamed from: l */
    @Nullable
    public jlj f74441l;

    /* renamed from: m */
    public TrackGroupArray f74442m;

    /* renamed from: n */
    public TrackSelectorResult f74443n;

    /* renamed from: o */
    public long f74444o;

    public jlj(RendererCapabilities[] rendererCapabilitiesArr, long j, TrackSelector trackSelector, Allocator allocator, MediaSourceList mediaSourceList, klj kljVar, TrackSelectorResult trackSelectorResult) {
        this.f74438i = rendererCapabilitiesArr;
        this.f74444o = j;
        this.f74439j = trackSelector;
        this.f74440k = mediaSourceList;
        MediaSource.MediaPeriodId mediaPeriodId = kljVar.f75530a;
        this.f74431b = mediaPeriodId.periodUid;
        this.f74435f = kljVar;
        this.f74442m = TrackGroupArray.EMPTY;
        this.f74443n = trackSelectorResult;
        this.f74432c = new SampleStream[rendererCapabilitiesArr.length];
        this.f74437h = new boolean[rendererCapabilitiesArr.length];
        this.f74430a = m54952e(mediaPeriodId, mediaSourceList, allocator, kljVar.f75531b, kljVar.f75533d);
    }

    /* renamed from: e */
    public static MediaPeriod m54952e(MediaSource.MediaPeriodId mediaPeriodId, MediaSourceList mediaSourceList, Allocator allocator, long j, long j2) {
        MediaPeriod m17959i = mediaSourceList.m17959i(mediaPeriodId, allocator, j);
        return j2 != C4649C.TIME_UNSET ? new ClippingMediaPeriod(m17959i, true, 0L, j2) : m17959i;
    }

    /* renamed from: u */
    public static void m54953u(MediaSourceList mediaSourceList, MediaPeriod mediaPeriod) {
        try {
            if (mediaPeriod instanceof ClippingMediaPeriod) {
                mediaSourceList.m17951B(((ClippingMediaPeriod) mediaPeriod).mediaPeriod);
            } else {
                mediaSourceList.m17951B(mediaPeriod);
            }
        } catch (RuntimeException e) {
            Log.m21490e(f74429p, "Period release failed.", e);
        }
    }

    /* renamed from: A */
    public void m54954A() {
        MediaPeriod mediaPeriod = this.f74430a;
        if (mediaPeriod instanceof ClippingMediaPeriod) {
            long j = this.f74435f.f75533d;
            if (j == C4649C.TIME_UNSET) {
                j = Long.MIN_VALUE;
            }
            ((ClippingMediaPeriod) mediaPeriod).updateClipping(0L, j);
        }
    }

    /* renamed from: a */
    public long m54955a(TrackSelectorResult trackSelectorResult, long j, boolean z) {
        return m54956b(trackSelectorResult, j, z, new boolean[this.f74438i.length]);
    }

    /* renamed from: b */
    public long m54956b(TrackSelectorResult trackSelectorResult, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= trackSelectorResult.length) {
                break;
            }
            boolean[] zArr2 = this.f74437h;
            if (z || !trackSelectorResult.isEquivalent(this.f74443n, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        m54960g(this.f74432c);
        m54959f();
        this.f74443n = trackSelectorResult;
        m54961h();
        long selectTracks = this.f74430a.selectTracks(trackSelectorResult.selections, this.f74437h, this.f74432c, zArr, j);
        m54957c(this.f74432c);
        this.f74434e = false;
        int i2 = 0;
        while (true) {
            SampleStream[] sampleStreamArr = this.f74432c;
            if (i2 >= sampleStreamArr.length) {
                return selectTracks;
            }
            if (sampleStreamArr[i2] != null) {
                Assertions.checkState(trackSelectorResult.isRendererEnabled(i2));
                if (this.f74438i[i2].getTrackType() != -2) {
                    this.f74434e = true;
                }
            } else {
                Assertions.checkState(trackSelectorResult.selections[i2] == null);
            }
            i2++;
        }
    }

    /* renamed from: c */
    public final void m54957c(SampleStream[] sampleStreamArr) {
        int i = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.f74438i;
            if (i >= rendererCapabilitiesArr.length) {
                return;
            }
            if (rendererCapabilitiesArr[i].getTrackType() == -2 && this.f74443n.isRendererEnabled(i)) {
                sampleStreamArr[i] = new EmptySampleStream();
            }
            i++;
        }
    }

    /* renamed from: d */
    public void m54958d(long j) {
        Assertions.checkState(m54971r());
        this.f74430a.continueLoading(m54977y(j));
    }

    /* renamed from: f */
    public final void m54959f() {
        if (!m54971r()) {
            return;
        }
        int i = 0;
        while (true) {
            TrackSelectorResult trackSelectorResult = this.f74443n;
            if (i >= trackSelectorResult.length) {
                return;
            }
            boolean isRendererEnabled = trackSelectorResult.isRendererEnabled(i);
            ExoTrackSelection exoTrackSelection = this.f74443n.selections[i];
            if (isRendererEnabled && exoTrackSelection != null) {
                exoTrackSelection.disable();
            }
            i++;
        }
    }

    /* renamed from: g */
    public final void m54960g(SampleStream[] sampleStreamArr) {
        int i = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.f74438i;
            if (i >= rendererCapabilitiesArr.length) {
                return;
            }
            if (rendererCapabilitiesArr[i].getTrackType() == -2) {
                sampleStreamArr[i] = null;
            }
            i++;
        }
    }

    /* renamed from: h */
    public final void m54961h() {
        if (!m54971r()) {
            return;
        }
        int i = 0;
        while (true) {
            TrackSelectorResult trackSelectorResult = this.f74443n;
            if (i >= trackSelectorResult.length) {
                return;
            }
            boolean isRendererEnabled = trackSelectorResult.isRendererEnabled(i);
            ExoTrackSelection exoTrackSelection = this.f74443n.selections[i];
            if (isRendererEnabled && exoTrackSelection != null) {
                exoTrackSelection.enable();
            }
            i++;
        }
    }

    /* renamed from: i */
    public long m54962i() {
        if (!this.f74433d) {
            return this.f74435f.f75531b;
        }
        long bufferedPositionUs = this.f74434e ? this.f74430a.getBufferedPositionUs() : Long.MIN_VALUE;
        return bufferedPositionUs == Long.MIN_VALUE ? this.f74435f.f75534e : bufferedPositionUs;
    }

    @Nullable
    /* renamed from: j */
    public jlj m54963j() {
        return this.f74441l;
    }

    /* renamed from: k */
    public long m54964k() {
        if (this.f74433d) {
            return this.f74430a.getNextLoadPositionUs();
        }
        return 0L;
    }

    /* renamed from: l */
    public long m54965l() {
        return this.f74444o;
    }

    /* renamed from: m */
    public long m54966m() {
        return this.f74435f.f75531b + this.f74444o;
    }

    /* renamed from: n */
    public TrackGroupArray m54967n() {
        return this.f74442m;
    }

    /* renamed from: o */
    public TrackSelectorResult m54968o() {
        return this.f74443n;
    }

    /* renamed from: p */
    public void m54969p(float f, Timeline timeline) throws ExoPlaybackException {
        this.f74433d = true;
        this.f74442m = this.f74430a.getTrackGroups();
        TrackSelectorResult m54974v = m54974v(f, timeline);
        klj kljVar = this.f74435f;
        long j = kljVar.f75531b;
        long j2 = kljVar.f75534e;
        if (j2 != C4649C.TIME_UNSET && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        long m54955a = m54955a(m54974v, j, false);
        long j3 = this.f74444o;
        klj kljVar2 = this.f74435f;
        this.f74444o = j3 + (kljVar2.f75531b - m54955a);
        this.f74435f = kljVar2.m55230b(m54955a);
    }

    /* renamed from: q */
    public boolean m54970q() {
        return this.f74433d && (!this.f74434e || this.f74430a.getBufferedPositionUs() == Long.MIN_VALUE);
    }

    /* renamed from: r */
    public final boolean m54971r() {
        return this.f74441l == null;
    }

    /* renamed from: s */
    public void m54972s(long j) {
        Assertions.checkState(m54971r());
        if (this.f74433d) {
            this.f74430a.reevaluateBuffer(m54977y(j));
        }
    }

    /* renamed from: t */
    public void m54973t() {
        m54959f();
        m54953u(this.f74440k, this.f74430a);
    }

    /* renamed from: v */
    public TrackSelectorResult m54974v(float f, Timeline timeline) throws ExoPlaybackException {
        TrackSelectorResult selectTracks = this.f74439j.selectTracks(this.f74438i, m54967n(), this.f74435f.f75530a, timeline);
        for (ExoTrackSelection exoTrackSelection : selectTracks.selections) {
            if (exoTrackSelection != null) {
                exoTrackSelection.onPlaybackSpeed(f);
            }
        }
        return selectTracks;
    }

    /* renamed from: w */
    public void m54975w(@Nullable jlj jljVar) {
        if (jljVar == this.f74441l) {
            return;
        }
        m54959f();
        this.f74441l = jljVar;
        m54961h();
    }

    /* renamed from: x */
    public void m54976x(long j) {
        this.f74444o = j;
    }

    /* renamed from: y */
    public long m54977y(long j) {
        return j - m54965l();
    }

    /* renamed from: z */
    public long m54978z(long j) {
        return j + m54965l();
    }
}
