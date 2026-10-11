package io.opencensus.trace.export;

import io.opencensus.trace.export.RunningSpanStore;

/* renamed from: io.opencensus.trace.export.b */
/* loaded from: classes10.dex */
public final class C17219b extends RunningSpanStore.PerSpanNameSummary {

    /* renamed from: a */
    public final int f94918a;

    public C17219b(int i) {
        this.f94918a = i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof RunningSpanStore.PerSpanNameSummary) && this.f94918a == ((RunningSpanStore.PerSpanNameSummary) obj).getNumRunningSpans();
    }

    @Override // io.opencensus.trace.export.RunningSpanStore.PerSpanNameSummary
    public int getNumRunningSpans() {
        return this.f94918a;
    }

    public int hashCode() {
        return this.f94918a ^ 1000003;
    }

    public String toString() {
        return "PerSpanNameSummary{numRunningSpans=" + this.f94918a + "}";
    }
}
