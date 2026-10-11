package io.opencensus.stats;

import io.opencensus.common.Timestamp;
import io.opencensus.stats.ViewData;
import javax.annotation.concurrent.Immutable;

@Deprecated
@Immutable
/* renamed from: io.opencensus.stats.s */
/* loaded from: classes10.dex */
public final class C17182s extends ViewData.AggregationWindowData.CumulativeData {

    /* renamed from: a */
    public final Timestamp f94826a;

    /* renamed from: b */
    public final Timestamp f94827b;

    public C17182s(Timestamp timestamp, Timestamp timestamp2) {
        if (timestamp == null) {
            throw new NullPointerException("Null start");
        }
        this.f94826a = timestamp;
        if (timestamp2 == null) {
            throw new NullPointerException("Null end");
        }
        this.f94827b = timestamp2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ViewData.AggregationWindowData.CumulativeData)) {
            return false;
        }
        ViewData.AggregationWindowData.CumulativeData cumulativeData = (ViewData.AggregationWindowData.CumulativeData) obj;
        return this.f94826a.equals(cumulativeData.getStart()) && this.f94827b.equals(cumulativeData.getEnd());
    }

    @Override // io.opencensus.stats.ViewData.AggregationWindowData.CumulativeData
    public Timestamp getEnd() {
        return this.f94827b;
    }

    @Override // io.opencensus.stats.ViewData.AggregationWindowData.CumulativeData
    public Timestamp getStart() {
        return this.f94826a;
    }

    public int hashCode() {
        return this.f94827b.hashCode() ^ ((this.f94826a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "CumulativeData{start=" + this.f94826a + ", end=" + this.f94827b + "}";
    }
}
