package io.opencensus.trace;

import io.opencensus.trace.AttributeValue;

/* renamed from: io.opencensus.trace.c */
/* loaded from: classes10.dex */
public final class C17204c extends AttributeValue.AbstractC17193c {

    /* renamed from: a */
    public final Long f94887a;

    public C17204c(Long l) {
        if (l == null) {
            throw new NullPointerException("Null longValue");
        }
        this.f94887a = l;
    }

    @Override // io.opencensus.trace.AttributeValue.AbstractC17193c
    /* renamed from: b */
    public Long mo61054b() {
        return this.f94887a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AttributeValue.AbstractC17193c) {
            return this.f94887a.equals(((AttributeValue.AbstractC17193c) obj).mo61054b());
        }
        return false;
    }

    public int hashCode() {
        return this.f94887a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "AttributeValueLong{longValue=" + this.f94887a + "}";
    }
}
