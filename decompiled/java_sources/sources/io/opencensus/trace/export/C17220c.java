package io.opencensus.trace.export;

import io.opencensus.trace.export.RunningSpanStore;
import java.util.Map;

/* renamed from: io.opencensus.trace.export.c */
/* loaded from: classes10.dex */
public final class C17220c extends RunningSpanStore.Summary {

    /* renamed from: a */
    public final Map<String, RunningSpanStore.PerSpanNameSummary> f94919a;

    public C17220c(Map<String, RunningSpanStore.PerSpanNameSummary> map) {
        if (map == null) {
            throw new NullPointerException("Null perSpanNameSummary");
        }
        this.f94919a = map;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RunningSpanStore.Summary) {
            return this.f94919a.equals(((RunningSpanStore.Summary) obj).getPerSpanNameSummary());
        }
        return false;
    }

    @Override // io.opencensus.trace.export.RunningSpanStore.Summary
    public Map<String, RunningSpanStore.PerSpanNameSummary> getPerSpanNameSummary() {
        return this.f94919a;
    }

    public int hashCode() {
        return this.f94919a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Summary{perSpanNameSummary=" + this.f94919a + "}";
    }
}
