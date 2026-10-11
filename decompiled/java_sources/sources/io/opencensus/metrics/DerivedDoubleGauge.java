package io.opencensus.metrics;

import com.sun.org.apache.xalan.internal.templates.Constants;
import io.opencensus.common.ToDoubleFunction;
import io.opencensus.internal.Utils;
import java.util.List;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes10.dex */
public abstract class DerivedDoubleGauge {

    /* renamed from: io.opencensus.metrics.DerivedDoubleGauge$a */
    /* loaded from: classes10.dex */
    public static final class C17116a extends DerivedDoubleGauge {

        /* renamed from: a */
        public final int f94697a;

        public C17116a(String str, String str2, String str3, List<LabelKey> list) {
            Utils.checkNotNull(str, "name");
            Utils.checkNotNull(str2, "description");
            Utils.checkNotNull(str3, "unit");
            Utils.checkListElementNotNull((List) Utils.checkNotNull(list, "labelKeys"), "labelKey");
            this.f94697a = list.size();
        }

        /* renamed from: b */
        public static C17116a m60961b(String str, String str2, String str3, List<LabelKey> list) {
            return new C17116a(str, str2, str3, list);
        }

        @Override // io.opencensus.metrics.DerivedDoubleGauge
        public void clear() {
        }

        @Override // io.opencensus.metrics.DerivedDoubleGauge
        public <T> void createTimeSeries(List<LabelValue> list, T t, ToDoubleFunction<T> toDoubleFunction) {
            Utils.checkListElementNotNull((List) Utils.checkNotNull(list, "labelValues"), "labelValue");
            Utils.checkArgument(this.f94697a == list.size(), "Label Keys and Label Values don't have same size.");
            Utils.checkNotNull(toDoubleFunction, Constants.EXSLT_ELEMNAME_FUNCTION_STRING);
        }

        @Override // io.opencensus.metrics.DerivedDoubleGauge
        public void removeTimeSeries(List<LabelValue> list) {
            Utils.checkNotNull(list, "labelValues");
        }
    }

    /* renamed from: a */
    public static DerivedDoubleGauge m60960a(String str, String str2, String str3, List<LabelKey> list) {
        return C17116a.m60961b(str, str2, str3, list);
    }

    public abstract void clear();

    public abstract <T> void createTimeSeries(List<LabelValue> list, T t, ToDoubleFunction<T> toDoubleFunction);

    public abstract void removeTimeSeries(List<LabelValue> list);
}
