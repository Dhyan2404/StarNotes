package io.opencensus.trace.export;

import io.opencensus.trace.export.RunningSpanStore;

/* renamed from: io.opencensus.trace.export.a */
/* loaded from: classes10.dex */
public final class C17218a extends RunningSpanStore.Filter {

    /* renamed from: a */
    public final String f94916a;

    /* renamed from: b */
    public final int f94917b;

    public C17218a(String str, int i) {
        if (str == null) {
            throw new NullPointerException("Null spanName");
        }
        this.f94916a = str;
        this.f94917b = i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RunningSpanStore.Filter)) {
            return false;
        }
        RunningSpanStore.Filter filter = (RunningSpanStore.Filter) obj;
        return this.f94916a.equals(filter.getSpanName()) && this.f94917b == filter.getMaxSpansToReturn();
    }

    @Override // io.opencensus.trace.export.RunningSpanStore.Filter
    public int getMaxSpansToReturn() {
        return this.f94917b;
    }

    @Override // io.opencensus.trace.export.RunningSpanStore.Filter
    public String getSpanName() {
        return this.f94916a;
    }

    public int hashCode() {
        return this.f94917b ^ ((this.f94916a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "Filter{spanName=" + this.f94916a + ", maxSpansToReturn=" + this.f94917b + "}";
    }
}
