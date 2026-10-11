package io.opencensus.metrics.export;

import io.opencensus.metrics.export.Value;

/* renamed from: io.opencensus.metrics.export.h */
/* loaded from: classes10.dex */
public final class C17146h extends Value.AbstractC17135a {

    /* renamed from: a */
    public final Distribution f94744a;

    public C17146h(Distribution distribution) {
        if (distribution == null) {
            throw new NullPointerException("Null value");
        }
        this.f94744a = distribution;
    }

    @Override // io.opencensus.metrics.export.Value.AbstractC17135a
    /* renamed from: b */
    public Distribution mo61002b() {
        return this.f94744a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Value.AbstractC17135a) {
            return this.f94744a.equals(((Value.AbstractC17135a) obj).mo61002b());
        }
        return false;
    }

    public int hashCode() {
        return this.f94744a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "ValueDistribution{value=" + this.f94744a + "}";
    }
}
