package io.opencensus.metrics.export;

import io.opencensus.metrics.export.Value;

/* renamed from: io.opencensus.metrics.export.i */
/* loaded from: classes10.dex */
public final class C17147i extends Value.AbstractC17136b {

    /* renamed from: a */
    public final double f94745a;

    public C17147i(double d) {
        this.f94745a = d;
    }

    @Override // io.opencensus.metrics.export.Value.AbstractC17136b
    /* renamed from: b */
    public double mo61004b() {
        return this.f94745a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof Value.AbstractC17136b) && Double.doubleToLongBits(this.f94745a) == Double.doubleToLongBits(((Value.AbstractC17136b) obj).mo61004b());
    }

    public int hashCode() {
        return (int) (1000003 ^ ((Double.doubleToLongBits(this.f94745a) >>> 32) ^ Double.doubleToLongBits(this.f94745a)));
    }

    public String toString() {
        return "ValueDouble{value=" + this.f94745a + "}";
    }
}
