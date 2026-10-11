package io.opencensus.metrics.export;

import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sunia.HTREnginev2.C13997kk;
import io.opencensus.common.Timestamp;
import io.opencensus.internal.Utils;
import io.opencensus.metrics.LabelValue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class TimeSeries {
    /* renamed from: a */
    public static TimeSeries m61000a(List<LabelValue> list, List<Point> list2, @Nullable Timestamp timestamp) {
        Utils.checkListElementNotNull((List) Utils.checkNotNull(list, "labelValues"), "labelValue");
        return new C13997kk(Collections.unmodifiableList(new ArrayList(list)), list2, timestamp);
    }

    public static TimeSeries create(List<LabelValue> list, List<Point> list2, @Nullable Timestamp timestamp) {
        Utils.checkListElementNotNull((List) Utils.checkNotNull(list2, PointConstant.POINT_FILE_END), "point");
        return m61000a(list, Collections.unmodifiableList(new ArrayList(list2)), timestamp);
    }

    public static TimeSeries createWithOnePoint(List<LabelValue> list, Point point, @Nullable Timestamp timestamp) {
        Utils.checkNotNull(point, "point");
        return m61000a(list, Collections.singletonList(point), timestamp);
    }

    public abstract List<LabelValue> getLabelValues();

    public abstract List<Point> getPoints();

    @Nullable
    public abstract Timestamp getStartTimestamp();

    public TimeSeries setPoint(Point point) {
        Utils.checkNotNull(point, "point");
        return new C13997kk(getLabelValues(), Collections.singletonList(point), null);
    }

    public static TimeSeries create(List<LabelValue> list) {
        return m61000a(list, Collections.emptyList(), null);
    }
}
