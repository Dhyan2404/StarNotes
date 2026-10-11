package io.opencensus.stats;

import io.opencensus.common.Timestamp;
import io.opencensus.stats.ViewData;
import javax.annotation.concurrent.Immutable;

@Deprecated
@Immutable
/* renamed from: io.opencensus.stats.t */
/* loaded from: classes10.dex */
public final class C17183t extends ViewData.AggregationWindowData.IntervalData {

    /* renamed from: a */
    public final Timestamp f94828a;

    public C17183t(Timestamp timestamp) {
        if (timestamp == null) {
            throw new NullPointerException("Null end");
        }
        this.f94828a = timestamp;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ViewData.AggregationWindowData.IntervalData) {
            return this.f94828a.equals(((ViewData.AggregationWindowData.IntervalData) obj).getEnd());
        }
        return false;
    }

    @Override // io.opencensus.stats.ViewData.AggregationWindowData.IntervalData
    public Timestamp getEnd() {
        return this.f94828a;
    }

    public int hashCode() {
        return this.f94828a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "IntervalData{end=" + this.f94828a + "}";
    }
}
