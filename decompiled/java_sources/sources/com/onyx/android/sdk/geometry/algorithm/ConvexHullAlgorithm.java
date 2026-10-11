package com.onyx.android.sdk.geometry.algorithm;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__ReversedViewsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\n¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;", "", "()V", "cross", "", C4921e.f26528e, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "a", "b", "findConvexHull", "", PointConstant.POINT_FILE_END, "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ConvexHullAlgorithm {

    @NotNull
    public static final ConvexHullAlgorithm INSTANCE = new ConvexHullAlgorithm();

    public final float cross(@NotNull TouchPoint o, @NotNull TouchPoint a, @NotNull TouchPoint b) {
        Intrinsics.checkNotNullParameter(o, "o");
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return ((a.getX() - o.getX()) * (b.getY() - o.getY())) - ((a.getY() - o.getY()) * (b.getX() - o.getX()));
    }

    @NotNull
    public final List<TouchPoint> findConvexHull(@NotNull List<TouchPoint> points) {
        Comparator compareBy;
        List<TouchPoint> sortedWith;
        List<TouchPoint> asReversed;
        List plus;
        List<TouchPoint> distinct;
        List<TouchPoint> emptyList;
        Intrinsics.checkNotNullParameter(points, "points");
        if (points.size() <= 3) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        compareBy = ComparisonsKt__ComparisonsKt.compareBy(new Function1<TouchPoint, Comparable<?>>() { // from class: com.onyx.android.sdk.geometry.algorithm.ConvexHullAlgorithm$findConvexHull$sorted$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final Comparable<?> invoke(@NotNull TouchPoint it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Float.valueOf(it2.getX());
            }
        }, new Function1<TouchPoint, Comparable<?>>() { // from class: com.onyx.android.sdk.geometry.algorithm.ConvexHullAlgorithm$findConvexHull$sorted$2
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final Comparable<?> invoke(@NotNull TouchPoint it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Float.valueOf(it2.getY());
            }
        });
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(points, compareBy);
        ArrayList arrayList = new ArrayList();
        for (TouchPoint touchPoint : sortedWith) {
            while (arrayList.size() >= 2 && cross((TouchPoint) arrayList.get(arrayList.size() - 2), (TouchPoint) arrayList.get(arrayList.size() - 1), touchPoint) <= 0.0f) {
                arrayList.remove(arrayList.size() - 1);
            }
            arrayList.add(touchPoint);
        }
        ArrayList arrayList2 = new ArrayList();
        asReversed = CollectionsKt__ReversedViewsKt.asReversed(sortedWith);
        for (TouchPoint touchPoint2 : asReversed) {
            while (arrayList2.size() >= 2 && cross((TouchPoint) arrayList2.get(arrayList2.size() - 2), (TouchPoint) arrayList2.get(arrayList2.size() - 1), touchPoint2) <= 0.0f) {
                arrayList2.remove(arrayList2.size() - 1);
            }
            arrayList2.add(touchPoint2);
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection) arrayList, (Iterable) arrayList2);
        distinct = CollectionsKt___CollectionsKt.distinct(plus);
        return distinct;
    }
}
