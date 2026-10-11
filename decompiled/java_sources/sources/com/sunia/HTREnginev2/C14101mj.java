package com.sunia.HTREnginev2;

import io.opencensus.trace.Annotation;
import io.opencensus.trace.AttributeValue;
import java.util.Map;

/* renamed from: com.sunia.HTREnginev2.mj */
/* loaded from: classes10.dex */
public final class C14101mj extends Annotation {

    /* renamed from: b */
    public final String f77657b;

    /* renamed from: c */
    public final Map<String, AttributeValue> f77658c;

    public C14101mj(String str, Map<String, AttributeValue> map) {
        if (str == null) {
            throw new NullPointerException("Null description");
        }
        this.f77657b = str;
        if (map == null) {
            throw new NullPointerException("Null attributes");
        }
        this.f77658c = map;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Annotation)) {
            return false;
        }
        Annotation annotation = (Annotation) obj;
        return this.f77657b.equals(annotation.getDescription()) && this.f77658c.equals(annotation.getAttributes());
    }

    @Override // io.opencensus.trace.Annotation
    public Map<String, AttributeValue> getAttributes() {
        return this.f77658c;
    }

    @Override // io.opencensus.trace.Annotation
    public String getDescription() {
        return this.f77657b;
    }

    public int hashCode() {
        return this.f77658c.hashCode() ^ ((this.f77657b.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "Annotation{description=" + this.f77657b + ", attributes=" + this.f77658c + "}";
    }
}
