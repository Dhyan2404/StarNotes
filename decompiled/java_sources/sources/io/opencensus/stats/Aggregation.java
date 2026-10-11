package io.opencensus.stats;

import io.opencensus.common.Function;
import io.opencensus.internal.Utils;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class Aggregation {

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class Count extends Aggregation {

        /* renamed from: a */
        public static final Count f94757a = new C17171h();

        public Count() {
            super();
        }

        public static Count create() {
            return f94757a;
        }

        @Override // io.opencensus.stats.Aggregation
        public final <T> T match(Function<? super Sum, T> function, Function<? super Count, T> function2, Function<? super Distribution, T> function3, Function<? super LastValue, T> function4, Function<? super Aggregation, T> function5) {
            return function2.apply(this);
        }
    }

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class Distribution extends Aggregation {
        public Distribution() {
            super();
        }

        public static Distribution create(BucketBoundaries bucketBoundaries) {
            Utils.checkNotNull(bucketBoundaries, "bucketBoundaries");
            return new C17172i(bucketBoundaries);
        }

        public abstract BucketBoundaries getBucketBoundaries();

        @Override // io.opencensus.stats.Aggregation
        public final <T> T match(Function<? super Sum, T> function, Function<? super Count, T> function2, Function<? super Distribution, T> function3, Function<? super LastValue, T> function4, Function<? super Aggregation, T> function5) {
            return function3.apply(this);
        }
    }

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class LastValue extends Aggregation {

        /* renamed from: a */
        public static final LastValue f94758a = new C17173j();

        public LastValue() {
            super();
        }

        public static LastValue create() {
            return f94758a;
        }

        @Override // io.opencensus.stats.Aggregation
        public final <T> T match(Function<? super Sum, T> function, Function<? super Count, T> function2, Function<? super Distribution, T> function3, Function<? super LastValue, T> function4, Function<? super Aggregation, T> function5) {
            return function4.apply(this);
        }
    }

    @Deprecated
    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class Mean extends Aggregation {

        /* renamed from: a */
        public static final Mean f94759a = new C17174k();

        public Mean() {
            super();
        }

        public static Mean create() {
            return f94759a;
        }

        @Override // io.opencensus.stats.Aggregation
        public final <T> T match(Function<? super Sum, T> function, Function<? super Count, T> function2, Function<? super Distribution, T> function3, Function<? super LastValue, T> function4, Function<? super Aggregation, T> function5) {
            return function5.apply(this);
        }
    }

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class Sum extends Aggregation {

        /* renamed from: a */
        public static final Sum f94760a = new C17175l();

        public Sum() {
            super();
        }

        public static Sum create() {
            return f94760a;
        }

        @Override // io.opencensus.stats.Aggregation
        public final <T> T match(Function<? super Sum, T> function, Function<? super Count, T> function2, Function<? super Distribution, T> function3, Function<? super LastValue, T> function4, Function<? super Aggregation, T> function5) {
            return function.apply(this);
        }
    }

    public abstract <T> T match(Function<? super Sum, T> function, Function<? super Count, T> function2, Function<? super Distribution, T> function3, Function<? super LastValue, T> function4, Function<? super Aggregation, T> function5);

    public Aggregation() {
    }
}
