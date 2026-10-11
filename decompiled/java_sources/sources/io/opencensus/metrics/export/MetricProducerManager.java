package io.opencensus.metrics.export;

import io.opencensus.internal.Utils;
import java.util.Collections;
import java.util.Set;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes10.dex */
public abstract class MetricProducerManager {

    /* renamed from: io.opencensus.metrics.export.MetricProducerManager$b */
    /* loaded from: classes10.dex */
    public static final class C17134b extends MetricProducerManager {
        public C17134b() {
        }

        @Override // io.opencensus.metrics.export.MetricProducerManager
        public void add(MetricProducer metricProducer) {
            Utils.checkNotNull(metricProducer, "metricProducer");
        }

        @Override // io.opencensus.metrics.export.MetricProducerManager
        public Set<MetricProducer> getAllMetricProducer() {
            return Collections.emptySet();
        }

        @Override // io.opencensus.metrics.export.MetricProducerManager
        public void remove(MetricProducer metricProducer) {
            Utils.checkNotNull(metricProducer, "metricProducer");
        }
    }

    /* renamed from: a */
    public static MetricProducerManager m60997a() {
        return new C17134b();
    }

    public abstract void add(MetricProducer metricProducer);

    public abstract Set<MetricProducer> getAllMetricProducer();

    public abstract void remove(MetricProducer metricProducer);
}
