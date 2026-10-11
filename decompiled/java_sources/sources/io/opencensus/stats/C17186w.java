package io.opencensus.stats;

import io.opencensus.stats.View;

/* renamed from: io.opencensus.stats.w */
/* loaded from: classes10.dex */
public final class C17186w extends View.Name {

    /* renamed from: a */
    public final String f94830a;

    public C17186w(String str) {
        if (str == null) {
            throw new NullPointerException("Null asString");
        }
        this.f94830a = str;
    }

    @Override // io.opencensus.stats.View.Name
    public String asString() {
        return this.f94830a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof View.Name) {
            return this.f94830a.equals(((View.Name) obj).asString());
        }
        return false;
    }

    public int hashCode() {
        return this.f94830a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Name{asString=" + this.f94830a + "}";
    }
}
