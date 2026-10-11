package io.opencensus.trace.export;

import io.opencensus.internal.Utils;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.Immutable;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes10.dex */
public abstract class RunningSpanStore {

    /* renamed from: a */
    public static final RunningSpanStore f94911a = new C17213b();

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class Filter {
        public static Filter create(String str, int i) {
            Utils.checkArgument(i >= 0, "Negative maxSpansToReturn.");
            return new C17218a(str, i);
        }

        public abstract int getMaxSpansToReturn();

        public abstract String getSpanName();
    }

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class PerSpanNameSummary {
        public static PerSpanNameSummary create(int i) {
            Utils.checkArgument(i >= 0, "Negative numRunningSpans.");
            return new C17219b(i);
        }

        public abstract int getNumRunningSpans();
    }

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class Summary {
        public static Summary create(Map<String, PerSpanNameSummary> map) {
            return new C17220c(Collections.unmodifiableMap(new HashMap((Map) Utils.checkNotNull(map, "perSpanNameSummary"))));
        }

        public abstract Map<String, PerSpanNameSummary> getPerSpanNameSummary();
    }

    /* renamed from: io.opencensus.trace.export.RunningSpanStore$b */
    /* loaded from: classes10.dex */
    public static final class C17213b extends RunningSpanStore {

        /* renamed from: b */
        public static final Summary f94912b = Summary.create(Collections.emptyMap());

        public C17213b() {
        }

        @Override // io.opencensus.trace.export.RunningSpanStore
        public Collection<SpanData> getRunningSpans(Filter filter) {
            Utils.checkNotNull(filter, "filter");
            return Collections.emptyList();
        }

        @Override // io.opencensus.trace.export.RunningSpanStore
        public Summary getSummary() {
            return f94912b;
        }

        @Override // io.opencensus.trace.export.RunningSpanStore
        public void setMaxNumberOfSpans(int i) {
            Utils.checkArgument(i >= 0, "Invalid negative maxNumberOfElements");
        }
    }

    /* renamed from: a */
    public static RunningSpanStore m61079a() {
        return f94911a;
    }

    public abstract Collection<SpanData> getRunningSpans(Filter filter);

    public abstract Summary getSummary();

    public abstract void setMaxNumberOfSpans(int i);
}
