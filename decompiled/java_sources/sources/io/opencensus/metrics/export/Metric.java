package io.opencensus.metrics.export;

import com.sunia.HTREnginev2.C14761zj;
import io.opencensus.internal.Utils;
import io.opencensus.metrics.export.MetricDescriptor;
import io.opencensus.metrics.export.Value;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class Metric {

    /* renamed from: io.opencensus.metrics.export.Metric$a */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C17132a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f94722a;

        static {
            int[] iArr = new int[MetricDescriptor.Type.values().length];
            f94722a = iArr;
            try {
                iArr[MetricDescriptor.Type.GAUGE_INT64.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f94722a[MetricDescriptor.Type.CUMULATIVE_INT64.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f94722a[MetricDescriptor.Type.CUMULATIVE_DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f94722a[MetricDescriptor.Type.GAUGE_DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f94722a[MetricDescriptor.Type.GAUGE_DISTRIBUTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f94722a[MetricDescriptor.Type.CUMULATIVE_DISTRIBUTION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f94722a[MetricDescriptor.Type.SUMMARY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: a */
    public static void m60995a(MetricDescriptor.Type type, List<TimeSeries> list) {
        Iterator<TimeSeries> it2 = list.iterator();
        while (it2.hasNext()) {
            Iterator<Point> it3 = it2.next().getPoints().iterator();
            while (it3.hasNext()) {
                Value value = it3.next().getValue();
                String simpleName = value.getClass().getSuperclass() != null ? value.getClass().getSuperclass().getSimpleName() : "";
                switch (C17132a.f94722a[type.ordinal()]) {
                    case 1:
                    case 2:
                        Utils.checkArgument(value instanceof Value.AbstractC17137c, "Type mismatch: %s, %s.", type, simpleName);
                        break;
                    case 3:
                    case 4:
                        Utils.checkArgument(value instanceof Value.AbstractC17136b, "Type mismatch: %s, %s.", type, simpleName);
                        break;
                    case 5:
                    case 6:
                        Utils.checkArgument(value instanceof Value.AbstractC17135a, "Type mismatch: %s, %s.", type, simpleName);
                        break;
                    case 7:
                        Utils.checkArgument(value instanceof Value.AbstractC17138d, "Type mismatch: %s, %s.", type, simpleName);
                        break;
                }
            }
        }
    }

    /* renamed from: b */
    public static Metric m60996b(MetricDescriptor metricDescriptor, List<TimeSeries> list) {
        Utils.checkNotNull(metricDescriptor, "metricDescriptor");
        m60995a(metricDescriptor.getType(), list);
        return new C14761zj(metricDescriptor, list);
    }

    public static Metric create(MetricDescriptor metricDescriptor, List<TimeSeries> list) {
        Utils.checkListElementNotNull((List) Utils.checkNotNull(list, "timeSeriesList"), "timeSeries");
        return m60996b(metricDescriptor, Collections.unmodifiableList(new ArrayList(list)));
    }

    public static Metric createWithOneTimeSeries(MetricDescriptor metricDescriptor, TimeSeries timeSeries) {
        return m60996b(metricDescriptor, Collections.singletonList(Utils.checkNotNull(timeSeries, "timeSeries")));
    }

    public abstract MetricDescriptor getMetricDescriptor();

    public abstract List<TimeSeries> getTimeSeriesList();
}
