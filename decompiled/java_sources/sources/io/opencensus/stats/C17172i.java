package io.opencensus.stats;

import io.opencensus.stats.Aggregation;

/* renamed from: io.opencensus.stats.i */
/* loaded from: classes10.dex */
public final class C17172i extends Aggregation.Distribution {

    /* renamed from: a */
    public final BucketBoundaries f94804a;

    public C17172i(BucketBoundaries bucketBoundaries) {
        if (bucketBoundaries == null) {
            throw new NullPointerException("Null bucketBoundaries");
        }
        this.f94804a = bucketBoundaries;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Aggregation.Distribution) {
            return this.f94804a.equals(((Aggregation.Distribution) obj).getBucketBoundaries());
        }
        return false;
    }

    @Override // io.opencensus.stats.Aggregation.Distribution
    public BucketBoundaries getBucketBoundaries() {
        return this.f94804a;
    }

    public int hashCode() {
        return this.f94804a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Distribution{bucketBoundaries=" + this.f94804a + "}";
    }
}
