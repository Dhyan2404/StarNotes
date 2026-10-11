package com.google.android.exoplayer2.source.ads;

import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.ForwardingTimeline;
import com.google.android.exoplayer2.util.Assertions;

@VisibleForTesting(otherwise = 3)
/* loaded from: classes5.dex */
public final class SinglePeriodAdTimeline extends ForwardingTimeline {

    /* renamed from: h */
    public final AdPlaybackState f25503h;

    public SinglePeriodAdTimeline(Timeline timeline, AdPlaybackState adPlaybackState) {
        super(timeline);
        Assertions.checkState(timeline.getPeriodCount() == 1);
        Assertions.checkState(timeline.getWindowCount() == 1);
        this.f25503h = adPlaybackState;
    }

    @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
    public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
        this.timeline.getPeriod(i, period, z);
        long j = period.durationUs;
        if (j == C4649C.TIME_UNSET) {
            j = this.f25503h.contentDurationUs;
        }
        period.set(period.f22727id, period.uid, period.windowIndex, j, period.getPositionInWindowUs(), this.f25503h, period.isPlaceholder);
        return period;
    }
}
