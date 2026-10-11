package io.opencensus.metrics.data;

import io.opencensus.metrics.data.AttachmentValue;

/* renamed from: io.opencensus.metrics.data.a */
/* loaded from: classes10.dex */
public final class C17128a extends AttachmentValue.AttachmentValueString {

    /* renamed from: a */
    public final String f94720a;

    public C17128a(String str) {
        if (str == null) {
            throw new NullPointerException("Null value");
        }
        this.f94720a = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AttachmentValue.AttachmentValueString) {
            return this.f94720a.equals(((AttachmentValue.AttachmentValueString) obj).getValue());
        }
        return false;
    }

    @Override // io.opencensus.metrics.data.AttachmentValue
    public String getValue() {
        return this.f94720a;
    }

    public int hashCode() {
        return this.f94720a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "AttachmentValueString{value=" + this.f94720a + "}";
    }
}
