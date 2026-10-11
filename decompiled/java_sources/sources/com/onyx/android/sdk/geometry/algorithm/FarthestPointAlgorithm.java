package com.onyx.android.sdk.geometry.algorithm;

import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm;", "", "()V", "findFarthestPointPair", "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nFarthestPointAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FarthestPointAlgorithm.kt\ncom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1855#2,2:55\n*S KotlinDebug\n*F\n+ 1 FarthestPointAlgorithm.kt\ncom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm\n*L\n30#1:55,2\n*E\n"})
/* loaded from: classes7.dex */
public final class FarthestPointAlgorithm {

    @NotNull
    public static final FarthestPointAlgorithm INSTANCE = new FarthestPointAlgorithm();

    @NotNull
    public final TouchPointPair findFarthestPointPair(@NotNull List<TouchPoint> points) {
        IntRange indices;
        Object first;
        Object last;
        Intrinsics.checkNotNullParameter(points, "points");
        if (points.size() < 2) {
            throw OnyxException.INSTANCE.m31891of("points not enough");
        }
        if (points.size() == 2) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) points);
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) points);
            return new TouchPointPair((TouchPoint) first, (TouchPoint) last);
        }
        if (points.size() == 3) {
            return GeometryUtils.INSTANCE.getLongestEdge(points);
        }
        List<TouchPoint> findConvexHull = ConvexHullAlgorithm.INSTANCE.findConvexHull(points);
        TouchPoint.Companion companion = TouchPoint.INSTANCE;
        TouchPointPair touchPointPair = new TouchPointPair(companion.getEmpty(), companion.getEmpty());
        indices = CollectionsKt__CollectionsKt.getIndices(findConvexHull);
        Iterator<Integer> it2 = indices.iterator();
        int i = 1;
        float f = 0.0f;
        while (it2.hasNext()) {
            int nextInt = ((IntIterator) it2).nextInt();
            while (true) {
                TouchPoint touchPoint = findConvexHull.get(nextInt);
                TouchPoint touchPoint2 = findConvexHull.get((nextInt + 1) % findConvexHull.size());
                TouchPoint touchPoint3 = findConvexHull.get(i);
                int i2 = i + 1;
                TouchPoint touchPoint4 = findConvexHull.get(i2 % findConvexHull.size());
                ConvexHullAlgorithm convexHullAlgorithm = ConvexHullAlgorithm.INSTANCE;
                if (convexHullAlgorithm.cross(touchPoint, touchPoint2, touchPoint4) <= convexHullAlgorithm.cross(touchPoint, touchPoint2, touchPoint3)) {
                    break;
                }
                i = i2 % findConvexHull.size();
            }
            float distance = GeometryUtils.INSTANCE.distance(findConvexHull.get(nextInt), findConvexHull.get(i));
            if (distance > f) {
                touchPointPair = new TouchPointPair(findConvexHull.get(nextInt), findConvexHull.get(i));
                f = distance;
            }
        }
        return touchPointPair;
    }
}
