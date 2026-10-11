package com.sunia.HTREnginev2;

import io.opencensus.tags.TagValue;

/* renamed from: com.sunia.HTREnginev2.jk */
/* loaded from: classes10.dex */
public final class C13935jk extends TagValue {

    /* renamed from: a */
    public final String f74390a;

    public C13935jk(String str) {
        if (str == null) {
            throw new NullPointerException("Null asString");
        }
        this.f74390a = str;
    }

    @Override // io.opencensus.tags.TagValue
    public String asString() {
        return this.f74390a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TagValue) {
            return this.f74390a.equals(((TagValue) obj).asString());
        }
        return false;
    }

    public int hashCode() {
        return this.f74390a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "TagValue{asString=" + this.f74390a + "}";
    }
}
