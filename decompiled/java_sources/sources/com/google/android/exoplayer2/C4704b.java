package com.google.android.exoplayer2;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4704b;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsCollector;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.util.Assertions;
import com.google.common.collect.ImmutableList;
import com.sunia.HTREnginev2.jlj;
import com.sunia.HTREnginev2.klj;
import com.sunia.HTREnginev2.o4l;

/* renamed from: com.google.android.exoplayer2.b */
/* loaded from: classes5.dex */
public final class C4704b {

    /* renamed from: n */
    public static final long f23302n = 1000000000000L;

    /* renamed from: o */
    public static final int f23303o = 100;

    /* renamed from: a */
    public final Timeline.Period f23304a = new Timeline.Period();

    /* renamed from: b */
    public final Timeline.Window f23305b = new Timeline.Window();

    /* renamed from: c */
    public final AnalyticsCollector f23306c;

    /* renamed from: d */
    public final Handler f23307d;

    /* renamed from: e */
    public long f23308e;

    /* renamed from: f */
    public int f23309f;

    /* renamed from: g */
    public boolean f23310g;

    /* renamed from: h */
    @Nullable
    public jlj f23311h;

    /* renamed from: i */
    @Nullable
    public jlj f23312i;

    /* renamed from: j */
    @Nullable
    public jlj f23313j;

    /* renamed from: k */
    public int f23314k;

    /* renamed from: l */
    @Nullable
    public Object f23315l;

    /* renamed from: m */
    public long f23316m;

    public C4704b(AnalyticsCollector analyticsCollector, Handler handler) {
        this.f23306c = analyticsCollector;
        this.f23307d = handler;
    }

