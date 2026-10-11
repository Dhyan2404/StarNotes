package io.opencensus.trace.export;

import io.opencensus.trace.Status;
import io.opencensus.trace.export.SampledSpanStore;
import java.util.Map;

/* renamed from: io.opencensus.trace.export.f */
/* loaded from: classes10.dex */
public final class C17223f extends SampledSpanStore.PerSpanNameSummary {

    /* renamed from: a */
    public final Map<SampledSpanStore.LatencyBucketBoundaries, Integer> f94927a;

    /* renamed from: b */
    public final Map<Status.CanonicalCode, Integer> f94928b;

    public C17223f(Map<SampledSpanStore.LatencyBucketBoundaries, Integer> map, Map<Status.CanonicalCode, Integer> map2) {
        if (map == null) {
            throw new NullPointerException("Null numbersOfLatencySampledSpans");
        }
        this.f94927a = map;
        if (map2 == null) {
            throw new NullPointerException("Null numbersOfErrorSampledSpans");
        }
        this.f94928b = map2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SampledSpanStore.PerSpanNameSummary)) {
            return false;
        }
        SampledSpanStore.PerSpanNameSummary perSpanNameSummary = (SampledSpanStore.PerSpanNameSummary) obj;
        return this.f94927a.equals(perSpanNameSummary.getNumbersOfLatencySampledSpans()) && this.f94928b.equals(perSpanNameSummary.getNumbersOfErrorSampledSpans());
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.PerSpanNameSummary
    public Map<Status.CanonicalCode, Integer> getNumbersOfErrorSampledSpans() {
        return this.f94928b;
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.PerSpanNameSummary
    public Map<SampledSpanStore.LatencyBucketBoundaries, Integer> getNumbersOfLatencySampledSpans() {
        return this.f94927a;
    }

    public int hashCode() {
        return this.f94928b.hashCode() ^ ((this.f94927a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "PerSpanNameSummary{numbersOfLatencySampledSpans=" + this.f94927a + ", numbersOfErrorSampledSpans=" + this.f94928b + "}";
    }
}
