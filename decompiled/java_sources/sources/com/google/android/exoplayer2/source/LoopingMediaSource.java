package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.AbstractConcatenatedTimeline;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import java.util.HashMap;
import java.util.Map;

@Deprecated
/* loaded from: classes5.dex */
public final class LoopingMediaSource extends CompositeMediaSource<Void> {

    /* renamed from: o */
    public final MaskingMediaSource f25249o;

    /* renamed from: p */
    public final int f25250p;

    /* renamed from: q */
    public final Map<MediaSource.MediaPeriodId, MediaSource.MediaPeriodId> f25251q;

    /* renamed from: r */
    public final Map<MediaPeriod, MediaSource.MediaPeriodId> f25252r;

    /* renamed from: com.google.android.exoplayer2.source.LoopingMediaSource$a */
    /* loaded from: classes5.dex */
    public static final class C4836a extends ForwardingTimeline {
        public C4836a(Timeline timeline) {
            super(timeline);
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public int getNextWindowIndex(int i, int i2, boolean z) {
            int nextWindowIndex = this.timeline.getNextWindowIndex(i, i2, z);
            return nextWindowIndex == -1 ? getFirstWindowIndex(z) : nextWindowIndex;
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public int getPreviousWindowIndex(int i, int i2, boolean z) {
            int previousWindowIndex = this.timeline.getPreviousWindowIndex(i, i2, z);
            return previousWindowIndex == -1 ? getLastWindowIndex(z) : previousWindowIndex;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.LoopingMediaSource$b */
    /* loaded from: classes5.dex */
    public static final class C4837b extends AbstractConcatenatedTimeline {

        /* renamed from: k */
        public final Timeline f25253k;

        /* renamed from: l */
        public final int f25254l;

        /* renamed from: m */
        public final int f25255m;

        /* renamed from: n */
        public final int f25256n;

        public C4837b(Timeline timeline, int i) {
            super(false, new ShuffleOrder.UnshuffledShuffleOrder(i));
            this.f25253k = timeline;
            int periodCount = timeline.getPeriodCount();
            this.f25254l = periodCount;
            this.f25255m = timeline.getWindowCount();
            this.f25256n = i;
            if (periodCount > 0) {
                Assertions.checkState(i <= Integer.MAX_VALUE / periodCount, "LoopingMediaSource contains too many periods");
            }
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getChildIndexByChildUid(Object obj) {
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getChildIndexByPeriodIndex(int i) {
            return i / this.f25254l;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getChildIndexByWindowIndex(int i) {
            return i / this.f25255m;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public Object getChildUidByChildIndex(int i) {
            return Integer.valueOf(i);
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getFirstPeriodIndexByChildIndex(int i) {
            return i * this.f25254l;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getFirstWindowIndexByChildIndex(int i) {
            return i * this.f25255m;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.f25254l * this.f25256n;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public Timeline getTimelineByChildIndex(int i) {
            return this.f25253k;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return this.f25255m * this.f25256n;
        }
    }

    public LoopingMediaSource(MediaSource mediaSource) {
        this(mediaSource, Integer.MAX_VALUE);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        if (this.f25250p == Integer.MAX_VALUE) {
            return this.f25249o.createPeriod(mediaPeriodId, allocator, j);
        }
        MediaSource.MediaPeriodId copyWithPeriodUid = mediaPeriodId.copyWithPeriodUid(AbstractConcatenatedTimeline.getChildPeriodUidFromConcatenatedUid(mediaPeriodId.periodUid));
        this.f25251q.put(copyWithPeriodUid, mediaPeriodId);
        MaskingMediaPeriod createPeriod = this.f25249o.createPeriod(copyWithPeriodUid, allocator, j);
        this.f25252r.put(createPeriod, copyWithPeriodUid);
        return createPeriod;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    @Nullable
    public Timeline getInitialTimeline() {
        return this.f25250p != Integer.MAX_VALUE ? new C4837b(this.f25249o.getTimeline(), this.f25250p) : new C4836a(this.f25249o.getTimeline());
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.f25249o.getMediaItem();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public boolean isSingleWindow() {
        return false;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        prepareChildSource(null, this.f25249o);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        this.f25249o.releasePeriod(mediaPeriod);
        MediaSource.MediaPeriodId remove = this.f25252r.remove(mediaPeriod);
        if (remove != null) {
            this.f25251q.remove(remove);
        }
    }

    public LoopingMediaSource(MediaSource mediaSource, int i) {
        Assertions.checkArgument(i > 0);
        this.f25249o = new MaskingMediaSource(mediaSource, false);
        this.f25250p = i;
        this.f25251q = new HashMap();
        this.f25252r = new HashMap();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    @Nullable
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(Void r2, MediaSource.MediaPeriodId mediaPeriodId) {
        return this.f25250p != Integer.MAX_VALUE ? this.f25251q.get(mediaPeriodId) : mediaPeriodId;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void m19597b(Void r1, MediaSource mediaSource, Timeline timeline) {
        Timeline c4836a;
        if (this.f25250p != Integer.MAX_VALUE) {
            c4836a = new C4837b(timeline, this.f25250p);
        } else {
            c4836a = new C4836a(timeline);
        }
        refreshSourceInfo(c4836a);
    }
}
