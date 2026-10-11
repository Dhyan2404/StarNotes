package io.opencensus.metrics;

import com.sun.org.apache.xalan.internal.templates.Constants;
import io.opencensus.common.ToLongFunction;
import io.opencensus.internal.Utils;
import java.util.List;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes10.dex */
public abstract class DerivedLongGauge {

    /* renamed from: io.opencensus.metrics.DerivedLongGauge$a */
    /* loaded from: classes10.dex */
    public static final class C17118a extends DerivedLongGauge {

        /* renamed from: a */
        public final int f94699a;

        public C17118a(String str, String str2, String str3, List<LabelKey> list) {
            Utils.checkNotNull(str, "name");
            Utils.checkNotNull(str2, "description");
            Utils.checkNotNull(str3, "unit");
            Utils.checkListElementNotNull((List) Utils.checkNotNull(list, "labelKeys"), "labelKey");
            this.f94699a = list.size();
        }

        /* renamed from: b */
        public static C17118a m60965b(String str, String str2, String str3, List<LabelKey> list) {
            return new C17118a(str, str2, str3, list);
        }

        @Override // io.opencensus.metrics.DerivedLongGauge
        public void clear() {
        }

        @Override // io.opencensus.metrics.DerivedLongGauge
        public <T> void createTimeSeries(List<LabelValue> list, T t, ToLongFunction<T> toLongFunction) {
            Utils.checkListElementNotNull((List) Utils.checkNotNull(list, "labelValues"), "labelValue");
            Utils.checkArgument(this.f94699a == list.size(), "Label Keys and Label Values don't have same size.");
            Utils.checkNotNull(toLongFunction, Constants.EXSLT_ELEMNAME_FUNCTION_STRING);
        }

        @Override // io.opencensus.metrics.DerivedLongGauge
        public void removeTimeSeries(List<LabelValue> list) {
            Utils.checkNotNull(list, "labelValues");
        }
    }

    /* renamed from: a */
    public static DerivedLongGauge m60964a(String str, String str2, String str3, List<LabelKey> list) {
        return C17118a.m60965b(str, str2, str3, list);
    }

    public abstract void clear();

    public abstract <T> void createTimeSeries(List<LabelValue> list, T t, ToLongFunction<T> toLongFunction);

    public abstract void removeTimeSeries(List<LabelValue> list);
}
