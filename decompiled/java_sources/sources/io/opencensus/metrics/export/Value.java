package io.opencensus.metrics.export;

import io.opencensus.common.Function;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class Value {

    @Immutable
    /* renamed from: io.opencensus.metrics.export.Value$a */
    /* loaded from: classes10.dex */
    public static abstract class AbstractC17135a extends Value {
        /* renamed from: a */
        public static AbstractC17135a m61001a(Distribution distribution) {
            return new C17146h(distribution);
        }

        /* renamed from: b */
        public abstract Distribution mo61002b();

        @Override // io.opencensus.metrics.export.Value
        public final <T> T match(Function<? super Double, T> function, Function<? super Long, T> function2, Function<? super Distribution, T> function3, Function<? super Summary, T> function4, Function<? super Value, T> function5) {
            return function3.apply(mo61002b());
        }
    }

    @Immutable
    /* renamed from: io.opencensus.metrics.export.Value$b */
    /* loaded from: classes10.dex */
    public static abstract class AbstractC17136b extends Value {
        /* renamed from: a */
        public static AbstractC17136b m61003a(double d) {
            return new C17147i(d);
        }

        /* renamed from: b */
        public abstract double mo61004b();

        @Override // io.opencensus.metrics.export.Value
        public final <T> T match(Function<? super Double, T> function, Function<? super Long, T> function2, Function<? super Distribution, T> function3, Function<? super Summary, T> function4, Function<? super Value, T> function5) {
            return function.apply(Double.valueOf(mo61004b()));
        }
    }

    @Immutable
    /* renamed from: io.opencensus.metrics.export.Value$c */
    /* loaded from: classes10.dex */
    public static abstract class AbstractC17137c extends Value {
        /* renamed from: a */
        public static AbstractC17137c m61005a(long j) {
            return new C17148j(j);
        }

        /* renamed from: b */
        public abstract long mo61006b();

        @Override // io.opencensus.metrics.export.Value
        public final <T> T match(Function<? super Double, T> function, Function<? super Long, T> function2, Function<? super Distribution, T> function3, Function<? super Summary, T> function4, Function<? super Value, T> function5) {
            return function2.apply(Long.valueOf(mo61006b()));
        }
    }

    @Immutable
    /* renamed from: io.opencensus.metrics.export.Value$d */
    /* loaded from: classes10.dex */
    public static abstract class AbstractC17138d extends Value {
        /* renamed from: a */
        public static AbstractC17138d m61007a(Summary summary) {
            return new C17149k(summary);
        }

        /* renamed from: b */
        public abstract Summary mo61008b();

        @Override // io.opencensus.metrics.export.Value
        public final <T> T match(Function<? super Double, T> function, Function<? super Long, T> function2, Function<? super Distribution, T> function3, Function<? super Summary, T> function4, Function<? super Value, T> function5) {
            return function4.apply(mo61008b());
        }
    }

    public static Value distributionValue(Distribution distribution) {
        return AbstractC17135a.m61001a(distribution);
    }

    public static Value doubleValue(double d) {
        return AbstractC17136b.m61003a(d);
    }

    public static Value longValue(long j) {
        return AbstractC17137c.m61005a(j);
    }

    public static Value summaryValue(Summary summary) {
        return AbstractC17138d.m61007a(summary);
    }

    public abstract <T> T match(Function<? super Double, T> function, Function<? super Long, T> function2, Function<? super Distribution, T> function3, Function<? super Summary, T> function4, Function<? super Value, T> function5);
}
