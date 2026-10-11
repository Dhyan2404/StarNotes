package io.opencensus.metrics.export;

import io.opencensus.metrics.export.Value;

/* renamed from: io.opencensus.metrics.export.j */
/* loaded from: classes10.dex */
public final class C17148j extends Value.AbstractC17137c {

    /* renamed from: a */
    public final long f94746a;

    public C17148j(long j) {
        this.f94746a = j;
    }

    @Override // io.opencensus.metrics.export.Value.AbstractC17137c
    /* renamed from: b */
    public long mo61006b() {
        return this.f94746a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof Value.AbstractC17137c) && this.f94746a == ((Value.AbstractC17137c) obj).mo61006b();
    }

    public int hashCode() {
        long j = this.f94746a;
        return (int) (1000003 ^ (j ^ (j >>> 32)));
    }

    public String toString() {
        return "ValueLong{value=" + this.f94746a + "}";
    }
}
