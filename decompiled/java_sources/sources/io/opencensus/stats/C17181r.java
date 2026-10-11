package io.opencensus.stats;

import io.opencensus.common.Timestamp;
import io.opencensus.stats.ViewData;
import io.opencensus.tags.TagValue;
import java.util.List;
import java.util.Map;
import javax.annotation.concurrent.Immutable;

@Immutable
/* renamed from: io.opencensus.stats.r */
/* loaded from: classes10.dex */
public final class C17181r extends ViewData {

    /* renamed from: a */
    public final View f94821a;

    /* renamed from: b */
    public final Map<List<TagValue>, AggregationData> f94822b;

    /* renamed from: c */
    public final ViewData.AggregationWindowData f94823c;

    /* renamed from: d */
    public final Timestamp f94824d;

    /* renamed from: e */
    public final Timestamp f94825e;

    public C17181r(View view, Map<List<TagValue>, AggregationData> map, ViewData.AggregationWindowData aggregationWindowData, Timestamp timestamp, Timestamp timestamp2) {
        if (view == null) {
            throw new NullPointerException("Null view");
        }
        this.f94821a = view;
        if (map == null) {
            throw new NullPointerException("Null aggregationMap");
        }
        this.f94822b = map;
        if (aggregationWindowData == null) {
            throw new NullPointerException("Null windowData");
        }
        this.f94823c = aggregationWindowData;
        if (timestamp == null) {
            throw new NullPointerException("Null start");
        }
        this.f94824d = timestamp;
        if (timestamp2 == null) {
            throw new NullPointerException("Null end");
        }
        this.f94825e = timestamp2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ViewData)) {
            return false;
        }
        ViewData viewData = (ViewData) obj;
        return this.f94821a.equals(viewData.getView()) && this.f94822b.equals(viewData.getAggregationMap()) && this.f94823c.equals(viewData.getWindowData()) && this.f94824d.equals(viewData.getStart()) && this.f94825e.equals(viewData.getEnd());
    }

    @Override // io.opencensus.stats.ViewData
    public Map<List<TagValue>, AggregationData> getAggregationMap() {
        return this.f94822b;
    }

    @Override // io.opencensus.stats.ViewData
    public Timestamp getEnd() {
        return this.f94825e;
    }

    @Override // io.opencensus.stats.ViewData
    public Timestamp getStart() {
        return this.f94824d;
    }

    @Override // io.opencensus.stats.ViewData
    public View getView() {
        return this.f94821a;
    }

    @Override // io.opencensus.stats.ViewData
    @Deprecated
    public ViewData.AggregationWindowData getWindowData() {
        return this.f94823c;
    }

    public int hashCode() {
        return this.f94825e.hashCode() ^ ((((((((this.f94821a.hashCode() ^ 1000003) * 1000003) ^ this.f94822b.hashCode()) * 1000003) ^ this.f94823c.hashCode()) * 1000003) ^ this.f94824d.hashCode()) * 1000003);
    }

    public String toString() {
        return "ViewData{view=" + this.f94821a + ", aggregationMap=" + this.f94822b + ", windowData=" + this.f94823c + ", start=" + this.f94824d + ", end=" + this.f94825e + "}";
    }
}
