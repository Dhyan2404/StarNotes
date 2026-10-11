package io.opencensus.stats;

import io.opencensus.stats.View;
import io.opencensus.tags.TagKey;
import java.util.List;
import javax.annotation.concurrent.Immutable;

@Immutable
/* renamed from: io.opencensus.stats.q */
/* loaded from: classes10.dex */
public final class C17180q extends View {

    /* renamed from: c */
    public final View.Name f94815c;

    /* renamed from: d */
    public final String f94816d;

    /* renamed from: e */
    public final Measure f94817e;

    /* renamed from: f */
    public final Aggregation f94818f;

    /* renamed from: g */
    public final List<TagKey> f94819g;

    /* renamed from: h */
    public final View.AggregationWindow f94820h;

    public C17180q(View.Name name, String str, Measure measure, Aggregation aggregation, List<TagKey> list, View.AggregationWindow aggregationWindow) {
        if (name == null) {
            throw new NullPointerException("Null name");
        }
        this.f94815c = name;
        if (str == null) {
            throw new NullPointerException("Null description");
        }
        this.f94816d = str;
        if (measure == null) {
            throw new NullPointerException("Null measure");
        }
        this.f94817e = measure;
        if (aggregation == null) {
            throw new NullPointerException("Null aggregation");
        }
        this.f94818f = aggregation;
        if (list == null) {
            throw new NullPointerException("Null columns");
        }
        this.f94819g = list;
        if (aggregationWindow == null) {
            throw new NullPointerException("Null window");
        }
        this.f94820h = aggregationWindow;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof View)) {
            return false;
        }
        View view = (View) obj;
        return this.f94815c.equals(view.getName()) && this.f94816d.equals(view.getDescription()) && this.f94817e.equals(view.getMeasure()) && this.f94818f.equals(view.getAggregation()) && this.f94819g.equals(view.getColumns()) && this.f94820h.equals(view.getWindow());
    }

    @Override // io.opencensus.stats.View
    public Aggregation getAggregation() {
        return this.f94818f;
    }

    @Override // io.opencensus.stats.View
    public List<TagKey> getColumns() {
        return this.f94819g;
    }

    @Override // io.opencensus.stats.View
    public String getDescription() {
        return this.f94816d;
    }

    @Override // io.opencensus.stats.View
    public Measure getMeasure() {
        return this.f94817e;
    }

    @Override // io.opencensus.stats.View
    public View.Name getName() {
        return this.f94815c;
    }

    @Override // io.opencensus.stats.View
    @Deprecated
    public View.AggregationWindow getWindow() {
        return this.f94820h;
    }

    public int hashCode() {
        return this.f94820h.hashCode() ^ ((((((((((this.f94815c.hashCode() ^ 1000003) * 1000003) ^ this.f94816d.hashCode()) * 1000003) ^ this.f94817e.hashCode()) * 1000003) ^ this.f94818f.hashCode()) * 1000003) ^ this.f94819g.hashCode()) * 1000003);
    }

    public String toString() {
        return "View{name=" + this.f94815c + ", description=" + this.f94816d + ", measure=" + this.f94817e + ", aggregation=" + this.f94818f + ", columns=" + this.f94819g + ", window=" + this.f94820h + "}";
    }
}
