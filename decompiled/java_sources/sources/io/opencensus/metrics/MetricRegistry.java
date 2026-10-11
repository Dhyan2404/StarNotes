package io.opencensus.metrics;

import io.opencensus.internal.Utils;
import java.util.List;

/* loaded from: classes10.dex */
public abstract class MetricRegistry {

    /* renamed from: io.opencensus.metrics.MetricRegistry$b */
    /* loaded from: classes10.dex */
    public static final class C17124b extends MetricRegistry {
        public C17124b() {
        }

        @Override // io.opencensus.metrics.MetricRegistry
        public DerivedDoubleCumulative addDerivedDoubleCumulative(String str, MetricOptions metricOptions) {
            return DerivedDoubleCumulative.m60958a((String) Utils.checkNotNull(str, "name"), metricOptions.getDescription(), metricOptions.getUnit(), metricOptions.getLabelKeys());
        }

        @Override // io.opencensus.metrics.MetricRegistry
        public DerivedDoubleGauge addDerivedDoubleGauge(String str, MetricOptions metricOptions) {
            return DerivedDoubleGauge.m60960a((String) Utils.checkNotNull(str, "name"), metricOptions.getDescription(), metricOptions.getUnit(), metricOptions.getLabelKeys());
        }

        @Override // io.opencensus.metrics.MetricRegistry
        public DerivedLongCumulative addDerivedLongCumulative(String str, MetricOptions metricOptions) {
            return DerivedLongCumulative.m60962a((String) Utils.checkNotNull(str, "name"), metricOptions.getDescription(), metricOptions.getUnit(), metricOptions.getLabelKeys());
        }

        @Override // io.opencensus.metrics.MetricRegistry
        public DerivedLongGauge addDerivedLongGauge(String str, MetricOptions metricOptions) {
            return DerivedLongGauge.m60964a((String) Utils.checkNotNull(str, "name"), metricOptions.getDescription(), metricOptions.getUnit(), metricOptions.getLabelKeys());
        }

        @Override // io.opencensus.metrics.MetricRegistry
        public DoubleCumulative addDoubleCumulative(String str, MetricOptions metricOptions) {
            return DoubleCumulative.m60966a((String) Utils.checkNotNull(str, "name"), metricOptions.getDescription(), metricOptions.getUnit(), metricOptions.getLabelKeys());
        }

        @Override // io.opencensus.metrics.MetricRegistry
        public DoubleGauge addDoubleGauge(String str, MetricOptions metricOptions) {
            return DoubleGauge.m60971a((String) Utils.checkNotNull(str, "name"), metricOptions.getDescription(), metricOptions.getUnit(), metricOptions.getLabelKeys());
        }

        @Override // io.opencensus.metrics.MetricRegistry
        public LongCumulative addLongCumulative(String str, MetricOptions metricOptions) {
            return LongCumulative.m60976a((String) Utils.checkNotNull(str, "name"), metricOptions.getDescription(), metricOptions.getUnit(), metricOptions.getLabelKeys());
        }

        @Override // io.opencensus.metrics.MetricRegistry
        public LongGauge addLongGauge(String str, MetricOptions metricOptions) {
            return LongGauge.m60981a((String) Utils.checkNotNull(str, "name"), metricOptions.getDescription(), metricOptions.getUnit(), metricOptions.getLabelKeys());
        }
    }

    /* renamed from: a */
    public static MetricRegistry m60989a() {
        return new C17124b();
    }

    public abstract DerivedDoubleCumulative addDerivedDoubleCumulative(String str, MetricOptions metricOptions);

    public abstract DerivedDoubleGauge addDerivedDoubleGauge(String str, MetricOptions metricOptions);

    @Deprecated
    public DerivedDoubleGauge addDerivedDoubleGauge(String str, String str2, String str3, List<LabelKey> list) {
        return addDerivedDoubleGauge(str, MetricOptions.builder().setDescription(str2).setUnit(str3).setLabelKeys(list).build());
    }

    public abstract DerivedLongCumulative addDerivedLongCumulative(String str, MetricOptions metricOptions);

    public abstract DerivedLongGauge addDerivedLongGauge(String str, MetricOptions metricOptions);

    @Deprecated
    public DerivedLongGauge addDerivedLongGauge(String str, String str2, String str3, List<LabelKey> list) {
        return addDerivedLongGauge(str, MetricOptions.builder().setDescription(str2).setUnit(str3).setLabelKeys(list).build());
    }

    public abstract DoubleCumulative addDoubleCumulative(String str, MetricOptions metricOptions);

    public abstract DoubleGauge addDoubleGauge(String str, MetricOptions metricOptions);

    @Deprecated
    public DoubleGauge addDoubleGauge(String str, String str2, String str3, List<LabelKey> list) {
        return addDoubleGauge(str, MetricOptions.builder().setDescription(str2).setUnit(str3).setLabelKeys(list).build());
    }

    public abstract LongCumulative addLongCumulative(String str, MetricOptions metricOptions);

    public abstract LongGauge addLongGauge(String str, MetricOptions metricOptions);

    @Deprecated
    public LongGauge addLongGauge(String str, String str2, String str3, List<LabelKey> list) {
        return addLongGauge(str, MetricOptions.builder().setDescription(str2).setUnit(str3).setLabelKeys(list).build());
    }
}
