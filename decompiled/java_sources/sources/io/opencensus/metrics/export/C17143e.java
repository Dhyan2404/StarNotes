package io.opencensus.metrics.export;

import io.opencensus.metrics.export.Summary;
import javax.annotation.Nullable;

/* renamed from: io.opencensus.metrics.export.e */
/* loaded from: classes10.dex */
public final class C17143e extends Summary {

    /* renamed from: a */
    public final Long f94736a;

    /* renamed from: b */
    public final Double f94737b;

    /* renamed from: c */
    public final Summary.Snapshot f94738c;

    public C17143e(@Nullable Long l, @Nullable Double d, Summary.Snapshot snapshot) {
        this.f94736a = l;
        this.f94737b = d;
        if (snapshot == null) {
            throw new NullPointerException("Null snapshot");
        }
        this.f94738c = snapshot;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Summary)) {
            return false;
        }
        Summary summary = (Summary) obj;
        Long l = this.f94736a;
        if (l != null ? l.equals(summary.getCount()) : summary.getCount() == null) {
            Double d = this.f94737b;
            if (d != null ? d.equals(summary.getSum()) : summary.getSum() == null) {
                if (this.f94738c.equals(summary.getSnapshot())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // io.opencensus.metrics.export.Summary
    @Nullable
    public Long getCount() {
        return this.f94736a;
    }

    @Override // io.opencensus.metrics.export.Summary
    public Summary.Snapshot getSnapshot() {
        return this.f94738c;
    }

    @Override // io.opencensus.metrics.export.Summary
    @Nullable
    public Double getSum() {
        return this.f94737b;
    }

    public int hashCode() {
        Long l = this.f94736a;
        int hashCode = ((l == null ? 0 : l.hashCode()) ^ 1000003) * 1000003;
        Double d = this.f94737b;
        return this.f94738c.hashCode() ^ ((hashCode ^ (d != null ? d.hashCode() : 0)) * 1000003);
    }

    public String toString() {
        return "Summary{count=" + this.f94736a + ", sum=" + this.f94737b + ", snapshot=" + this.f94738c + "}";
    }
}
