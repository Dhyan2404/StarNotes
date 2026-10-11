package io.opencensus.metrics.export;

import io.opencensus.metrics.export.Summary;
import java.util.List;
import javax.annotation.Nullable;

/* renamed from: io.opencensus.metrics.export.f */
/* loaded from: classes10.dex */
public final class C17144f extends Summary.Snapshot {

    /* renamed from: a */
    public final Long f94739a;

    /* renamed from: b */
    public final Double f94740b;

    /* renamed from: c */
    public final List<Summary.Snapshot.ValueAtPercentile> f94741c;

    public C17144f(@Nullable Long l, @Nullable Double d, List<Summary.Snapshot.ValueAtPercentile> list) {
        this.f94739a = l;
        this.f94740b = d;
        if (list == null) {
            throw new NullPointerException("Null valueAtPercentiles");
        }
        this.f94741c = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Summary.Snapshot)) {
            return false;
        }
        Summary.Snapshot snapshot = (Summary.Snapshot) obj;
        Long l = this.f94739a;
        if (l != null ? l.equals(snapshot.getCount()) : snapshot.getCount() == null) {
            Double d = this.f94740b;
            if (d != null ? d.equals(snapshot.getSum()) : snapshot.getSum() == null) {
                if (this.f94741c.equals(snapshot.getValueAtPercentiles())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // io.opencensus.metrics.export.Summary.Snapshot
    @Nullable
    public Long getCount() {
        return this.f94739a;
    }

    @Override // io.opencensus.metrics.export.Summary.Snapshot
    @Nullable
    public Double getSum() {
        return this.f94740b;
    }

    @Override // io.opencensus.metrics.export.Summary.Snapshot
    public List<Summary.Snapshot.ValueAtPercentile> getValueAtPercentiles() {
        return this.f94741c;
    }

    public int hashCode() {
        Long l = this.f94739a;
        int hashCode = ((l == null ? 0 : l.hashCode()) ^ 1000003) * 1000003;
        Double d = this.f94740b;
        return this.f94741c.hashCode() ^ ((hashCode ^ (d != null ? d.hashCode() : 0)) * 1000003);
    }

    public String toString() {
        return "Snapshot{count=" + this.f94739a + ", sum=" + this.f94740b + ", valueAtPercentiles=" + this.f94741c + "}";
    }
}
