package io.opencensus.metrics;

import io.opencensus.internal.Utils;
import java.util.List;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes10.dex */
public abstract class LongCumulative {

    /* loaded from: classes10.dex */
    public static abstract class LongPoint {
        public abstract void add(long j);
    }

    /* renamed from: io.opencensus.metrics.LongCumulative$a */
    /* loaded from: classes10.dex */
    public static final class C17121a extends LongCumulative {

        /* renamed from: a */
        public final int f94704a;

        /* renamed from: io.opencensus.metrics.LongCumulative$a$a */
        /* loaded from: classes10.dex */
        public static final class a extends LongPoint {

            /* renamed from: a */
            public static final a f94705a = new a();

            @Override // io.opencensus.metrics.LongCumulative.LongPoint
            public void add(long j) {
            }
        }

        public C17121a(String str, String str2, String str3, List<LabelKey> list) {
            this.f94704a = list.size();
        }

        /* renamed from: b */
        public static C17121a m60977b(String str, String str2, String str3, List<LabelKey> list) {
            return new C17121a(str, str2, str3, list);
        }

        @Override // io.opencensus.metrics.LongCumulative
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public a getDefaultTimeSeries() {
            return a.f94705a;
        }

        @Override // io.opencensus.metrics.LongCumulative
        public void clear() {
        }

        @Override // io.opencensus.metrics.LongCumulative
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public a getOrCreateTimeSeries(List<LabelValue> list) {
            Utils.checkListElementNotNull((List) Utils.checkNotNull(list, "labelValues"), "labelValue");
            Utils.checkArgument(this.f94704a == list.size(), "Label Keys and Label Values don't have same size.");
            return a.f94705a;
        }

        @Override // io.opencensus.metrics.LongCumulative
        public void removeTimeSeries(List<LabelValue> list) {
            Utils.checkNotNull(list, "labelValues");
        }
    }

    /* renamed from: a */
    public static LongCumulative m60976a(String str, String str2, String str3, List<LabelKey> list) {
        return C17121a.m60977b(str, str2, str3, list);
    }

    public abstract void clear();

    public abstract LongPoint getDefaultTimeSeries();

    public abstract LongPoint getOrCreateTimeSeries(List<LabelValue> list);

    public abstract void removeTimeSeries(List<LabelValue> list);
}
