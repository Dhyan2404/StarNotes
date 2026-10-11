package io.opencensus.trace;

import io.opencensus.trace.Tracestate;

/* renamed from: io.opencensus.trace.j */
/* loaded from: classes10.dex */
public final class C17234j extends Tracestate.Entry {

    /* renamed from: a */
    public final String f94974a;

    /* renamed from: b */
    public final String f94975b;

    public C17234j(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null key");
        }
        this.f94974a = str;
        if (str2 == null) {
            throw new NullPointerException("Null value");
        }
        this.f94975b = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Tracestate.Entry)) {
            return false;
        }
        Tracestate.Entry entry = (Tracestate.Entry) obj;
        return this.f94974a.equals(entry.getKey()) && this.f94975b.equals(entry.getValue());
    }

    @Override // io.opencensus.trace.Tracestate.Entry
    public String getKey() {
        return this.f94974a;
    }

    @Override // io.opencensus.trace.Tracestate.Entry
    public String getValue() {
        return this.f94975b;
    }

    public int hashCode() {
        return this.f94975b.hashCode() ^ ((this.f94974a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "Entry{key=" + this.f94974a + ", value=" + this.f94975b + "}";
    }
}
