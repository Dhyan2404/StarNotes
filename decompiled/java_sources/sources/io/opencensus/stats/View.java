package io.opencensus.stats;

import io.opencensus.common.Duration;
import io.opencensus.common.Function;
import io.opencensus.internal.StringUtils;
import io.opencensus.internal.Utils;
import io.opencensus.tags.TagKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class View {

    /* renamed from: a */
    public static final int f94766a = 255;

    /* renamed from: b */
    public static final Comparator<TagKey> f94767b = new C17154a();

    @Deprecated
    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class AggregationWindow {

        @Deprecated
        @Immutable
        /* loaded from: classes10.dex */
        public static abstract class Cumulative extends AggregationWindow {

            /* renamed from: a */
            public static final Cumulative f94768a = new C17184u();

            public Cumulative() {
                super(null);
            }

            public static Cumulative create() {
                return f94768a;
            }

            @Override // io.opencensus.stats.View.AggregationWindow
            public final <T> T match(Function<? super Cumulative, T> function, Function<? super Interval, T> function2, Function<? super AggregationWindow, T> function3) {
                return function.apply(this);
            }
        }

        @Deprecated
        @Immutable
        /* loaded from: classes10.dex */
        public static abstract class Interval extends AggregationWindow {

            /* renamed from: a */
            public static final Duration f94769a = Duration.create(0, 0);

            public Interval() {
                super(null);
            }

            public static Interval create(Duration duration) {
                Utils.checkArgument(duration.compareTo(f94769a) > 0, "Duration must be positive");
                return new C17185v(duration);
            }

            public abstract Duration getDuration();

            @Override // io.opencensus.stats.View.AggregationWindow
            public final <T> T match(Function<? super Cumulative, T> function, Function<? super Interval, T> function2, Function<? super AggregationWindow, T> function3) {
                return function2.apply(this);
            }
        }

        public /* synthetic */ AggregationWindow(C17154a c17154a) {
            this();
        }

        public abstract <T> T match(Function<? super Cumulative, T> function, Function<? super Interval, T> function2, Function<? super AggregationWindow, T> function3);

        public AggregationWindow() {
        }
    }

    @Immutable
    /* loaded from: classes10.dex */
    public static abstract class Name {
        public static Name create(String str) {
            Utils.checkArgument(StringUtils.isPrintableString(str) && str.length() <= 255, Measure.f94763b);
            return new C17186w(str);
        }

        public abstract String asString();
    }

    /* renamed from: io.opencensus.stats.View$a */
    /* loaded from: classes10.dex */
    public class C17154a implements Comparator<TagKey> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(TagKey tagKey, TagKey tagKey2) {
            return tagKey.getName().compareToIgnoreCase(tagKey2.getName());
        }
    }

    @Deprecated
    public static View create(Name name, String str, Measure measure, Aggregation aggregation, List<TagKey> list, AggregationWindow aggregationWindow) {
        Utils.checkArgument(new HashSet(list).size() == list.size(), "Columns have duplicate.");
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList, f94767b);
        return new C17180q(name, str, measure, aggregation, Collections.unmodifiableList(arrayList), aggregationWindow);
    }

    public abstract Aggregation getAggregation();

    public abstract List<TagKey> getColumns();

    public abstract String getDescription();

    public abstract Measure getMeasure();

    public abstract Name getName();

    @Deprecated
    public abstract AggregationWindow getWindow();

    public static View create(Name name, String str, Measure measure, Aggregation aggregation, List<TagKey> list) {
        Utils.checkArgument(new HashSet(list).size() == list.size(), "Columns have duplicate.");
        return create(name, str, measure, aggregation, list, AggregationWindow.Cumulative.create());
    }
}
