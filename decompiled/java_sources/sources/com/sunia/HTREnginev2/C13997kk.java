package com.sunia.HTREnginev2;

import io.opencensus.common.Timestamp;
import io.opencensus.metrics.LabelValue;
import io.opencensus.metrics.export.Point;
import io.opencensus.metrics.export.TimeSeries;
import java.util.List;
import javax.annotation.Nullable;

/* renamed from: com.sunia.HTREnginev2.kk */
/* loaded from: classes10.dex */
public final class C13997kk extends TimeSeries {

    /* renamed from: a */
    public final List<LabelValue> f75488a;

    /* renamed from: b */
    public final List<Point> f75489b;

    /* renamed from: c */
    public final Timestamp f75490c;

    public C13997kk(List<LabelValue> list, List<Point> list2, @Nullable Timestamp timestamp) {
        if (list == null) {
            throw new NullPointerException("Null labelValues");
        }
        this.f75488a = list;
        if (list2 == null) {
            throw new NullPointerException("Null points");
        }
        this.f75489b = list2;
        this.f75490c = timestamp;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TimeSeries)) {
            return false;
        }
        TimeSeries timeSeries = (TimeSeries) obj;
        if (this.f75488a.equals(timeSeries.getLabelValues()) && this.f75489b.equals(timeSeries.getPoints())) {
            Timestamp timestamp = this.f75490c;
            if (timestamp == null) {
                if (timeSeries.getStartTimestamp() == null) {
                    return true;
                }
            } else if (timestamp.equals(timeSeries.getStartTimestamp())) {
                return true;
            }
        }
        return false;
    }

    @Override // io.opencensus.metrics.export.TimeSeries
    public List<LabelValue> getLabelValues() {
        return this.f75488a;
    }

    @Override // io.opencensus.metrics.export.TimeSeries
    public List<Point> getPoints() {
        return this.f75489b;
    }

    @Override // io.opencensus.metrics.export.TimeSeries
    @Nullable
    public Timestamp getStartTimestamp() {
        return this.f75490c;
    }

    public int hashCode() {
        int hashCode = (((this.f75488a.hashCode() ^ 1000003) * 1000003) ^ this.f75489b.hashCode()) * 1000003;
        Timestamp timestamp = this.f75490c;
        return (timestamp == null ? 0 : timestamp.hashCode()) ^ hashCode;
    }

    public String toString() {
        return "TimeSeries{labelValues=" + this.f75488a + ", points=" + this.f75489b + ", startTimestamp=" + this.f75490c + "}";
    }
}
