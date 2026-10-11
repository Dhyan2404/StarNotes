package io.opencensus.metrics;

import io.opencensus.internal.Utils;
import io.opencensus.metrics.C17127a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class MetricOptions {

    /* loaded from: classes10.dex */
    public static abstract class Builder {
        /* renamed from: a */
        public abstract MetricOptions mo60986a();

        /* renamed from: b */
        public abstract Map<LabelKey, LabelValue> mo60987b();

        public MetricOptions build() {
            setLabelKeys(Collections.unmodifiableList(new ArrayList(mo60988c())));
            setConstantLabels(Collections.unmodifiableMap(new LinkedHashMap(mo60987b())));
            MetricOptions mo60986a = mo60986a();
            Utils.checkListElementNotNull(mo60986a.getLabelKeys(), "labelKeys elements");
            Utils.checkMapElementNotNull(mo60986a.getConstantLabels(), "constantLabels elements");
            HashSet hashSet = new HashSet();
            for (LabelKey labelKey : mo60986a.getLabelKeys()) {
                if (hashSet.contains(labelKey.getKey())) {
                    throw new IllegalArgumentException("Invalid LabelKey in labelKeys");
                }
                hashSet.add(labelKey.getKey());
            }
            for (Map.Entry<LabelKey, LabelValue> entry : mo60986a.getConstantLabels().entrySet()) {
                if (hashSet.contains(entry.getKey().getKey())) {
                    throw new IllegalArgumentException("Invalid LabelKey in constantLabels");
                }
                hashSet.add(entry.getKey().getKey());
            }
            return mo60986a;
        }

        /* renamed from: c */
        public abstract List<LabelKey> mo60988c();

        public abstract Builder setConstantLabels(Map<LabelKey, LabelValue> map);

        public abstract Builder setDescription(String str);

        public abstract Builder setLabelKeys(List<LabelKey> list);

        public abstract Builder setUnit(String str);
    }

    public static Builder builder() {
        return new C17127a.b().setDescription("").setUnit("1").setLabelKeys(Collections.emptyList()).setConstantLabels(Collections.emptyMap());
    }

    public abstract Map<LabelKey, LabelValue> getConstantLabels();

    public abstract String getDescription();

    public abstract List<LabelKey> getLabelKeys();

    public abstract String getUnit();
}
