package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.common.collect.Multimap;
import com.google.common.collect.MultimapBuilder;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
public final class MergingMediaSource extends CompositeMediaSource<Integer> {

    /* renamed from: J */
    public static final MediaItem f25287J = new MediaItem.Builder().setMediaId("MergingMediaSource").build();

    /* renamed from: z */
    public static final int f25288z = -1;

    /* renamed from: o */
    public final boolean f25289o;

    /* renamed from: p */
    public final boolean f25290p;

    /* renamed from: q */
    public final MediaSource[] f25291q;

    /* renamed from: r */
    public final Timeline[] f25292r;

    /* renamed from: s */
    public final ArrayList<MediaSource> f25293s;

    /* renamed from: t */
    public final CompositeSequenceableLoaderFactory f25294t;

    /* renamed from: u */
    public final Map<Object, Long> f25295u;

    /* renamed from: v */
    public final Multimap<Object, ClippingMediaPeriod> f25296v;

    /* renamed from: w */
    public int f25297w;

    /* renamed from: x */
    public long[][] f25298x;

    /* renamed from: y */
    @Nullable
    public IllegalMergeException f25299y;

    /* loaded from: classes5.dex */
    public static final class IllegalMergeException extends IOException {
        public static final int REASON_PERIOD_COUNT_MISMATCH = 0;
        public final int reason;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes5.dex */
        public @interface Reason {
        }

