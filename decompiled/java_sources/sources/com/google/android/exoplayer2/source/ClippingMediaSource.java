package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class ClippingMediaSource extends CompositeMediaSource<Void> {

    /* renamed from: o */
    public final MediaSource f25159o;

    /* renamed from: p */
    public final long f25160p;

    /* renamed from: q */
    public final long f25161q;

    /* renamed from: r */
    public final boolean f25162r;

    /* renamed from: s */
    public final boolean f25163s;

    /* renamed from: t */
    public final boolean f25164t;

    /* renamed from: u */
    public final ArrayList<ClippingMediaPeriod> f25165u;

    /* renamed from: v */
    public final Timeline.Window f25166v;

    /* renamed from: w */
    @Nullable
    public C4825a f25167w;

    /* renamed from: x */
    @Nullable
    public IllegalClippingException f25168x;

    /* renamed from: y */
    public long f25169y;

    /* renamed from: z */
    public long f25170z;

    /* loaded from: classes5.dex */
    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes5.dex */
        public @interface Reason {
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public IllegalClippingException(int r4) {
            /*
                r3 = this;
                java.lang.String r0 = getReasonDescription(r4)
                java.lang.String r0 = java.lang.String.valueOf(r0)
                int r1 = r0.length()
                java.lang.String r2 = "Illegal clipping: "
                if (r1 == 0) goto L15
                java.lang.String r0 = r2.concat(r0)
                goto L1a
            L15:
                java.lang.String r0 = new java.lang.String
                r0.<init>(r2)
            L1a:
                r3.<init>(r0)
                r3.reason = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.ClippingMediaSource.IllegalClippingException.<init>(int):void");
        }

        private static String getReasonDescription(int i) {
            return i != 0 ? i != 1 ? i != 2 ? "unknown" : "start exceeds end" : "not seekable to start" : "invalid period count";
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ClippingMediaSource$a */
    /* loaded from: classes5.dex */
    public static final class C4825a extends ForwardingTimeline {

        /* renamed from: h */
        public final long f25171h;

        /* renamed from: i */
        public final long f25172i;

        /* renamed from: j */
        public final long f25173j;

        /* renamed from: k */
        public final boolean f25174k;

        public C4825a(Timeline timeline, long j, long j2) throws IllegalClippingException {
            super(timeline);
            boolean z = false;
            if (timeline.getPeriodCount() != 1) {
                throw new IllegalClippingException(0);
            }
            Timeline.Window window = timeline.getWindow(0, new Timeline.Window());
            long max = Math.max(0L, j);
            if (!window.isPlaceholder && max != 0 && !window.isSeekable) {
                throw new IllegalClippingException(1);
            }
            long max2 = j2 == Long.MIN_VALUE ? window.durationUs : Math.max(0L, j2);
            long j3 = window.durationUs;
            if (j3 != C4649C.TIME_UNSET) {
                max2 = max2 > j3 ? j3 : max2;
                if (max > max2) {
                    throw new IllegalClippingException(2);
                }
            }
            this.f25171h = max;
            this.f25172i = max2;
            this.f25173j = max2 == C4649C.TIME_UNSET ? -9223372036854775807L : max2 - max;
            if (window.isDynamic && (max2 == C4649C.TIME_UNSET || (j3 != C4649C.TIME_UNSET && max2 == j3))) {
                z = true;
            }
            this.f25174k = z;
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            this.timeline.getPeriod(0, period, z);
            long positionInWindowUs = period.getPositionInWindowUs() - this.f25171h;
            long j = this.f25173j;
            return period.set(period.f22727id, period.uid, 0, j == C4649C.TIME_UNSET ? -9223372036854775807L : j - positionInWindowUs, positionInWindowUs);
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
            this.timeline.getWindow(0, window, 0L);
            long j2 = window.positionInFirstPeriodUs;
            long j3 = this.f25171h;
            window.positionInFirstPeriodUs = j2 + j3;
            window.durationUs = this.f25173j;
            window.isDynamic = this.f25174k;
            long j4 = window.defaultPositionUs;
            if (j4 != C4649C.TIME_UNSET) {
                long max = Math.max(j4, j3);
                window.defaultPositionUs = max;
                long j5 = this.f25172i;
                if (j5 != C4649C.TIME_UNSET) {
                    max = Math.min(max, j5);
                }
                window.defaultPositionUs = max - this.f25171h;
            }
            long usToMs = Util.usToMs(this.f25171h);
            long j6 = window.presentationStartTimeMs;
            if (j6 != C4649C.TIME_UNSET) {
                window.presentationStartTimeMs = j6 + usToMs;
            }
            long j7 = window.windowStartTimeMs;
            if (j7 != C4649C.TIME_UNSET) {
                window.windowStartTimeMs = j7 + usToMs;
            }
            return window;
        }
    }

    public ClippingMediaSource(MediaSource mediaSource, long j, long j2) {
        this(mediaSource, j, j2, true, false, false);
    }

    /* renamed from: c */
    public final void m19595c(Timeline timeline) {
        long j;
        long j2;
        timeline.getWindow(0, this.f25166v);
        long positionInFirstPeriodUs = this.f25166v.getPositionInFirstPeriodUs();
        if (this.f25167w == null || this.f25165u.isEmpty() || this.f25163s) {
            long j3 = this.f25160p;
            long j4 = this.f25161q;
            if (this.f25164t) {
                long defaultPositionUs = this.f25166v.getDefaultPositionUs();
                j3 += defaultPositionUs;
                j4 += defaultPositionUs;
            }
            this.f25169y = positionInFirstPeriodUs + j3;
            this.f25170z = this.f25161q != Long.MIN_VALUE ? positionInFirstPeriodUs + j4 : Long.MIN_VALUE;
            int size = this.f25165u.size();
            for (int i = 0; i < size; i++) {
                this.f25165u.get(i).updateClipping(this.f25169y, this.f25170z);
            }
            j = j3;
            j2 = j4;
        } else {
            long j5 = this.f25169y - positionInFirstPeriodUs;
            j2 = this.f25161q != Long.MIN_VALUE ? this.f25170z - positionInFirstPeriodUs : Long.MIN_VALUE;
            j = j5;
        }
        try {
            C4825a c4825a = new C4825a(timeline, j, j2);
            this.f25167w = c4825a;
            refreshSourceInfo(c4825a);
        } catch (IllegalClippingException e) {
            this.f25168x = e;
            for (int i2 = 0; i2 < this.f25165u.size(); i2++) {
                this.f25165u.get(i2).setClippingError(this.f25168x);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        ClippingMediaPeriod clippingMediaPeriod = new ClippingMediaPeriod(this.f25159o.createPeriod(mediaPeriodId, allocator, j), this.f25162r, this.f25169y, this.f25170z);
        this.f25165u.add(clippingMediaPeriod);
        return clippingMediaPeriod;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.f25159o.getMediaItem();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        IllegalClippingException illegalClippingException = this.f25168x;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        prepareChildSource(null, this.f25159o);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        Assertions.checkState(this.f25165u.remove(mediaPeriod));
        this.f25159o.releasePeriod(((ClippingMediaPeriod) mediaPeriod).mediaPeriod);
        if (!this.f25165u.isEmpty() || this.f25163s) {
            return;
        }
        m19595c(((C4825a) Assertions.checkNotNull(this.f25167w)).timeline);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        this.f25168x = null;
        this.f25167w = null;
    }

    public ClippingMediaSource(MediaSource mediaSource, long j) {
        this(mediaSource, 0L, j, true, false, true);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void m19597b(Void r1, MediaSource mediaSource, Timeline timeline) {
        if (this.f25168x != null) {
            return;
        }
        m19595c(timeline);
    }

    public ClippingMediaSource(MediaSource mediaSource, long j, long j2, boolean z, boolean z2, boolean z3) {
        Assertions.checkArgument(j >= 0);
        this.f25159o = (MediaSource) Assertions.checkNotNull(mediaSource);
        this.f25160p = j;
        this.f25161q = j2;
        this.f25162r = z;
        this.f25163s = z2;
        this.f25164t = z3;
        this.f25165u = new ArrayList<>();
        this.f25166v = new Timeline.Window();
    }
}
