package io.opencensus.stats;

import io.opencensus.common.Duration;
import io.opencensus.common.Function;
import io.opencensus.common.Functions;
import io.opencensus.common.Timestamp;
import io.opencensus.stats.Aggregation;
import io.opencensus.stats.AggregationData;
import io.opencensus.stats.Measure;
import io.opencensus.stats.View;
import io.opencensus.tags.TagValue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class ViewData {

    @Deprecated
    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class AggregationWindowData {

        @Deprecated
        @Immutable
        /* loaded from: classes10.dex */
        public static abstract class CumulativeData extends AggregationWindowData {
            public CumulativeData() {
                super(null);
            }

            public static CumulativeData create(Timestamp timestamp, Timestamp timestamp2) {
                if (timestamp.compareTo(timestamp2) <= 0) {
                    return new C17182s(timestamp, timestamp2);
                }
                throw new IllegalArgumentException("Start time is later than end time.");
            }

            public abstract Timestamp getEnd();

            public abstract Timestamp getStart();

            @Override // io.opencensus.stats.ViewData.AggregationWindowData
            public final <T> T match(Function<? super CumulativeData, T> function, Function<? super IntervalData, T> function2, Function<? super AggregationWindowData, T> function3) {
                return function.apply(this);
            }
        }

        @Deprecated
        @Immutable
        /* loaded from: classes10.dex */
        public static abstract class IntervalData extends AggregationWindowData {
            public IntervalData() {
                super(null);
            }

            public static IntervalData create(Timestamp timestamp) {
                return new C17183t(timestamp);
            }

            public abstract Timestamp getEnd();

            @Override // io.opencensus.stats.ViewData.AggregationWindowData
            public final <T> T match(Function<? super CumulativeData, T> function, Function<? super IntervalData, T> function2, Function<? super AggregationWindowData, T> function3) {
                return function2.apply(this);
            }
        }

        public /* synthetic */ AggregationWindowData(C17155a c17155a) {
            this();
        }

        public abstract <T> T match(Function<? super CumulativeData, T> function, Function<? super IntervalData, T> function2, Function<? super AggregationWindowData, T> function3);

        public AggregationWindowData() {
        }
    }

    /* renamed from: io.opencensus.stats.ViewData$a */
    /* loaded from: classes10.dex */
    public class C17155a implements Function<AggregationWindowData.CumulativeData, ViewData> {

        /* renamed from: a */
        public final /* synthetic */ View f94770a;

        /* renamed from: b */
        public final /* synthetic */ Map f94771b;

        public C17155a(View view, Map map) {
            this.f94770a = view;
            this.f94771b = map;
        }

        @Override // io.opencensus.common.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ViewData apply(AggregationWindowData.CumulativeData cumulativeData) {
            return ViewData.m61025h(this.f94770a, Collections.unmodifiableMap(this.f94771b), cumulativeData, cumulativeData.getStart(), cumulativeData.getEnd());
        }
    }

    /* renamed from: io.opencensus.stats.ViewData$b */
    /* loaded from: classes10.dex */
    public class C17156b implements Function<AggregationWindowData.IntervalData, ViewData> {

        /* renamed from: a */
        public final /* synthetic */ View f94772a;

        /* renamed from: b */
        public final /* synthetic */ Map f94773b;

        public C17156b(View view, Map map) {
            this.f94772a = view;
            this.f94773b = map;
        }

        @Override // io.opencensus.common.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ViewData apply(AggregationWindowData.IntervalData intervalData) {
            Duration duration = ((View.AggregationWindow.Interval) this.f94772a.getWindow()).getDuration();
            return ViewData.m61025h(this.f94772a, Collections.unmodifiableMap(this.f94773b), intervalData, intervalData.getEnd().addDuration(Duration.create(-duration.getSeconds(), -duration.getNanos())), intervalData.getEnd());
        }
    }

    /* renamed from: io.opencensus.stats.ViewData$c */
    /* loaded from: classes10.dex */
    public class C17157c implements Function<View.AggregationWindow.Cumulative, Void> {

        /* renamed from: a */
        public final /* synthetic */ AggregationWindowData f94774a;

        public C17157c(AggregationWindowData aggregationWindowData) {
            this.f94774a = aggregationWindowData;
        }

        @Override // io.opencensus.common.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void apply(View.AggregationWindow.Cumulative cumulative) {
            AggregationWindowData aggregationWindowData = this.f94774a;
            ViewData.m61027j(aggregationWindowData instanceof AggregationWindowData.CumulativeData, cumulative, aggregationWindowData);
            return null;
        }
    }

    /* renamed from: io.opencensus.stats.ViewData$d */
    /* loaded from: classes10.dex */
    public class C17158d implements Function<View.AggregationWindow.Interval, Void> {

        /* renamed from: a */
        public final /* synthetic */ AggregationWindowData f94775a;

        public C17158d(AggregationWindowData aggregationWindowData) {
            this.f94775a = aggregationWindowData;
        }

        @Override // io.opencensus.common.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void apply(View.AggregationWindow.Interval interval) {
            AggregationWindowData aggregationWindowData = this.f94775a;
            ViewData.m61027j(aggregationWindowData instanceof AggregationWindowData.IntervalData, interval, aggregationWindowData);
            return null;
        }
    }

    /* renamed from: io.opencensus.stats.ViewData$e */
    /* loaded from: classes10.dex */
    public class C17159e implements Function<Aggregation.Sum, Void> {

        /* renamed from: a */
        public final /* synthetic */ Measure f94776a;

        /* renamed from: b */
        public final /* synthetic */ AggregationData f94777b;

        /* renamed from: c */
        public final /* synthetic */ Aggregation f94778c;

        /* renamed from: io.opencensus.stats.ViewData$e$a */
        /* loaded from: classes10.dex */
        public class a implements Function<Measure.MeasureDouble, Void> {
            public a() {
            }

            @Override // io.opencensus.common.Function
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void apply(Measure.MeasureDouble measureDouble) {
                C17159e c17159e = C17159e.this;
                AggregationData aggregationData = c17159e.f94777b;
                ViewData.m61026i(aggregationData instanceof AggregationData.SumDataDouble, c17159e.f94778c, aggregationData);
                return null;
            }
        }

        /* renamed from: io.opencensus.stats.ViewData$e$b */
        /* loaded from: classes10.dex */
        public class b implements Function<Measure.MeasureLong, Void> {
            public b() {
            }

            @Override // io.opencensus.common.Function
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void apply(Measure.MeasureLong measureLong) {
                C17159e c17159e = C17159e.this;
                AggregationData aggregationData = c17159e.f94777b;
                ViewData.m61026i(aggregationData instanceof AggregationData.SumDataLong, c17159e.f94778c, aggregationData);
                return null;
            }
        }

        public C17159e(Measure measure, AggregationData aggregationData, Aggregation aggregation) {
            this.f94776a = measure;
            this.f94777b = aggregationData;
            this.f94778c = aggregation;
        }

        @Override // io.opencensus.common.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void apply(Aggregation.Sum sum) {
            this.f94776a.match(new a(), new b(), Functions.throwAssertionError());
            return null;
        }
    }

    /* renamed from: io.opencensus.stats.ViewData$f */
    /* loaded from: classes10.dex */
    public class C17160f implements Function<Aggregation.Count, Void> {

        /* renamed from: a */
        public final /* synthetic */ AggregationData f94781a;

        /* renamed from: b */
        public final /* synthetic */ Aggregation f94782b;

        public C17160f(AggregationData aggregationData, Aggregation aggregation) {
            this.f94781a = aggregationData;
            this.f94782b = aggregation;
        }

        @Override // io.opencensus.common.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void apply(Aggregation.Count count) {
            AggregationData aggregationData = this.f94781a;
            ViewData.m61026i(aggregationData instanceof AggregationData.CountData, this.f94782b, aggregationData);
            return null;
        }
    }

    /* renamed from: io.opencensus.stats.ViewData$g */
    /* loaded from: classes10.dex */
    public class C17161g implements Function<Aggregation.Distribution, Void> {

        /* renamed from: a */
        public final /* synthetic */ AggregationData f94783a;

        /* renamed from: b */
        public final /* synthetic */ Aggregation f94784b;

        public C17161g(AggregationData aggregationData, Aggregation aggregation) {
            this.f94783a = aggregationData;
            this.f94784b = aggregation;
        }

        @Override // io.opencensus.common.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void apply(Aggregation.Distribution distribution) {
            AggregationData aggregationData = this.f94783a;
            ViewData.m61026i(aggregationData instanceof AggregationData.DistributionData, this.f94784b, aggregationData);
            return null;
        }
    }

    /* renamed from: io.opencensus.stats.ViewData$h */
    /* loaded from: classes10.dex */
    public class C17162h implements Function<Aggregation.LastValue, Void> {

        /* renamed from: a */
        public final /* synthetic */ Measure f94785a;

        /* renamed from: b */
        public final /* synthetic */ AggregationData f94786b;

        /* renamed from: c */
        public final /* synthetic */ Aggregation f94787c;

        /* renamed from: io.opencensus.stats.ViewData$h$a */
        /* loaded from: classes10.dex */
        public class a implements Function<Measure.MeasureDouble, Void> {
            public a() {
            }

            @Override // io.opencensus.common.Function
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void apply(Measure.MeasureDouble measureDouble) {
                C17162h c17162h = C17162h.this;
                AggregationData aggregationData = c17162h.f94786b;
                ViewData.m61026i(aggregationData instanceof AggregationData.LastValueDataDouble, c17162h.f94787c, aggregationData);
                return null;
            }
        }

        /* renamed from: io.opencensus.stats.ViewData$h$b */
        /* loaded from: classes10.dex */
        public class b implements Function<Measure.MeasureLong, Void> {
            public b() {
            }

            @Override // io.opencensus.common.Function
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void apply(Measure.MeasureLong measureLong) {
                C17162h c17162h = C17162h.this;
                AggregationData aggregationData = c17162h.f94786b;
                ViewData.m61026i(aggregationData instanceof AggregationData.LastValueDataLong, c17162h.f94787c, aggregationData);
                return null;
            }
        }

        public C17162h(Measure measure, AggregationData aggregationData, Aggregation aggregation) {
            this.f94785a = measure;
            this.f94786b = aggregationData;
            this.f94787c = aggregation;
        }

        @Override // io.opencensus.common.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void apply(Aggregation.LastValue lastValue) {
            this.f94785a.match(new a(), new b(), Functions.throwAssertionError());
            return null;
        }
    }

    /* renamed from: io.opencensus.stats.ViewData$i */
    /* loaded from: classes10.dex */
    public class C17163i implements Function<Aggregation, Void> {

        /* renamed from: a */
        public final /* synthetic */ AggregationData f94790a;

        /* renamed from: b */
        public final /* synthetic */ Aggregation f94791b;

        public C17163i(AggregationData aggregationData, Aggregation aggregation) {
            this.f94790a = aggregationData;
            this.f94791b = aggregation;
        }

        @Override // io.opencensus.common.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void apply(Aggregation aggregation) {
            if (!(aggregation instanceof Aggregation.Mean)) {
                throw new AssertionError();
            }
            AggregationData aggregationData = this.f94790a;
            ViewData.m61026i(aggregationData instanceof AggregationData.MeanData, this.f94791b, aggregationData);
            return null;
        }
    }

    @Deprecated
    public static ViewData create(View view, Map<? extends List<TagValue>, ? extends AggregationData> map, AggregationWindowData aggregationWindowData) {
        m61022e(view.getWindow(), aggregationWindowData);
        HashMap hashMap = new HashMap();
        for (Map.Entry<? extends List<TagValue>, ? extends AggregationData> entry : map.entrySet()) {
            m61021d(view.getAggregation(), entry.getValue(), view.getMeasure());
            hashMap.put(Collections.unmodifiableList(new ArrayList(entry.getKey())), entry.getValue());
        }
        return (ViewData) aggregationWindowData.match(new C17155a(view, hashMap), new C17156b(view, hashMap), Functions.throwAssertionError());
    }

    /* renamed from: d */
    public static void m61021d(Aggregation aggregation, AggregationData aggregationData, Measure measure) {
        aggregation.match(new C17159e(measure, aggregationData, aggregation), new C17160f(aggregationData, aggregation), new C17161g(aggregationData, aggregation), new C17162h(measure, aggregationData, aggregation), new C17163i(aggregationData, aggregation));
    }

    /* renamed from: e */
    public static void m61022e(View.AggregationWindow aggregationWindow, AggregationWindowData aggregationWindowData) {
        aggregationWindow.match(new C17157c(aggregationWindowData), new C17158d(aggregationWindowData), Functions.throwAssertionError());
    }

    /* renamed from: f */
    public static String m61023f(Aggregation aggregation, AggregationData aggregationData) {
        return "Aggregation and AggregationData types mismatch. Aggregation: " + aggregation.getClass().getSimpleName() + " AggregationData: " + aggregationData.getClass().getSimpleName();
    }

    /* renamed from: g */
    public static String m61024g(View.AggregationWindow aggregationWindow, AggregationWindowData aggregationWindowData) {
        return "AggregationWindow and AggregationWindowData types mismatch. AggregationWindow: " + aggregationWindow.getClass().getSimpleName() + " AggregationWindowData: " + aggregationWindowData.getClass().getSimpleName();
    }

    /* renamed from: h */
    public static ViewData m61025h(View view, Map<List<TagValue>, AggregationData> map, AggregationWindowData aggregationWindowData, Timestamp timestamp, Timestamp timestamp2) {
        return new C17181r(view, map, aggregationWindowData, timestamp, timestamp2);
    }

    /* renamed from: i */
    public static void m61026i(boolean z, Aggregation aggregation, AggregationData aggregationData) {
        if (!z) {
            throw new IllegalArgumentException(m61023f(aggregation, aggregationData));
        }
    }

    /* renamed from: j */
    public static void m61027j(boolean z, View.AggregationWindow aggregationWindow, AggregationWindowData aggregationWindowData) {
        if (!z) {
            throw new IllegalArgumentException(m61024g(aggregationWindow, aggregationWindowData));
        }
    }

    public abstract Map<List<TagValue>, AggregationData> getAggregationMap();

    public abstract Timestamp getEnd();

    public abstract Timestamp getStart();

    public abstract View getView();

    @Deprecated
    public abstract AggregationWindowData getWindowData();

    public static ViewData create(View view, Map<? extends List<TagValue>, ? extends AggregationData> map, Timestamp timestamp, Timestamp timestamp2) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<? extends List<TagValue>, ? extends AggregationData> entry : map.entrySet()) {
            m61021d(view.getAggregation(), entry.getValue(), view.getMeasure());
            hashMap.put(Collections.unmodifiableList(new ArrayList(entry.getKey())), entry.getValue());
        }
        return m61025h(view, Collections.unmodifiableMap(hashMap), AggregationWindowData.CumulativeData.create(timestamp, timestamp2), timestamp, timestamp2);
    }
}
