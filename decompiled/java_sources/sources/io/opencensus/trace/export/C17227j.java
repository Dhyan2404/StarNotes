package io.opencensus.trace.export;

import io.opencensus.trace.Link;
import io.opencensus.trace.export.SpanData;
import java.util.List;

/* renamed from: io.opencensus.trace.export.j */
/* loaded from: classes10.dex */
public final class C17227j extends SpanData.Links {

    /* renamed from: a */
    public final List<Link> f94945a;

    /* renamed from: b */
    public final int f94946b;

    public C17227j(List<Link> list, int i) {
        if (list == null) {
            throw new NullPointerException("Null links");
        }
        this.f94945a = list;
        this.f94946b = i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SpanData.Links)) {
            return false;
        }
        SpanData.Links links = (SpanData.Links) obj;
        return this.f94945a.equals(links.getLinks()) && this.f94946b == links.getDroppedLinksCount();
    }

    @Override // io.opencensus.trace.export.SpanData.Links
    public int getDroppedLinksCount() {
        return this.f94946b;
    }

    @Override // io.opencensus.trace.export.SpanData.Links
    public List<Link> getLinks() {
        return this.f94945a;
    }

    public int hashCode() {
        return this.f94946b ^ ((this.f94945a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "Links{links=" + this.f94945a + ", droppedLinksCount=" + this.f94946b + "}";
    }
}
