package com.sunia.HTREnginev2;

import io.opencensus.metrics.LabelKey;

/* renamed from: com.sunia.HTREnginev2.vj */
/* loaded from: classes10.dex */
public final class C14547vj extends LabelKey {

    /* renamed from: a */
    public final String f87552a;

    /* renamed from: b */
    public final String f87553b;

    public C14547vj(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null key");
        }
        this.f87552a = str;
        if (str2 == null) {
            throw new NullPointerException("Null description");
        }
        this.f87553b = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LabelKey)) {
            return false;
        }
        LabelKey labelKey = (LabelKey) obj;
        return this.f87552a.equals(labelKey.getKey()) && this.f87553b.equals(labelKey.getDescription());
    }

    @Override // io.opencensus.metrics.LabelKey
    public String getDescription() {
        return this.f87553b;
    }

    @Override // io.opencensus.metrics.LabelKey
    public String getKey() {
        return this.f87552a;
    }

    public int hashCode() {
        return this.f87553b.hashCode() ^ ((this.f87552a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "LabelKey{key=" + this.f87552a + ", description=" + this.f87553b + "}";
    }
}
