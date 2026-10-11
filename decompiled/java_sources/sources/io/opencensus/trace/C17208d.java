package io.opencensus.trace;

import io.opencensus.trace.AttributeValue;

/* renamed from: io.opencensus.trace.d */
/* loaded from: classes10.dex */
public final class C17208d extends AttributeValue.AbstractC17194d {

    /* renamed from: a */
    public final String f94905a;

    public C17208d(String str) {
        if (str == null) {
            throw new NullPointerException("Null stringValue");
        }
        this.f94905a = str;
    }

    @Override // io.opencensus.trace.AttributeValue.AbstractC17194d
    /* renamed from: b */
    public String mo61056b() {
        return this.f94905a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AttributeValue.AbstractC17194d) {
            return this.f94905a.equals(((AttributeValue.AbstractC17194d) obj).mo61056b());
        }
        return false;
    }

    public int hashCode() {
        return this.f94905a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "AttributeValueString{stringValue=" + this.f94905a + "}";
    }
}
