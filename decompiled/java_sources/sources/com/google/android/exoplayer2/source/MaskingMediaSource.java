package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ads.AdPlaybackState;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Util;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class MaskingMediaSource extends CompositeMediaSource<Void> {

    /* renamed from: o */
    public final MediaSource f25266o;

    /* renamed from: p */
    public final boolean f25267p;

    /* renamed from: q */
    public final Timeline.Window f25268q;

    /* renamed from: r */
    public final Timeline.Period f25269r;

    /* renamed from: s */
    public C4838a f25270s;

    /* renamed from: t */
    @Nullable
    public MaskingMediaPeriod f25271t;

    /* renamed from: u */
    public boolean f25272u;

    /* renamed from: v */
    public boolean f25273v;

    /* renamed from: w */
    public boolean f25274w;

    @VisibleForTesting
    /* loaded from: classes5.dex */
    public static final class PlaceholderTimeline extends Timeline {

        /* renamed from: h */
        public final MediaItem f25275h;

        public PlaceholderTimeline(MediaItem mediaItem) {
            this.f25275h = mediaItem;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            return obj == C4838a.f25276j ? 0 : -1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            period.set(z ? 0 : null, z ? C4838a.f25276j : null, 0, C4649C.TIME_UNSET, 0L, AdPlaybackState.NONE, true);
            return period;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Object getUidOfPeriod(int i) {
            return C4838a.f25276j;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
            window.set(Timeline.Window.SINGLE_WINDOW_UID, this.f25275h, null, C4649C.TIME_UNSET, C4649C.TIME_UNSET, C4649C.TIME_UNSET, false, true, null, 0L, C4649C.TIME_UNSET, 0, 0, 0L);
            window.isPlaceholder = true;
            return window;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return 1;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.MaskingMediaSource$a */
    /* loaded from: classes5.dex */
    public static final class C4838a extends ForwardingTimeline {

        /* renamed from: j */
        public static final Object f25276j = new Object();

        /* renamed from: h */
        @Nullable
        public final Object f25277h;

        /* renamed from: i */
        @Nullable
        public final Object f25278i;

        public C4838a(Timeline timeline, @Nullable Object obj, @Nullable Object obj2) {
            super(timeline);
            this.f25277h = obj;
            this.f25278i = obj2;
        }

        /* renamed from: h */
        public static C4838a m19657h(MediaItem mediaItem) {
            return new C4838a(new PlaceholderTimeline(mediaItem), Timeline.Window.SINGLE_WINDOW_UID, f25276j);
        }

        /* renamed from: i */
        public static C4838a m19658i(Timeline timeline, @Nullable Object obj, @Nullable Object obj2) {
            return new C4838a(timeline, obj, obj2);
        }

        /* renamed from: g */
        public C4838a m19659g(Timeline timeline) {
            return new C4838a(timeline, this.f25277h, this.f25278i);
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            Object obj2;
            Timeline timeline = this.timeline;
            if (f25276j.equals(obj) && (obj2 = this.f25278i) != null) {
                obj = obj2;
            }
            return timeline.getIndexOfPeriod(obj);
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            this.timeline.getPeriod(i, period, z);
            if (Util.areEqual(period.uid, this.f25278i) && z) {
                period.uid = f25276j;
            }
            return period;
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public Object getUidOfPeriod(int i) {
            Object uidOfPeriod = this.timeline.getUidOfPeriod(i);
            return Util.areEqual(uidOfPeriod, this.f25278i) ? f25276j : uidOfPeriod;
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
            this.timeline.getWindow(i, window, j);
            if (Util.areEqual(window.uid, this.f25277h)) {
                window.uid = Timeline.Window.SINGLE_WINDOW_UID;
            }
            return window;
        }

        /* renamed from: j */
        public Timeline m19660j() {
            return this.timeline;
        }
    }

    public MaskingMediaSource(MediaSource mediaSource, boolean z) {
        this.f25266o = mediaSource;
        this.f25267p = z && mediaSource.isSingleWindow();
        this.f25268q = new Timeline.Window();
        this.f25269r = new Timeline.Period();
        Timeline initialTimeline = mediaSource.getInitialTimeline();
        if (initialTimeline == null) {
            this.f25270s = C4838a.m19657h(mediaSource.getMediaItem());
        } else {
            this.f25270s = C4838a.m19658i(initialTimeline, null, null);
            this.f25274w = true;
        }
    }

    /* renamed from: c */
    public final Object m19653c(Object obj) {
        return (this.f25270s.f25278i == null || !this.f25270s.f25278i.equals(obj)) ? obj : C4838a.f25276j;
    }

    /* renamed from: d */
    public final Object m19654d(Object obj) {
        return (this.f25270s.f25278i == null || !obj.equals(C4838a.f25276j)) ? obj : this.f25270s.f25278i;
    }

    @RequiresNonNull({"unpreparedMaskingMediaPeriod"})
    /* renamed from: e */
    public final void m19655e(long j) {
        MaskingMediaPeriod maskingMediaPeriod = this.f25271t;
        int indexOfPeriod = this.f25270s.getIndexOfPeriod(maskingMediaPeriod.f25262id.periodUid);
        if (indexOfPeriod == -1) {
            return;
        }
        long j2 = this.f25270s.getPeriod(indexOfPeriod, this.f25269r).durationUs;
        if (j2 != C4649C.TIME_UNSET && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        maskingMediaPeriod.overridePreparePositionUs(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.f25266o.getMediaItem();
    }

    public Timeline getTimeline() {
        return this.f25270s;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        if (this.f25267p) {
            return;
        }
        this.f25272u = true;
        prepareChildSource(null, this.f25266o);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((MaskingMediaPeriod) mediaPeriod).releasePeriod();
        if (mediaPeriod == this.f25271t) {
            this.f25271t = null;
        }
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        this.f25273v = false;
        this.f25272u = false;
        super.releaseSourceInternal();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MaskingMediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        MaskingMediaPeriod maskingMediaPeriod = new MaskingMediaPeriod(mediaPeriodId, allocator, j);
        maskingMediaPeriod.setMediaSource(this.f25266o);
        if (this.f25273v) {
            maskingMediaPeriod.createPeriod(mediaPeriodId.copyWithPeriodUid(m19654d(mediaPeriodId.periodUid)));
        } else {
            this.f25271t = maskingMediaPeriod;
            if (!this.f25272u) {
                this.f25272u = true;
                prepareChildSource(null, this.f25266o);
            }
        }
        return maskingMediaPeriod;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    @Nullable
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(Void r1, MediaSource.MediaPeriodId mediaPeriodId) {
        return mediaPeriodId.copyWithPeriodUid(m19653c(mediaPeriodId.periodUid));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00bb  */
    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m19597b(java.lang.Void r13, com.google.android.exoplayer2.source.MediaSource r14, com.google.android.exoplayer2.Timeline r15) {
        /*
            r12 = this;
            boolean r13 = r12.f25273v
            if (r13 == 0) goto L19
            com.google.android.exoplayer2.source.MaskingMediaSource$a r13 = r12.f25270s
            com.google.android.exoplayer2.source.MaskingMediaSource$a r13 = r13.m19659g(r15)
            r12.f25270s = r13
            com.google.android.exoplayer2.source.MaskingMediaPeriod r13 = r12.f25271t
            if (r13 == 0) goto Lae
            long r13 = r13.getPreparePositionOverrideUs()
            r12.m19655e(r13)
            goto Lae
        L19:
            boolean r13 = r15.isEmpty()
            if (r13 == 0) goto L36
            boolean r13 = r12.f25274w
            if (r13 == 0) goto L2a
            com.google.android.exoplayer2.source.MaskingMediaSource$a r13 = r12.f25270s
            com.google.android.exoplayer2.source.MaskingMediaSource$a r13 = r13.m19659g(r15)
            goto L32
        L2a:
            java.lang.Object r13 = com.google.android.exoplayer2.Timeline.Window.SINGLE_WINDOW_UID
            java.lang.Object r14 = com.google.android.exoplayer2.source.MaskingMediaSource.C4838a.f25276j
            com.google.android.exoplayer2.source.MaskingMediaSource$a r13 = com.google.android.exoplayer2.source.MaskingMediaSource.C4838a.m19658i(r15, r13, r14)
        L32:
            r12.f25270s = r13
            goto Lae
        L36:
            com.google.android.exoplayer2.Timeline$Window r13 = r12.f25268q
            r14 = 0
            r15.getWindow(r14, r13)
            com.google.android.exoplayer2.Timeline$Window r13 = r12.f25268q
            long r0 = r13.getDefaultPositionUs()
            com.google.android.exoplayer2.Timeline$Window r13 = r12.f25268q
            java.lang.Object r13 = r13.uid
            com.google.android.exoplayer2.source.MaskingMediaPeriod r2 = r12.f25271t
            if (r2 == 0) goto L74
            long r2 = r2.getPreparePositionUs()
            com.google.android.exoplayer2.source.MaskingMediaSource$a r4 = r12.f25270s
            com.google.android.exoplayer2.source.MaskingMediaPeriod r5 = r12.f25271t
            com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r5 = r5.f25262id
            java.lang.Object r5 = r5.periodUid
            com.google.android.exoplayer2.Timeline$Period r6 = r12.f25269r
            r4.getPeriodByUid(r5, r6)
            com.google.android.exoplayer2.Timeline$Period r4 = r12.f25269r
            long r4 = r4.getPositionInWindowUs()
            long r4 = r4 + r2
            com.google.android.exoplayer2.source.MaskingMediaSource$a r2 = r12.f25270s
            com.google.android.exoplayer2.Timeline$Window r3 = r12.f25268q
            com.google.android.exoplayer2.Timeline$Window r14 = r2.getWindow(r14, r3)
            long r2 = r14.getDefaultPositionUs()
            int r14 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r14 == 0) goto L74
            r10 = r4
            goto L75
        L74:
            r10 = r0
        L75:
            com.google.android.exoplayer2.Timeline$Window r7 = r12.f25268q
            com.google.android.exoplayer2.Timeline$Period r8 = r12.f25269r
            r9 = 0
            r6 = r15
            android.util.Pair r14 = r6.getPeriodPositionUs(r7, r8, r9, r10)
            java.lang.Object r0 = r14.first
            java.lang.Object r14 = r14.second
            java.lang.Long r14 = (java.lang.Long) r14
            long r1 = r14.longValue()
            boolean r14 = r12.f25274w
            if (r14 == 0) goto L94
            com.google.android.exoplayer2.source.MaskingMediaSource$a r13 = r12.f25270s
            com.google.android.exoplayer2.source.MaskingMediaSource$a r13 = r13.m19659g(r15)
            goto L98
        L94:
            com.google.android.exoplayer2.source.MaskingMediaSource$a r13 = com.google.android.exoplayer2.source.MaskingMediaSource.C4838a.m19658i(r15, r13, r0)
        L98:
            r12.f25270s = r13
            com.google.android.exoplayer2.source.MaskingMediaPeriod r13 = r12.f25271t
            if (r13 == 0) goto Lae
            r12.m19655e(r1)
            com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r13 = r13.f25262id
            java.lang.Object r14 = r13.periodUid
            java.lang.Object r14 = r12.m19654d(r14)
            com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r13 = r13.copyWithPeriodUid(r14)
            goto Laf
        Lae:
            r13 = 0
        Laf:
            r14 = 1
            r12.f25274w = r14
            r12.f25273v = r14
            com.google.android.exoplayer2.source.MaskingMediaSource$a r14 = r12.f25270s
            r12.refreshSourceInfo(r14)
            if (r13 == 0) goto Lc6
            com.google.android.exoplayer2.source.MaskingMediaPeriod r12 = r12.f25271t
            java.lang.Object r12 = com.google.android.exoplayer2.util.Assertions.checkNotNull(r12)
            com.google.android.exoplayer2.source.MaskingMediaPeriod r12 = (com.google.android.exoplayer2.source.MaskingMediaPeriod) r12
            r12.createPeriod(r13)
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.MaskingMediaSource.m19597b(java.lang.Void, com.google.android.exoplayer2.source.MediaSource, com.google.android.exoplayer2.Timeline):void");
    }
}