    /* renamed from: B */
    public static MediaSource.MediaPeriodId m18597B(Timeline timeline, Object obj, long j, long j2, Timeline.Window window, Timeline.Period period) {
        timeline.getPeriodByUid(obj, period);
        timeline.getWindow(period.windowIndex, window);
        int indexOfPeriod = timeline.getIndexOfPeriod(obj);
        Object obj2 = obj;
        while (period.durationUs == 0 && period.getAdGroupCount() > 0 && period.isServerSideInsertedAdGroup(period.getRemovedAdGroupCount()) && period.getAdGroupIndexForPositionUs(0L) == -1) {
            int i = indexOfPeriod + 1;
            if (indexOfPeriod >= window.lastPeriodIndex) {
                break;
            }
            timeline.getPeriod(i, period, true);
            obj2 = Assertions.checkNotNull(period.uid);
            indexOfPeriod = i;
        }
        timeline.getPeriodByUid(obj2, period);
        int adGroupIndexForPositionUs = period.getAdGroupIndexForPositionUs(j);
        return adGroupIndexForPositionUs == -1 ? new MediaSource.MediaPeriodId(obj2, j2, period.getAdGroupIndexAfterPositionUs(j)) : new MediaSource.MediaPeriodId(obj2, adGroupIndexForPositionUs, period.getFirstAdIndexToPlay(adGroupIndexForPositionUs), j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public /* synthetic */ void m18599w(ImmutableList.Builder builder, MediaSource.MediaPeriodId mediaPeriodId) {
        this.f23306c.updateMediaPeriodQueueInfo(builder.build(), mediaPeriodId);
    }

    /* renamed from: A */
    public MediaSource.MediaPeriodId m18600A(Timeline timeline, Object obj, long j) {
        return m18597B(timeline, obj, j, m18602D(timeline, obj), this.f23305b, this.f23304a);
    }

    /* renamed from: C */
    public MediaSource.MediaPeriodId m18601C(Timeline timeline, Object obj, long j) {
        long m18602D = m18602D(timeline, obj);
        timeline.getPeriodByUid(obj, this.f23304a);
        timeline.getWindow(this.f23304a.windowIndex, this.f23305b);
        boolean z = false;
        for (int indexOfPeriod = timeline.getIndexOfPeriod(obj); indexOfPeriod >= this.f23305b.firstPeriodIndex; indexOfPeriod--) {
            timeline.getPeriod(indexOfPeriod, this.f23304a, true);
            boolean z2 = this.f23304a.getAdGroupCount() > 0;
            z |= z2;
            Timeline.Period period = this.f23304a;
            if (period.getAdGroupIndexForPositionUs(period.durationUs) != -1) {
                obj = Assertions.checkNotNull(this.f23304a.uid);
            }
            if (z && (!z2 || this.f23304a.durationUs != 0)) {
                break;
            }
        }
        return m18597B(timeline, obj, j, m18602D, this.f23305b, this.f23304a);
    }

    /* renamed from: D */
    public final long m18602D(Timeline timeline, Object obj) {
        int indexOfPeriod;
        int i = timeline.getPeriodByUid(obj, this.f23304a).windowIndex;
        Object obj2 = this.f23315l;
        if (obj2 != null && (indexOfPeriod = timeline.getIndexOfPeriod(obj2)) != -1 && timeline.getPeriod(indexOfPeriod, this.f23304a).windowIndex == i) {
            return this.f23316m;
        }
        for (jlj jljVar = this.f23311h; jljVar != null; jljVar = jljVar.m54963j()) {
            if (jljVar.f74431b.equals(obj)) {
                return jljVar.f74435f.f75530a.windowSequenceNumber;
            }
        }
        for (jlj jljVar2 = this.f23311h; jljVar2 != null; jljVar2 = jljVar2.m54963j()) {
            int indexOfPeriod2 = timeline.getIndexOfPeriod(jljVar2.f74431b);
            if (indexOfPeriod2 != -1 && timeline.getPeriod(indexOfPeriod2, this.f23304a).windowIndex == i) {
                return jljVar2.f74435f.f75530a.windowSequenceNumber;
            }
        }
        long j = this.f23308e;
        this.f23308e = 1 + j;
        if (this.f23311h == null) {
            this.f23315l = obj;
            this.f23316m = j;
        }
        return j;
    }

    /* renamed from: E */
    public boolean m18603E() {
        jlj jljVar = this.f23313j;
        return jljVar == null || (!jljVar.f74435f.f75538i && jljVar.m54970q() && this.f23313j.f74435f.f75534e != C4649C.TIME_UNSET && this.f23314k < 100);
    }

    /* renamed from: F */
    public final boolean m18604F(Timeline timeline) {
        jlj jljVar = this.f23311h;
        if (jljVar == null) {
            return true;
        }
        int indexOfPeriod = timeline.getIndexOfPeriod(jljVar.f74431b);
        while (true) {
            indexOfPeriod = timeline.getNextPeriodIndex(indexOfPeriod, this.f23304a, this.f23305b, this.f23309f, this.f23310g);
            while (jljVar.m54963j() != null && !jljVar.f74435f.f75536g) {
                jljVar = jljVar.m54963j();
            }
            jlj m54963j = jljVar.m54963j();
            if (indexOfPeriod == -1 || m54963j == null || timeline.getIndexOfPeriod(m54963j.f74431b) != indexOfPeriod) {
                break;
            }
            jljVar = m54963j;
        }
        boolean m18631z = m18631z(jljVar);
        jljVar.f74435f = m18624r(timeline, jljVar.f74435f);
        return !m18631z;
    }

    /* renamed from: G */
    public boolean m18605G(Timeline timeline, long j, long j2) {
        klj kljVar;
        jlj jljVar = this.f23311h;
        jlj jljVar2 = null;
        while (jljVar != null) {
            klj kljVar2 = jljVar.f74435f;
            if (jljVar2 != null) {
                klj m18615i = m18615i(timeline, jljVar2, j);
                if (m18615i != null && m18611e(kljVar2, m18615i)) {
                    kljVar = m18615i;
                }
                return !m18631z(jljVar2);
            }
            kljVar = m18624r(timeline, kljVar2);
            jljVar.f74435f = kljVar.m55229a(kljVar2.f75532c);
            if (!m18610d(kljVar2.f75534e, kljVar.f75534e)) {
                jljVar.m54954A();
                long j3 = kljVar.f75534e;
                return (m18631z(jljVar) || (jljVar == this.f23312i && !jljVar.f74435f.f75535f && ((j2 > Long.MIN_VALUE ? 1 : (j2 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j2 > ((j3 > C4649C.TIME_UNSET ? 1 : (j3 == C4649C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : jljVar.m54978z(j3)) ? 1 : (j2 == ((j3 > C4649C.TIME_UNSET ? 1 : (j3 == C4649C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : jljVar.m54978z(j3)) ? 0 : -1)) >= 0))) ? false : true;
            }
            jljVar2 = jljVar;
            jljVar = jljVar.m54963j();
        }
        return true;
    }

    /* renamed from: H */
    public boolean m18606H(Timeline timeline, int i) {
        this.f23309f = i;
        return m18604F(timeline);
    }

    /* renamed from: I */
    public boolean m18607I(Timeline timeline, boolean z) {
        this.f23310g = z;
        return m18604F(timeline);
    }

    @Nullable
    /* renamed from: b */
    public jlj m18608b() {
        jlj jljVar = this.f23311h;
        if (jljVar == null) {
            return null;
        }
        if (jljVar == this.f23312i) {
            this.f23312i = jljVar.m54963j();
        }
        this.f23311h.m54973t();
        int i = this.f23314k - 1;
        this.f23314k = i;
        if (i == 0) {
            this.f23313j = null;
            jlj jljVar2 = this.f23311h;
            this.f23315l = jljVar2.f74431b;
            this.f23316m = jljVar2.f74435f.f75530a.windowSequenceNumber;
        }
        this.f23311h = this.f23311h.m54963j();
        m18629x();
        return this.f23311h;
    }

    /* renamed from: c */
    public jlj m18609c() {
        jlj jljVar = this.f23312i;
        Assertions.checkState((jljVar == null || jljVar.m54963j() == null) ? false : true);
        this.f23312i = this.f23312i.m54963j();
        m18629x();
        return this.f23312i;
    }

    /* renamed from: d */
    public final boolean m18610d(long j, long j2) {
        return j == C4649C.TIME_UNSET || j == j2;
    }

    /* renamed from: e */
    public final boolean m18611e(klj kljVar, klj kljVar2) {
        return kljVar.f75531b == kljVar2.f75531b && kljVar.f75530a.equals(kljVar2.f75530a);
    }

    /* renamed from: f */
    public void m18612f() {
        if (this.f23314k == 0) {
            return;
        }
        jlj jljVar = (jlj) Assertions.checkStateNotNull(this.f23311h);
        this.f23315l = jljVar.f74431b;
        this.f23316m = jljVar.f74435f.f75530a.windowSequenceNumber;
        while (jljVar != null) {
            jljVar.m54973t();
            jljVar = jljVar.m54963j();
        }
        this.f23311h = null;
        this.f23313j = null;
        this.f23312i = null;
        this.f23314k = 0;
        m18629x();
    }

    /* renamed from: g */
    public jlj m18613g(RendererCapabilities[] rendererCapabilitiesArr, TrackSelector trackSelector, Allocator allocator, MediaSourceList mediaSourceList, klj kljVar, TrackSelectorResult trackSelectorResult) {
        jlj jljVar = this.f23313j;
        jlj jljVar2 = new jlj(rendererCapabilitiesArr, jljVar == null ? 1000000000000L : (jljVar.m54965l() + this.f23313j.f74435f.f75534e) - kljVar.f75531b, trackSelector, allocator, mediaSourceList, kljVar, trackSelectorResult);
        jlj jljVar3 = this.f23313j;
        if (jljVar3 != null) {
            jljVar3.m54975w(jljVar2);
        } else {
            this.f23311h = jljVar2;
            this.f23312i = jljVar2;
        }
        this.f23315l = null;
        this.f23313j = jljVar2;
        this.f23314k++;
        m18629x();
        return jljVar2;
    }

    @Nullable
    /* renamed from: h */
    public final klj m18614h(o4l o4lVar) {
        return m18617k(o4lVar.f79306a, o4lVar.f79307b, o4lVar.f79308c, o4lVar.f79324s);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00cc, code lost:
    
        if (r1.isServerSideInsertedAdGroup(r1.getRemovedAdGroupCount()) != false) goto L30;
     */
    @androidx.annotation.Nullable
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.sunia.HTREnginev2.klj m18615i(com.google.android.exoplayer2.Timeline r20, com.sunia.HTREnginev2.jlj r21, long r22) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C4704b.m18615i(com.google.android.exoplayer2.Timeline, com.sunia.HTREnginev2.jlj, long):com.sunia.HTREnginev2.klj");
    }

    @Nullable
    /* renamed from: j */
    public jlj m18616j() {
        return this.f23313j;
    }

    @Nullable
    /* renamed from: k */
    public final klj m18617k(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j, long j2) {
        timeline.getPeriodByUid(mediaPeriodId.periodUid, this.f23304a);
        return mediaPeriodId.isAd() ? m18618l(timeline, mediaPeriodId.periodUid, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, j, mediaPeriodId.windowSequenceNumber) : m18619m(timeline, mediaPeriodId.periodUid, j2, j, mediaPeriodId.windowSequenceNumber);
    }

    /* renamed from: l */
    public final klj m18618l(Timeline timeline, Object obj, int i, int i2, long j, long j2) {
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(obj, i, i2, j2);
        long adDurationUs = timeline.getPeriodByUid(mediaPeriodId.periodUid, this.f23304a).getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
        long adResumePositionUs = i2 == this.f23304a.getFirstAdIndexToPlay(i) ? this.f23304a.getAdResumePositionUs() : 0L;
        return new klj(mediaPeriodId, (adDurationUs == C4649C.TIME_UNSET || adResumePositionUs < adDurationUs) ? adResumePositionUs : Math.max(0L, adDurationUs - 1), j, C4649C.TIME_UNSET, adDurationUs, this.f23304a.isServerSideInsertedAdGroup(mediaPeriodId.adGroupIndex), false, false, false);
    }

    /* renamed from: m */
    public final klj m18619m(Timeline timeline, Object obj, long j, long j2, long j3) {
        boolean z;
        long j4;
        long j5;
        timeline.getPeriodByUid(obj, this.f23304a);
        int adGroupIndexAfterPositionUs = this.f23304a.getAdGroupIndexAfterPositionUs(j);
        if (adGroupIndexAfterPositionUs == -1) {
            if (this.f23304a.getAdGroupCount() > 0) {
                Timeline.Period period = this.f23304a;
                if (period.isServerSideInsertedAdGroup(period.getRemovedAdGroupCount())) {
                    z = true;
                }
            }
            z = false;
        } else {
            if (this.f23304a.isServerSideInsertedAdGroup(adGroupIndexAfterPositionUs)) {
                long adGroupTimeUs = this.f23304a.getAdGroupTimeUs(adGroupIndexAfterPositionUs);
                Timeline.Period period2 = this.f23304a;
                if (adGroupTimeUs == period2.durationUs && period2.hasPlayedAdGroup(adGroupIndexAfterPositionUs)) {
                    z = true;
                    adGroupIndexAfterPositionUs = -1;
                }
            }
            z = false;
        }
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(obj, j3, adGroupIndexAfterPositionUs);
        boolean m18625s = m18625s(mediaPeriodId);
        boolean m18627u = m18627u(timeline, mediaPeriodId);
        boolean m18626t = m18626t(timeline, mediaPeriodId, m18625s);
        boolean z2 = adGroupIndexAfterPositionUs != -1 && this.f23304a.isServerSideInsertedAdGroup(adGroupIndexAfterPositionUs);
        if (adGroupIndexAfterPositionUs != -1) {
            j5 = this.f23304a.getAdGroupTimeUs(adGroupIndexAfterPositionUs);
        } else {
            if (!z) {
                j4 = -9223372036854775807L;
                long j6 = (j4 != C4649C.TIME_UNSET || j4 == Long.MIN_VALUE) ? this.f23304a.durationUs : j4;
                return new klj(mediaPeriodId, (j6 != C4649C.TIME_UNSET || j < j6) ? j : Math.max(0L, j6 - 1), j2, j4, j6, z2, m18625s, m18627u, m18626t);
            }
            j5 = this.f23304a.durationUs;
        }
        j4 = j5;
        if (j4 != C4649C.TIME_UNSET) {
        }
        return new klj(mediaPeriodId, (j6 != C4649C.TIME_UNSET || j < j6) ? j : Math.max(0L, j6 - 1), j2, j4, j6, z2, m18625s, m18627u, m18626t);
    }

    /* renamed from: n */
    public final long m18620n(Timeline timeline, Object obj, int i) {
        timeline.getPeriodByUid(obj, this.f23304a);
        long adGroupTimeUs = this.f23304a.getAdGroupTimeUs(i);
        return adGroupTimeUs == Long.MIN_VALUE ? this.f23304a.durationUs : adGroupTimeUs + this.f23304a.getContentResumeOffsetUs(i);
    }

    @Nullable
    /* renamed from: o */
    public klj m18621o(long j, o4l o4lVar) {
        jlj jljVar = this.f23313j;
        return jljVar == null ? m18614h(o4lVar) : m18615i(o4lVar.f79306a, jljVar, j);
    }

    @Nullable
    /* renamed from: p */
    public jlj m18622p() {
        return this.f23311h;
    }

    @Nullable
    /* renamed from: q */
    public jlj m18623q() {
        return this.f23312i;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006c  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sunia.HTREnginev2.klj m18624r(com.google.android.exoplayer2.Timeline r19, com.sunia.HTREnginev2.klj r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r3 = r2.f75530a
            boolean r11 = r0.m18625s(r3)
            boolean r12 = r0.m18627u(r1, r3)
            boolean r13 = r0.m18626t(r1, r3, r11)
            com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r4 = r2.f75530a
            java.lang.Object r4 = r4.periodUid
            com.google.android.exoplayer2.Timeline$Period r5 = r0.f23304a
            r1.getPeriodByUid(r4, r5)
            boolean r1 = r3.isAd()
            r4 = -1
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L35
            int r1 = r3.nextAdGroupIndex
            if (r1 != r4) goto L2e
            goto L35
        L2e:
            com.google.android.exoplayer2.Timeline$Period r7 = r0.f23304a
            long r7 = r7.getAdGroupTimeUs(r1)
            goto L36
        L35:
            r7 = r5
        L36:
            boolean r1 = r3.isAd()
            if (r1 == 0) goto L48
            com.google.android.exoplayer2.Timeline$Period r1 = r0.f23304a
            int r5 = r3.adGroupIndex
            int r6 = r3.adIndexInAdGroup
            long r5 = r1.getAdDurationUs(r5, r6)
        L46:
            r9 = r5
            goto L5c
        L48:
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 == 0) goto L55
            r5 = -9223372036854775808
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 != 0) goto L53
            goto L55
        L53:
            r9 = r7
            goto L5c
        L55:
            com.google.android.exoplayer2.Timeline$Period r1 = r0.f23304a
            long r5 = r1.getDurationUs()
            goto L46
        L5c:
            boolean r1 = r3.isAd()
            if (r1 == 0) goto L6c
            com.google.android.exoplayer2.Timeline$Period r0 = r0.f23304a
            int r1 = r3.adGroupIndex
            boolean r0 = r0.isServerSideInsertedAdGroup(r1)
        L6a:
            r14 = r0
            goto L7c
        L6c:
            int r1 = r3.nextAdGroupIndex
            if (r1 == r4) goto L7a
            com.google.android.exoplayer2.Timeline$Period r0 = r0.f23304a
            boolean r0 = r0.isServerSideInsertedAdGroup(r1)
            if (r0 == 0) goto L7a
            r0 = 1
            goto L6a
        L7a:
            r0 = 0
            goto L6a
        L7c:
            com.sunia.HTREnginev2.klj r15 = new com.sunia.HTREnginev2.klj
            long r4 = r2.f75531b
            long r1 = r2.f75532c
            r0 = r15
            r16 = r1
            r1 = r3
            r2 = r4
            r4 = r16
            r6 = r7
            r8 = r9
            r10 = r14
            r0.<init>(r1, r2, r4, r6, r8, r10, r11, r12, r13)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C4704b.m18624r(com.google.android.exoplayer2.Timeline, com.sunia.HTREnginev2.klj):com.sunia.HTREnginev2.klj");
    }

    /* renamed from: s */
    public final boolean m18625s(MediaSource.MediaPeriodId mediaPeriodId) {
        return !mediaPeriodId.isAd() && mediaPeriodId.nextAdGroupIndex == -1;
    }

    /* renamed from: t */
    public final boolean m18626t(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, boolean z) {
        int indexOfPeriod = timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
        return !timeline.getWindow(timeline.getPeriod(indexOfPeriod, this.f23304a).windowIndex, this.f23305b).isDynamic && timeline.isLastPeriod(indexOfPeriod, this.f23304a, this.f23305b, this.f23309f, this.f23310g) && z;
    }

    /* renamed from: u */
    public final boolean m18627u(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        if (m18625s(mediaPeriodId)) {
            return timeline.getWindow(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.f23304a).windowIndex, this.f23305b).lastPeriodIndex == timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
        }
        return false;
    }

    /* renamed from: v */
    public boolean m18628v(MediaPeriod mediaPeriod) {
        jlj jljVar = this.f23313j;
        return jljVar != null && jljVar.f74430a == mediaPeriod;
    }

    /* renamed from: x */
    public final void m18629x() {
        final ImmutableList.Builder builder = ImmutableList.builder();
        for (jlj jljVar = this.f23311h; jljVar != null; jljVar = jljVar.m54963j()) {
            builder.add((ImmutableList.Builder) jljVar.f74435f.f75530a);
        }
        jlj jljVar2 = this.f23312i;
        final MediaSource.MediaPeriodId mediaPeriodId = jljVar2 == null ? null : jljVar2.f74435f.f75530a;
        this.f23307d.post(new Runnable() { // from class: com.sunia.HTREnginev2.llj
            @Override // java.lang.Runnable
            public final void run() {
                C4704b.this.m18599w(builder, mediaPeriodId);
            }
        });
    }

    /* renamed from: y */
    public void m18630y(long j) {
        jlj jljVar = this.f23313j;
        if (jljVar != null) {
            jljVar.m54972s(j);
        }
    }

    /* renamed from: z */
    public boolean m18631z(jlj jljVar) {
        boolean z = false;
        Assertions.checkState(jljVar != null);
        if (jljVar.equals(this.f23313j)) {
            return false;
        }
        this.f23313j = jljVar;
        while (jljVar.m54963j() != null) {
            jljVar = jljVar.m54963j();
            if (jljVar == this.f23312i) {
                this.f23312i = this.f23311h;
                z = true;
            }
            jljVar.m54973t();
            this.f23314k--;
        }
        this.f23313j.m54975w(null);
        m18629x();
        return z;
    }
}
