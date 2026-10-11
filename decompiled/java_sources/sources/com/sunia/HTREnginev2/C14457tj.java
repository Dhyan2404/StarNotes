package com.sunia.HTREnginev2;

import io.opencensus.common.Timestamp;
import io.opencensus.metrics.data.AttachmentValue;
import io.opencensus.metrics.data.Exemplar;
import java.util.Map;

/* renamed from: com.sunia.HTREnginev2.tj */
/* loaded from: classes10.dex */
public final class C14457tj extends Exemplar {

    /* renamed from: a */
    public final double f85349a;

    /* renamed from: b */
    public final Timestamp f85350b;

    /* renamed from: c */
    public final Map<String, AttachmentValue> f85351c;

    public C14457tj(double d, Timestamp timestamp, Map<String, AttachmentValue> map) {
        this.f85349a = d;
        if (timestamp == null) {
            throw new NullPointerException("Null timestamp");
        }
        this.f85350b = timestamp;
        if (map == null) {
            throw new NullPointerException("Null attachments");
        }
        this.f85351c = map;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Exemplar)) {
            return false;
        }
        Exemplar exemplar = (Exemplar) obj;
        return Double.doubleToLongBits(this.f85349a) == Double.doubleToLongBits(exemplar.getValue()) && this.f85350b.equals(exemplar.getTimestamp()) && this.f85351c.equals(exemplar.getAttachments());
    }

    @Override // io.opencensus.metrics.data.Exemplar
    public Map<String, AttachmentValue> getAttachments() {
        return this.f85351c;
    }

    @Override // io.opencensus.metrics.data.Exemplar
    public Timestamp getTimestamp() {
        return this.f85350b;
    }

    @Override // io.opencensus.metrics.data.Exemplar
    public double getValue() {
        return this.f85349a;
    }

    public int hashCode() {
        return this.f85351c.hashCode() ^ (((((int) (1000003 ^ ((Double.doubleToLongBits(this.f85349a) >>> 32) ^ Double.doubleToLongBits(this.f85349a)))) * 1000003) ^ this.f85350b.hashCode()) * 1000003);
    }

    public String toString() {
        return "Exemplar{value=" + this.f85349a + ", timestamp=" + this.f85350b + ", attachments=" + this.f85351c + "}";
    }
}
