package io.opencensus.trace.export;

import io.opencensus.trace.AttributeValue;
import io.opencensus.trace.export.SpanData;
import java.util.Map;

/* renamed from: io.opencensus.trace.export.i */
/* loaded from: classes10.dex */
public final class C17226i extends SpanData.Attributes {

    /* renamed from: a */
    public final Map<String, AttributeValue> f94943a;

    /* renamed from: b */
    public final int f94944b;

    public C17226i(Map<String, AttributeValue> map, int i) {
        if (map == null) {
            throw new NullPointerException("Null attributeMap");
        }
        this.f94943a = map;
        this.f94944b = i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SpanData.Attributes)) {
            return false;
        }
        SpanData.Attributes attributes = (SpanData.Attributes) obj;
        return this.f94943a.equals(attributes.getAttributeMap()) && this.f94944b == attributes.getDroppedAttributesCount();
    }

    @Override // io.opencensus.trace.export.SpanData.Attributes
    public Map<String, AttributeValue> getAttributeMap() {
        return this.f94943a;
    }

    @Override // io.opencensus.trace.export.SpanData.Attributes
    public int getDroppedAttributesCount() {
        return this.f94944b;
    }

    public int hashCode() {
        return this.f94944b ^ ((this.f94943a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "Attributes{attributeMap=" + this.f94943a + ", droppedAttributesCount=" + this.f94944b + "}";
    }
}
