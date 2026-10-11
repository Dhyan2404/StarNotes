package io.opencensus.metrics.export;

import io.opencensus.metrics.export.Distribution;
import java.util.List;

/* renamed from: io.opencensus.metrics.export.c */
/* loaded from: classes10.dex */
public final class C17141c extends Distribution.BucketOptions.ExplicitOptions {

    /* renamed from: a */
    public final List<Double> f94730a;

    public C17141c(List<Double> list) {
        if (list == null) {
            throw new NullPointerException("Null bucketBoundaries");
        }
        this.f94730a = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Distribution.BucketOptions.ExplicitOptions) {
            return this.f94730a.equals(((Distribution.BucketOptions.ExplicitOptions) obj).getBucketBoundaries());
        }
        return false;
    }

    @Override // io.opencensus.metrics.export.Distribution.BucketOptions.ExplicitOptions
    public List<Double> getBucketBoundaries() {
        return this.f94730a;
    }

    public int hashCode() {
        return this.f94730a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "ExplicitOptions{bucketBoundaries=" + this.f94730a + "}";
    }
}
