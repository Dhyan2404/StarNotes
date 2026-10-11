package io.opencensus.metrics;

import com.sun.org.apache.xalan.internal.templates.Constants;
import io.opencensus.common.ToDoubleFunction;
import io.opencensus.internal.Utils;
import java.util.List;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes10.dex */
public abstract class DerivedDoubleCumulative {

    /* renamed from: io.opencensus.metrics.DerivedDoubleCumulative$a */
    /* loaded from: classes10.dex */
    public static final class C17115a extends DerivedDoubleCumulative {

        /* renamed from: a */
        public final int f94696a;

        public C17115a(String str, String str2, String str3, List<LabelKey> list) {
            Utils.checkNotNull(str, "name");
            Utils.checkNotNull(str2, "description");
            Utils.checkNotNull(str3, "unit");
            Utils.checkListElementNotNull((List) Utils.checkNotNull(list, "labelKeys"), "labelKey");
            this.f94696a = list.size();
        }

        /* renamed from: b */
        public static C17115a m60959b(String str, String str2, String str3, List<LabelKey> list) {
            return new C17115a(str, str2, str3, list);
        }

        @Override // io.opencensus.metrics.DerivedDoubleCumulative
        public void clear() {
        }

        @Override // io.opencensus.metrics.DerivedDoubleCumulative
        public <T> void createTimeSeries(List<LabelValue> list, T t, ToDoubleFunction<T> toDoubleFunction) {
            Utils.checkListElementNotNull((List) Utils.checkNotNull(list, "labelValues"), "labelValue");
            Utils.checkArgument(this.f94696a == list.size(), "Label Keys and Label Values don't have same size.");
            Utils.checkNotNull(toDoubleFunction, Constants.EXSLT_ELEMNAME_FUNCTION_STRING);
        }

        @Override // io.opencensus.metrics.DerivedDoubleCumulative
        public void removeTimeSeries(List<LabelValue> list) {
            Utils.checkNotNull(list, "labelValues");
        }
    }

    /* renamed from: a */
    public static DerivedDoubleCumulative m60958a(String str, String str2, String str3, List<LabelKey> list) {
        return C17115a.m60959b(str, str2, str3, list);
    }

    public abstract void clear();

    public abstract <T> void createTimeSeries(List<LabelValue> list, T t, ToDoubleFunction<T> toDoubleFunction);

    public abstract void removeTimeSeries(List<LabelValue> list);
}
