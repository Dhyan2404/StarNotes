package io.opencensus.metrics.export;

import io.opencensus.metrics.data.Exemplar;
import io.opencensus.metrics.export.Distribution;
import javax.annotation.Nullable;

/* renamed from: io.opencensus.metrics.export.b */
/* loaded from: classes10.dex */
public final class C17140b extends Distribution.Bucket {

    /* renamed from: a */
    public final long f94728a;

    /* renamed from: b */
    public final Exemplar f94729b;

    public C17140b(long j, @Nullable Exemplar exemplar) {
        this.f94728a = j;
        this.f94729b = exemplar;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Distribution.Bucket)) {
            return false;
        }
        Distribution.Bucket bucket = (Distribution.Bucket) obj;
        if (this.f94728a == bucket.getCount()) {
            Exemplar exemplar = this.f94729b;
            if (exemplar == null) {
                if (bucket.getExemplar() == null) {
                    return true;
                }
            } else if (exemplar.equals(bucket.getExemplar())) {
                return true;
            }
        }
        return false;
    }

    @Override // io.opencensus.metrics.export.Distribution.Bucket
    public long getCount() {
        return this.f94728a;
    }

    @Override // io.opencensus.metrics.export.Distribution.Bucket
    @Nullable
    public Exemplar getExemplar() {
        return this.f94729b;
    }

    public int hashCode() {
        long j = this.f94728a;
        int i = ((int) (1000003 ^ (j ^ (j >>> 32)))) * 1000003;
        Exemplar exemplar = this.f94729b;
        return (exemplar == null ? 0 : exemplar.hashCode()) ^ i;
    }

    public String toString() {
        return "Bucket{count=" + this.f94728a + ", exemplar=" + this.f94729b + "}";
    }
}
