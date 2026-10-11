package io.opencensus.stats;

import io.opencensus.stats.Aggregation;
import javax.annotation.concurrent.Immutable;

@Deprecated
@Immutable
/* renamed from: io.opencensus.stats.k */
/* loaded from: classes10.dex */
public final class C17174k extends Aggregation.Mean {
    public boolean equals(Object obj) {
        return obj == this || (obj instanceof Aggregation.Mean);
    }

    public int hashCode() {
        return 1;
    }

    public String toString() {
        return "Mean{}";
    }
}
