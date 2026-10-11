package io.opencensus.trace.export;

import io.opencensus.trace.export.SampledSpanStore;

/* renamed from: io.opencensus.trace.export.e */
/* loaded from: classes10.dex */
public final class C17222e extends SampledSpanStore.LatencyFilter {

    /* renamed from: a */
    public final String f94923a;

    /* renamed from: b */
    public final long f94924b;

    /* renamed from: c */
    public final long f94925c;

    /* renamed from: d */
    public final int f94926d;

    public C17222e(String str, long j, long j2, int i) {
        if (str == null) {
            throw new NullPointerException("Null spanName");
        }
        this.f94923a = str;
        this.f94924b = j;
        this.f94925c = j2;
        this.f94926d = i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SampledSpanStore.LatencyFilter)) {
            return false;
        }
        SampledSpanStore.LatencyFilter latencyFilter = (SampledSpanStore.LatencyFilter) obj;
        return this.f94923a.equals(latencyFilter.getSpanName()) && this.f94924b == latencyFilter.getLatencyLowerNs() && this.f94925c == latencyFilter.getLatencyUpperNs() && this.f94926d == latencyFilter.getMaxSpansToReturn();
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.LatencyFilter
    public long getLatencyLowerNs() {
        return this.f94924b;
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.LatencyFilter
    public long getLatencyUpperNs() {
        return this.f94925c;
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.LatencyFilter
    public int getMaxSpansToReturn() {
        return this.f94926d;
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.LatencyFilter
    public String getSpanName() {
        return this.f94923a;
    }

    public int hashCode() {
        long hashCode = (this.f94923a.hashCode() ^ 1000003) * 1000003;
        long j = this.f94924b;
        long j2 = ((int) (hashCode ^ (j ^ (j >>> 32)))) * 1000003;
        long j3 = this.f94925c;
        return this.f94926d ^ (((int) (j2 ^ (j3 ^ (j3 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "LatencyFilter{spanName=" + this.f94923a + ", latencyLowerNs=" + this.f94924b + ", latencyUpperNs=" + this.f94925c + ", maxSpansToReturn=" + this.f94926d + "}";
    }
}
