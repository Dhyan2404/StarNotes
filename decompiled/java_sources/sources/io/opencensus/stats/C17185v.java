package io.opencensus.stats;

import io.opencensus.common.Duration;
import io.opencensus.stats.View;
import javax.annotation.concurrent.Immutable;

@Deprecated
@Immutable
/* renamed from: io.opencensus.stats.v */
/* loaded from: classes10.dex */
public final class C17185v extends View.AggregationWindow.Interval {

    /* renamed from: b */
    public final Duration f94829b;

    public C17185v(Duration duration) {
        if (duration == null) {
            throw new NullPointerException("Null duration");
        }
        this.f94829b = duration;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof View.AggregationWindow.Interval) {
            return this.f94829b.equals(((View.AggregationWindow.Interval) obj).getDuration());
        }
        return false;
    }

    @Override // io.opencensus.stats.View.AggregationWindow.Interval
    public Duration getDuration() {
        return this.f94829b;
    }

    public int hashCode() {
        return this.f94829b.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Interval{duration=" + this.f94829b + "}";
    }
}
