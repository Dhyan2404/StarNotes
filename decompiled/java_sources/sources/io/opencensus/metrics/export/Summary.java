package io.opencensus.metrics.export;

import io.opencensus.internal.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class Summary {

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class Snapshot {

        @Immutable
        /* loaded from: classes10.dex */
        public static abstract class ValueAtPercentile {
            public static ValueAtPercentile create(double d, double d2) {
                Utils.checkArgument(0.0d < d && d <= 100.0d, "percentile must be in the interval (0.0, 100.0]");
                Utils.checkArgument(d2 >= 0.0d, "value must be non-negative");
                return new C17145g(d, d2);
            }

            public abstract double getPercentile();

            public abstract double getValue();
        }

        public static Snapshot create(@Nullable Long l, @Nullable Double d, List<ValueAtPercentile> list) {
            Summary.m60999b(l, d);
            Utils.checkListElementNotNull((List) Utils.checkNotNull(list, "valueAtPercentiles"), "valueAtPercentile");
            return new C17144f(l, d, Collections.unmodifiableList(new ArrayList(list)));
        }

        @Nullable
        public abstract Long getCount();

        @Nullable
        public abstract Double getSum();

        public abstract List<ValueAtPercentile> getValueAtPercentiles();
    }

    /* renamed from: b */
    public static void m60999b(@Nullable Long l, @Nullable Double d) {
        Utils.checkArgument(l == null || l.longValue() >= 0, "count must be non-negative.");
        Utils.checkArgument(d == null || d.doubleValue() >= 0.0d, "sum must be non-negative.");
        if (l == null || l.longValue() != 0) {
            return;
        }
        Utils.checkArgument(d == null || d.doubleValue() == 0.0d, "sum must be 0 if count is 0.");
    }

    public static Summary create(@Nullable Long l, @Nullable Double d, Snapshot snapshot) {
        m60999b(l, d);
        Utils.checkNotNull(snapshot, "snapshot");
        return new C17143e(l, d, snapshot);
    }

    @Nullable
    public abstract Long getCount();

    public abstract Snapshot getSnapshot();

    @Nullable
    public abstract Double getSum();
}
