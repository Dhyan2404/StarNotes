package io.opencensus.metrics;

import io.opencensus.internal.Utils;
import java.util.List;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes10.dex */
public abstract class LongGauge {

    /* loaded from: classes10.dex */
    public static abstract class LongPoint {
        public abstract void add(long j);

        public abstract void set(long j);
    }

    /* renamed from: io.opencensus.metrics.LongGauge$a */
    /* loaded from: classes10.dex */
    public static final class C17122a extends LongGauge {

        /* renamed from: a */
        public final int f94706a;

        /* renamed from: io.opencensus.metrics.LongGauge$a$a */
        /* loaded from: classes10.dex */
        public static final class a extends LongPoint {

            /* renamed from: a */
            public static final a f94707a = new a();

            @Override // io.opencensus.metrics.LongGauge.LongPoint
            public void add(long j) {
            }

            @Override // io.opencensus.metrics.LongGauge.LongPoint
            public void set(long j) {
            }
        }

        public C17122a(String str, String str2, String str3, List<LabelKey> list) {
            this.f94706a = list.size();
        }

        /* renamed from: b */
        public static C17122a m60982b(String str, String str2, String str3, List<LabelKey> list) {
            return new C17122a(str, str2, str3, list);
        }

        @Override // io.opencensus.metrics.LongGauge
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public a getDefaultTimeSeries() {
            return a.f94707a;
        }

        @Override // io.opencensus.metrics.LongGauge
        public void clear() {
        }

        @Override // io.opencensus.metrics.LongGauge
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public a getOrCreateTimeSeries(List<LabelValue> list) {
            Utils.checkListElementNotNull((List) Utils.checkNotNull(list, "labelValues"), "labelValue");
            Utils.checkArgument(this.f94706a == list.size(), "Label Keys and Label Values don't have same size.");
            return a.f94707a;
        }

        @Override // io.opencensus.metrics.LongGauge
        public void removeTimeSeries(List<LabelValue> list) {
            Utils.checkNotNull(list, "labelValues");
        }
    }

    /* renamed from: a */
    public static LongGauge m60981a(String str, String str2, String str3, List<LabelKey> list) {
        return C17122a.m60982b(str, str2, str3, list);
    }

    public abstract void clear();

    public abstract LongPoint getDefaultTimeSeries();

    public abstract LongPoint getOrCreateTimeSeries(List<LabelValue> list);

    public abstract void removeTimeSeries(List<LabelValue> list);
}
