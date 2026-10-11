package io.opencensus.trace.export;

import io.opencensus.internal.Utils;
import io.opencensus.trace.Status;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.Immutable;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes10.dex */
public abstract class SampledSpanStore {

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class ErrorFilter {
        public static ErrorFilter create(String str, @Nullable Status.CanonicalCode canonicalCode, int i) {
            if (canonicalCode != null) {
                Utils.checkArgument(canonicalCode != Status.CanonicalCode.OK, "Invalid canonical code.");
            }
            Utils.checkArgument(i >= 0, "Negative maxSpansToReturn.");
            return new C17221d(str, canonicalCode, i);
        }

        @Nullable
        public abstract Status.CanonicalCode getCanonicalCode();

        public abstract int getMaxSpansToReturn();

        public abstract String getSpanName();
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'ZERO_MICROSx10' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes10.dex */
    public static final class LatencyBucketBoundaries {
        private static final /* synthetic */ LatencyBucketBoundaries[] $VALUES;
        public static final LatencyBucketBoundaries MICROSx100_MILLIx1;
        public static final LatencyBucketBoundaries MICROSx10_MICROSx100;
        public static final LatencyBucketBoundaries MILLIx100_SECONDx1;
        public static final LatencyBucketBoundaries MILLIx10_MILLIx100;
        public static final LatencyBucketBoundaries MILLIx1_MILLIx10;
        public static final LatencyBucketBoundaries SECONDx100_MAX;
        public static final LatencyBucketBoundaries SECONDx10_SECONDx100;
        public static final LatencyBucketBoundaries SECONDx1_SECONDx10;
        public static final LatencyBucketBoundaries ZERO_MICROSx10;
        private final long latencyLowerNs;
        private final long latencyUpperNs;

        static {
            TimeUnit timeUnit = TimeUnit.MICROSECONDS;
            LatencyBucketBoundaries latencyBucketBoundaries = new LatencyBucketBoundaries("ZERO_MICROSx10", 0, 0L, timeUnit.toNanos(10L));
            ZERO_MICROSx10 = latencyBucketBoundaries;
            LatencyBucketBoundaries latencyBucketBoundaries2 = new LatencyBucketBoundaries("MICROSx10_MICROSx100", 1, timeUnit.toNanos(10L), timeUnit.toNanos(100L));
            MICROSx10_MICROSx100 = latencyBucketBoundaries2;
            long nanos = timeUnit.toNanos(100L);
            TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
            LatencyBucketBoundaries latencyBucketBoundaries3 = new LatencyBucketBoundaries("MICROSx100_MILLIx1", 2, nanos, timeUnit2.toNanos(1L));
            MICROSx100_MILLIx1 = latencyBucketBoundaries3;
            LatencyBucketBoundaries latencyBucketBoundaries4 = new LatencyBucketBoundaries("MILLIx1_MILLIx10", 3, timeUnit2.toNanos(1L), timeUnit2.toNanos(10L));
            MILLIx1_MILLIx10 = latencyBucketBoundaries4;
            LatencyBucketBoundaries latencyBucketBoundaries5 = new LatencyBucketBoundaries("MILLIx10_MILLIx100", 4, timeUnit2.toNanos(10L), timeUnit2.toNanos(100L));
            MILLIx10_MILLIx100 = latencyBucketBoundaries5;
            long nanos2 = timeUnit2.toNanos(100L);
            TimeUnit timeUnit3 = TimeUnit.SECONDS;
            LatencyBucketBoundaries latencyBucketBoundaries6 = new LatencyBucketBoundaries("MILLIx100_SECONDx1", 5, nanos2, timeUnit3.toNanos(1L));
            MILLIx100_SECONDx1 = latencyBucketBoundaries6;
            LatencyBucketBoundaries latencyBucketBoundaries7 = new LatencyBucketBoundaries("SECONDx1_SECONDx10", 6, timeUnit3.toNanos(1L), timeUnit3.toNanos(10L));
            SECONDx1_SECONDx10 = latencyBucketBoundaries7;
            LatencyBucketBoundaries latencyBucketBoundaries8 = new LatencyBucketBoundaries("SECONDx10_SECONDx100", 7, timeUnit3.toNanos(10L), timeUnit3.toNanos(100L));
            SECONDx10_SECONDx100 = latencyBucketBoundaries8;
            LatencyBucketBoundaries latencyBucketBoundaries9 = new LatencyBucketBoundaries("SECONDx100_MAX", 8, timeUnit3.toNanos(100L), Long.MAX_VALUE);
            SECONDx100_MAX = latencyBucketBoundaries9;
            $VALUES = new LatencyBucketBoundaries[]{latencyBucketBoundaries, latencyBucketBoundaries2, latencyBucketBoundaries3, latencyBucketBoundaries4, latencyBucketBoundaries5, latencyBucketBoundaries6, latencyBucketBoundaries7, latencyBucketBoundaries8, latencyBucketBoundaries9};
        }

        private LatencyBucketBoundaries(String str, int i, long j, long j2) {
            this.latencyLowerNs = j;
            this.latencyUpperNs = j2;
        }

        public static LatencyBucketBoundaries valueOf(String str) {
            return (LatencyBucketBoundaries) Enum.valueOf(LatencyBucketBoundaries.class, str);
        }

        public static LatencyBucketBoundaries[] values() {
            return (LatencyBucketBoundaries[]) $VALUES.clone();
        }

        public long getLatencyLowerNs() {
            return this.latencyLowerNs;
        }

        public long getLatencyUpperNs() {
            return this.latencyUpperNs;
        }
    }

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class LatencyFilter {
        public static LatencyFilter create(String str, long j, long j2, int i) {
            Utils.checkArgument(i >= 0, "Negative maxSpansToReturn.");
            Utils.checkArgument(j >= 0, "Negative latencyLowerNs");
            Utils.checkArgument(j2 >= 0, "Negative latencyUpperNs");
            return new C17222e(str, j, j2, i);
        }

        public abstract long getLatencyLowerNs();

        public abstract long getLatencyUpperNs();

        public abstract int getMaxSpansToReturn();

        public abstract String getSpanName();
    }

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class PerSpanNameSummary {
        public static PerSpanNameSummary create(Map<LatencyBucketBoundaries, Integer> map, Map<Status.CanonicalCode, Integer> map2) {
            return new C17223f(Collections.unmodifiableMap(new HashMap((Map) Utils.checkNotNull(map, "numbersOfLatencySampledSpans"))), Collections.unmodifiableMap(new HashMap((Map) Utils.checkNotNull(map2, "numbersOfErrorSampledSpans"))));
        }

        public abstract Map<Status.CanonicalCode, Integer> getNumbersOfErrorSampledSpans();

        public abstract Map<LatencyBucketBoundaries, Integer> getNumbersOfLatencySampledSpans();
    }

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class Summary {
        public static Summary create(Map<String, PerSpanNameSummary> map) {
            return new C17224g(Collections.unmodifiableMap(new HashMap((Map) Utils.checkNotNull(map, "perSpanNameSummary"))));
        }

        public abstract Map<String, PerSpanNameSummary> getPerSpanNameSummary();
    }

    @ThreadSafe
    /* renamed from: io.opencensus.trace.export.SampledSpanStore$b */
    /* loaded from: classes10.dex */
    public static final class C17215b extends SampledSpanStore {

        /* renamed from: b */
        public static final PerSpanNameSummary f94913b = PerSpanNameSummary.create(Collections.emptyMap(), Collections.emptyMap());

        /* renamed from: a */
        @GuardedBy("registeredSpanNames")
        public final Set<String> f94914a;

        public C17215b() {
            this.f94914a = new HashSet();
        }

        @Override // io.opencensus.trace.export.SampledSpanStore
        public Collection<SpanData> getErrorSampledSpans(ErrorFilter errorFilter) {
            Utils.checkNotNull(errorFilter, "errorFilter");
            return Collections.emptyList();
        }

        @Override // io.opencensus.trace.export.SampledSpanStore
        public Collection<SpanData> getLatencySampledSpans(LatencyFilter latencyFilter) {
            Utils.checkNotNull(latencyFilter, "latencyFilter");
            return Collections.emptyList();
        }

        @Override // io.opencensus.trace.export.SampledSpanStore
        public Set<String> getRegisteredSpanNamesForCollection() {
            Set<String> unmodifiableSet;
            synchronized (this.f94914a) {
                unmodifiableSet = Collections.unmodifiableSet(new HashSet(this.f94914a));
            }
            return unmodifiableSet;
        }

        @Override // io.opencensus.trace.export.SampledSpanStore
        public Summary getSummary() {
            HashMap hashMap = new HashMap();
            synchronized (this.f94914a) {
                Iterator<String> it2 = this.f94914a.iterator();
                while (it2.hasNext()) {
                    hashMap.put(it2.next(), f94913b);
                }
            }
            return Summary.create(hashMap);
        }

        @Override // io.opencensus.trace.export.SampledSpanStore
        public void registerSpanNamesForCollection(Collection<String> collection) {
            Utils.checkNotNull(collection, "spanNames");
            synchronized (this.f94914a) {
                this.f94914a.addAll(collection);
            }
        }

        @Override // io.opencensus.trace.export.SampledSpanStore
        public void unregisterSpanNamesForCollection(Collection<String> collection) {
            Utils.checkNotNull(collection, "spanNames");
            synchronized (this.f94914a) {
                this.f94914a.removeAll(collection);
            }
        }
    }

    /* renamed from: a */
    public static SampledSpanStore m61080a() {
        return new C17215b();
    }

    public abstract Collection<SpanData> getErrorSampledSpans(ErrorFilter errorFilter);

    public abstract Collection<SpanData> getLatencySampledSpans(LatencyFilter latencyFilter);

    public abstract Set<String> getRegisteredSpanNamesForCollection();

    public abstract Summary getSummary();

    @Deprecated
    public abstract void registerSpanNamesForCollection(Collection<String> collection);

    @Deprecated
    public abstract void unregisterSpanNamesForCollection(Collection<String> collection);
}
