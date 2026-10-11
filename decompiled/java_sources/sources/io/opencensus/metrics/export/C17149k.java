package io.opencensus.metrics.export;

import io.opencensus.metrics.export.Value;

/* renamed from: io.opencensus.metrics.export.k */
/* loaded from: classes10.dex */
public final class C17149k extends Value.AbstractC17138d {

    /* renamed from: a */
    public final Summary f94747a;

    public C17149k(Summary summary) {
        if (summary == null) {
            throw new NullPointerException("Null value");
        }
        this.f94747a = summary;
    }

    @Override // io.opencensus.metrics.export.Value.AbstractC17138d
    /* renamed from: b */
    public Summary mo61008b() {
        return this.f94747a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Value.AbstractC17138d) {
            return this.f94747a.equals(((Value.AbstractC17138d) obj).mo61008b());
        }
        return false;
    }

    public int hashCode() {
        return this.f94747a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "ValueSummary{value=" + this.f94747a + "}";
    }
}
