package io.opencensus.stats;

import io.opencensus.stats.AggregationData;

/* renamed from: io.opencensus.stats.a */
/* loaded from: classes10.dex */
public final class C17164a extends AggregationData.CountData {

    /* renamed from: a */
    public final long f94792a;

    public C17164a(long j) {
        this.f94792a = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof AggregationData.CountData) && this.f94792a == ((AggregationData.CountData) obj).getCount();
    }

    @Override // io.opencensus.stats.AggregationData.CountData
    public long getCount() {
        return this.f94792a;
    }

    public int hashCode() {
        long j = this.f94792a;
        return (int) (1000003 ^ (j ^ (j >>> 32)));
    }

    public String toString() {
        return "CountData{count=" + this.f94792a + "}";
    }
}
