package io.opencensus.stats;

import io.opencensus.stats.View;
import javax.annotation.concurrent.Immutable;

@Deprecated
@Immutable
/* renamed from: io.opencensus.stats.u */
/* loaded from: classes10.dex */
public final class C17184u extends View.AggregationWindow.Cumulative {
    public boolean equals(Object obj) {
        return obj == this || (obj instanceof View.AggregationWindow.Cumulative);
    }

    public int hashCode() {
        return 1;
    }

    public String toString() {
        return "Cumulative{}";
    }
}
