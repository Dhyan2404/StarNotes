package io.opencensus.trace;

import io.opencensus.trace.AttributeValue;

/* renamed from: io.opencensus.trace.b */
/* loaded from: classes10.dex */
public final class C17203b extends AttributeValue.AbstractC17192b {

    /* renamed from: a */
    public final Double f94886a;

    public C17203b(Double d) {
        if (d == null) {
            throw new NullPointerException("Null doubleValue");
        }
        this.f94886a = d;
    }

    @Override // io.opencensus.trace.AttributeValue.AbstractC17192b
    /* renamed from: b */
    public Double mo61052b() {
        return this.f94886a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AttributeValue.AbstractC17192b) {
            return this.f94886a.equals(((AttributeValue.AbstractC17192b) obj).mo61052b());
        }
        return false;
    }

    public int hashCode() {
        return this.f94886a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "AttributeValueDouble{doubleValue=" + this.f94886a + "}";
    }
}
