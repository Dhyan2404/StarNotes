package com.sunia.HTREnginev2;

import io.opencensus.tags.TagKey;

/* renamed from: com.sunia.HTREnginev2.ik */
/* loaded from: classes10.dex */
public final class C13879ik extends TagKey {

    /* renamed from: a */
    public final String f73308a;

    public C13879ik(String str) {
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        this.f73308a = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TagKey) {
            return this.f73308a.equals(((TagKey) obj).getName());
        }
        return false;
    }

    @Override // io.opencensus.tags.TagKey
    public String getName() {
        return this.f73308a;
    }

    public int hashCode() {
        return this.f73308a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "TagKey{name=" + this.f73308a + "}";
    }
}
