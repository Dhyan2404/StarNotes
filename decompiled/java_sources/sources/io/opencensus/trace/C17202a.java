package io.opencensus.trace;

import io.opencensus.trace.AttributeValue;

/* renamed from: io.opencensus.trace.a */
/* loaded from: classes10.dex */
public final class C17202a extends AttributeValue.AbstractC17191a {

    /* renamed from: a */
    public final Boolean f94885a;

    public C17202a(Boolean bool) {
        if (bool == null) {
            throw new NullPointerException("Null booleanValue");
        }
        this.f94885a = bool;
    }

    @Override // io.opencensus.trace.AttributeValue.AbstractC17191a
    /* renamed from: b */
    public Boolean mo61050b() {
        return this.f94885a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AttributeValue.AbstractC17191a) {
            return this.f94885a.equals(((AttributeValue.AbstractC17191a) obj).mo61050b());
        }
        return false;
    }

    public int hashCode() {
        return this.f94885a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "AttributeValueBoolean{booleanValue=" + this.f94885a + "}";
    }
}
