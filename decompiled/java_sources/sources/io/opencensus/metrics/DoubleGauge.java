package io.opencensus.metrics;

import io.opencensus.internal.Utils;
import java.util.List;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes10.dex */
public abstract class DoubleGauge {

    /* loaded from: classes10.dex */
    public static abstract class DoublePoint {
        public abstract void add(double d);

        public abstract void set(double d);
    }

    /* renamed from: io.opencensus.metrics.DoubleGauge$a */
    /* loaded from: classes10.dex */
    public static final class C17120a extends DoubleGauge {

        /* renamed from: a */
        public final int f94702a;

        /* renamed from: io.opencensus.metrics.DoubleGauge$a$a */
        /* loaded from: classes10.dex */
        public static final class a extends DoublePoint {

            /* renamed from: a */
            public static final a f94703a = new a();

            @Override // io.opencensus.metrics.DoubleGauge.DoublePoint
            public void add(double d) {
            }

            @Override // io.opencensus.metrics.DoubleGauge.DoublePoint
            public void set(double d) {
            }
        }

        public C17120a(String str, String str2, String str3, List<LabelKey> list) {
            Utils.checkNotNull(str, "name");
            Utils.checkNotNull(str2, "description");
            Utils.checkNotNull(str3, "unit");
            Utils.checkListElementNotNull((List) Utils.checkNotNull(list, "labelKeys"), "labelKey");
            this.f94702a = list.size();
        }

        /* renamed from: b */
        public static C17120a m60972b(String str, String str2, String str3, List<LabelKey> list) {
            return new C17120a(str, str2, str3, list);
        }

        @Override // io.opencensus.metrics.DoubleGauge
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public a getDefaultTimeSeries() {
            return a.f94703a;
        }

        @Override // io.opencensus.metrics.DoubleGauge
        public void clear() {
        }

        @Override // io.opencensus.metrics.DoubleGauge
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public a getOrCreateTimeSeries(List<LabelValue> list) {
            Utils.checkListElementNotNull((List) Utils.checkNotNull(list, "labelValues"), "labelValue");
            Utils.checkArgument(this.f94702a == list.size(), "Label Keys and Label Values don't have same size.");
            return a.f94703a;
        }

        @Override // io.opencensus.metrics.DoubleGauge
        public void removeTimeSeries(List<LabelValue> list) {
            Utils.checkNotNull(list, "labelValues");
        }
    }

    /* renamed from: a */
    public static DoubleGauge m60971a(String str, String str2, String str3, List<LabelKey> list) {
        return C17120a.m60972b(str, str2, str3, list);
    }

    public abstract void clear();

    public abstract DoublePoint getDefaultTimeSeries();

    public abstract DoublePoint getOrCreateTimeSeries(List<LabelValue> list);

    public abstract void removeTimeSeries(List<LabelValue> list);
}
