package io.opencensus.metrics.export;

import io.opencensus.common.Function;
import io.opencensus.internal.Utils;
import io.opencensus.metrics.data.Exemplar;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class Distribution {

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class BucketOptions {

        @Immutable
        /* loaded from: classes10.dex */
        public static abstract class ExplicitOptions extends BucketOptions {
            public ExplicitOptions() {
                super();
            }

            /* renamed from: b */
            public static void m60993b(List<Double> list) {
                if (list.size() >= 1) {
                    double doubleValue = ((Double) Utils.checkNotNull(list.get(0), "bucketBoundary")).doubleValue();
                    Utils.checkArgument(doubleValue > 0.0d, "bucket boundary should be > 0");
                    int i = 1;
                    while (i < list.size()) {
                        double doubleValue2 = ((Double) Utils.checkNotNull(list.get(i), "bucketBoundary")).doubleValue();
                        Utils.checkArgument(doubleValue < doubleValue2, "bucket boundaries not sorted.");
                        i++;
                        doubleValue = doubleValue2;
                    }
                }
            }

            /* renamed from: c */
            public static ExplicitOptions m60994c(List<Double> list) {
                Utils.checkNotNull(list, "bucketBoundaries");
                List unmodifiableList = Collections.unmodifiableList(new ArrayList(list));
                m60993b(unmodifiableList);
                return new C17141c(unmodifiableList);
            }

            public abstract List<Double> getBucketBoundaries();

            @Override // io.opencensus.metrics.export.Distribution.BucketOptions
            public final <T> T match(Function<? super ExplicitOptions, T> function, Function<? super BucketOptions, T> function2) {
                return function.apply(this);
            }
        }

        public static BucketOptions explicitOptions(List<Double> list) {
            return ExplicitOptions.m60994c(list);
        }

        public abstract <T> T match(Function<? super ExplicitOptions, T> function, Function<? super BucketOptions, T> function2);

        public BucketOptions() {
        }
    }

    public static Distribution create(long j, double d, double d2, BucketOptions bucketOptions, List<Bucket> list) {
        Utils.checkArgument(j >= 0, "count should be non-negative.");
        Utils.checkArgument(d2 >= 0.0d, "sum of squared deviations should be non-negative.");
        if (j == 0) {
            Utils.checkArgument(d == 0.0d, "sum should be 0 if count is 0.");
            Utils.checkArgument(d2 == 0.0d, "sum of squared deviations should be 0 if count is 0.");
        }
        Utils.checkNotNull(bucketOptions, "bucketOptions");
        List unmodifiableList = Collections.unmodifiableList(new ArrayList((Collection) Utils.checkNotNull(list, "buckets")));
        Utils.checkListElementNotNull(unmodifiableList, "bucket");
        return new C17139a(j, d, d2, bucketOptions, unmodifiableList);
    }

    @Nullable
    public abstract BucketOptions getBucketOptions();

    public abstract List<Bucket> getBuckets();

    public abstract long getCount();

    public abstract double getSum();

    public abstract double getSumOfSquaredDeviations();

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class Bucket {
        public static Bucket create(long j) {
            Utils.checkArgument(j >= 0, "bucket count should be non-negative.");
            return new C17140b(j, null);
        }

        public abstract long getCount();

        @Nullable
        public abstract Exemplar getExemplar();

        public static Bucket create(long j, Exemplar exemplar) {
            Utils.checkArgument(j >= 0, "bucket count should be non-negative.");
            Utils.checkNotNull(exemplar, "exemplar");
            return new C17140b(j, exemplar);
        }
    }
}
