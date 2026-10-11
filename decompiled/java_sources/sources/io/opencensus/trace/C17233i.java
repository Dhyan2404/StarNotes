package io.opencensus.trace;

import io.opencensus.trace.Tracestate;
import java.util.List;

/* renamed from: io.opencensus.trace.i */
/* loaded from: classes10.dex */
public final class C17233i extends Tracestate {

    /* renamed from: d */
    public final List<Tracestate.Entry> f94973d;

    public C17233i(List<Tracestate.Entry> list) {
        if (list == null) {
            throw new NullPointerException("Null entries");
        }
        this.f94973d = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Tracestate) {
            return this.f94973d.equals(((Tracestate) obj).getEntries());
        }
        return false;
    }

    @Override // io.opencensus.trace.Tracestate
    public List<Tracestate.Entry> getEntries() {
        return this.f94973d;
    }

    public int hashCode() {
        return this.f94973d.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Tracestate{entries=" + this.f94973d + "}";
    }
}
