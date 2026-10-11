package io.opencensus.trace.export;

import io.opencensus.trace.export.SampledSpanStore;
import java.util.Map;

/* renamed from: io.opencensus.trace.export.g */
/* loaded from: classes10.dex */
public final class C17224g extends SampledSpanStore.Summary {

    /* renamed from: a */
    public final Map<String, SampledSpanStore.PerSpanNameSummary> f94929a;

    public C17224g(Map<String, SampledSpanStore.PerSpanNameSummary> map) {
        if (map == null) {
            throw new NullPointerException("Null perSpanNameSummary");
        }
        this.f94929a = map;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SampledSpanStore.Summary) {
            return this.f94929a.equals(((SampledSpanStore.Summary) obj).getPerSpanNameSummary());
        }
        return false;
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.Summary
    public Map<String, SampledSpanStore.PerSpanNameSummary> getPerSpanNameSummary() {
        return this.f94929a;
    }

    public int hashCode() {
        return this.f94929a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Summary{perSpanNameSummary=" + this.f94929a + "}";
    }
}