        public IllegalMergeException(int i) {
            this.reason = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.MergingMediaSource$a */
    /* loaded from: classes5.dex */
    public static final class C4841a extends ForwardingTimeline {

        /* renamed from: h */
        public final long[] f25300h;

        /* renamed from: i */
        public final long[] f25301i;

        public C4841a(Timeline timeline, Map<Object, Long> map) {
            super(timeline);
            int windowCount = timeline.getWindowCount();
            this.f25301i = new long[timeline.getWindowCount()];
            Timeline.Window window = new Timeline.Window();
            for (int i = 0; i < windowCount; i++) {
                this.f25301i[i] = timeline.getWindow(i, window).durationUs;
            }
            int periodCount = timeline.getPeriodCount();
            this.f25300h = new long[periodCount];
            Timeline.Period period = new Timeline.Period();
            for (int i2 = 0; i2 < periodCount; i2++) {
                timeline.getPeriod(i2, period, true);
                long longValue = ((Long) Assertions.checkNotNull(map.get(period.uid))).longValue();
                long[] jArr = this.f25300h;
                longValue = longValue == Long.MIN_VALUE ? period.durationUs : longValue;
                jArr[i2] = longValue;
                long j = period.durationUs;
                if (j != C4649C.TIME_UNSET) {
                    long[] jArr2 = this.f25301i;
                    int i3 = period.windowIndex;
                    jArr2[i3] = jArr2[i3] - (j - longValue);
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            super.getPeriod(i, period, z);
            period.durationUs = this.f25300h[i];
            return period;
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
            long j2;
            super.getWindow(i, window, j);
            long j3 = this.f25301i[i];
            window.durationUs = j3;
            if (j3 != C4649C.TIME_UNSET) {
                long j4 = window.defaultPositionUs;
                if (j4 != C4649C.TIME_UNSET) {
                    j2 = Math.min(j4, j3);
                    window.defaultPositionUs = j2;
                    return window;
                }
            }
            j2 = window.defaultPositionUs;
            window.defaultPositionUs = j2;
            return window;
        }
    }

    public MergingMediaSource(MediaSource... mediaSourceArr) {
        this(false, mediaSourceArr);
    }

    /* renamed from: c */
    public final void m19676c() {
        Timeline.Period period = new Timeline.Period();
        for (int i = 0; i < this.f25297w; i++) {
            long j = -this.f25292r[0].getPeriod(i, period).getPositionInWindowUs();
            int i2 = 1;
            while (true) {
                Timeline[] timelineArr = this.f25292r;
                if (i2 < timelineArr.length) {
                    this.f25298x[i][i2] = j - (-timelineArr[i2].getPeriod(i, period).getPositionInWindowUs());
                    i2++;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        int length = this.f25291q.length;
        MediaPeriod[] mediaPeriodArr = new MediaPeriod[length];
        int indexOfPeriod = this.f25292r[0].getIndexOfPeriod(mediaPeriodId.periodUid);
        for (int i = 0; i < length; i++) {
            mediaPeriodArr[i] = this.f25291q[i].createPeriod(mediaPeriodId.copyWithPeriodUid(this.f25292r[i].getUidOfPeriod(indexOfPeriod)), allocator, j - this.f25298x[indexOfPeriod][i]);
        }
        C4850a c4850a = new C4850a(this.f25294t, this.f25298x[indexOfPeriod], mediaPeriodArr);
        if (!this.f25290p) {
            return c4850a;
        }
        ClippingMediaPeriod clippingMediaPeriod = new ClippingMediaPeriod(c4850a, true, 0L, ((Long) Assertions.checkNotNull(this.f25295u.get(mediaPeriodId.periodUid))).longValue());
        this.f25296v.put(mediaPeriodId.periodUid, clippingMediaPeriod);
        return clippingMediaPeriod;
    }

    /* renamed from: d */
    public final void m19677d() {
        Timeline[] timelineArr;
        Timeline.Period period = new Timeline.Period();
        for (int i = 0; i < this.f25297w; i++) {
            int i2 = 0;
            long j = Long.MIN_VALUE;
            while (true) {
                timelineArr = this.f25292r;
                if (i2 >= timelineArr.length) {
                    break;
                }
                long durationUs = timelineArr[i2].getPeriod(i, period).getDurationUs();
                if (durationUs != C4649C.TIME_UNSET) {
                    long j2 = durationUs + this.f25298x[i][i2];
                    if (j == Long.MIN_VALUE || j2 < j) {
                        j = j2;
                    }
                }
                i2++;
            }
            Object uidOfPeriod = timelineArr[0].getUidOfPeriod(i);
            this.f25295u.put(uidOfPeriod, Long.valueOf(j));
            Iterator<ClippingMediaPeriod> it2 = this.f25296v.get(uidOfPeriod).iterator();
            while (it2.hasNext()) {
                it2.next().updateClipping(0L, j);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        MediaSource[] mediaSourceArr = this.f25291q;
        return mediaSourceArr.length > 0 ? mediaSourceArr[0].getMediaItem() : f25287J;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        IllegalMergeException illegalMergeException = this.f25299y;
        if (illegalMergeException != null) {
            throw illegalMergeException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        for (int i = 0; i < this.f25291q.length; i++) {
            prepareChildSource(Integer.valueOf(i), this.f25291q[i]);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        if (this.f25290p) {
            ClippingMediaPeriod clippingMediaPeriod = (ClippingMediaPeriod) mediaPeriod;
            Iterator<Map.Entry<Object, ClippingMediaPeriod>> it2 = this.f25296v.entries().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<Object, ClippingMediaPeriod> next = it2.next();
                if (next.getValue().equals(clippingMediaPeriod)) {
                    this.f25296v.remove(next.getKey(), next.getValue());
                    break;
                }
            }
            mediaPeriod = clippingMediaPeriod.mediaPeriod;
        }
        C4850a c4850a = (C4850a) mediaPeriod;
        int i = 0;
        while (true) {
            MediaSource[] mediaSourceArr = this.f25291q;
            if (i >= mediaSourceArr.length) {
                return;
            }
            mediaSourceArr[i].releasePeriod(c4850a.m19721a(i));
            i++;
        }
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        Arrays.fill(this.f25292r, (Object) null);
        this.f25297w = -1;
        this.f25299y = null;
        this.f25293s.clear();
        Collections.addAll(this.f25293s, this.f25291q);
    }

    public MergingMediaSource(boolean z, MediaSource... mediaSourceArr) {
        this(z, false, mediaSourceArr);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    @Nullable
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(Integer num, MediaSource.MediaPeriodId mediaPeriodId) {
        if (num.intValue() == 0) {
            return mediaPeriodId;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void m19597b(Integer num, MediaSource mediaSource, Timeline timeline) {
        if (this.f25299y != null) {
            return;
        }
        if (this.f25297w == -1) {
            this.f25297w = timeline.getPeriodCount();
        } else if (timeline.getPeriodCount() != this.f25297w) {
            this.f25299y = new IllegalMergeException(0);
            return;
        }
        if (this.f25298x.length == 0) {
            this.f25298x = (long[][]) Array.newInstance((Class<?>) Long.TYPE, this.f25297w, this.f25292r.length);
        }
        this.f25293s.remove(mediaSource);
        this.f25292r[num.intValue()] = timeline;
        if (this.f25293s.isEmpty()) {
            if (this.f25289o) {
                m19676c();
            }
            Timeline timeline2 = this.f25292r[0];
            if (this.f25290p) {
                m19677d();
                timeline2 = new C4841a(timeline2, this.f25295u);
            }
            refreshSourceInfo(timeline2);
        }
    }

    public MergingMediaSource(boolean z, boolean z2, MediaSource... mediaSourceArr) {
        this(z, z2, new DefaultCompositeSequenceableLoaderFactory(), mediaSourceArr);
    }

    public MergingMediaSource(boolean z, boolean z2, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, MediaSource... mediaSourceArr) {
        this.f25289o = z;
        this.f25290p = z2;
        this.f25291q = mediaSourceArr;
        this.f25294t = compositeSequenceableLoaderFactory;
        this.f25293s = new ArrayList<>(Arrays.asList(mediaSourceArr));
        this.f25297w = -1;
        this.f25292r = new Timeline[mediaSourceArr.length];
        this.f25298x = new long[0];
        this.f25295u = new HashMap();
        this.f25296v = MultimapBuilder.hashKeys().arrayListValues().build();
    }
}
