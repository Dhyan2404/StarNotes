package com.onyx.android.sdk.geometry.algorithm;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.RotatedRect;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;", "", "()V", "findMinimumBoundingRect", "Lcom/onyx/android/sdk/geometry/data/RotatedRect;", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nMinimumBoundingRectAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MinimumBoundingRectAlgorithm.kt\ncom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,46:1\n1549#2:47\n1620#2,3:48\n1#3:51\n*S KotlinDebug\n*F\n+ 1 MinimumBoundingRectAlgorithm.kt\ncom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm\n*L\n25#1:47\n25#1:48,3\n*E\n"})
/* loaded from: classes7.dex */
public final class MinimumBoundingRectAlgorithm {

    @NotNull
    public static final MinimumBoundingRectAlgorithm INSTANCE = new MinimumBoundingRectAlgorithm();

    @NotNull
    public final RotatedRect findMinimumBoundingRect(@NotNull List<TouchPoint> points) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(points, "points");
        List<TouchPoint> findConvexHull = ConvexHullAlgorithm.INSTANCE.findConvexHull(points);
        if (findConvexHull.size() < 3) {
            return RotatedRect.INSTANCE.getEMPTY();
        }
        RotatedRect copy = RotatedRect.INSTANCE.getEMPTY().copy();
        int size = findConvexHull.size();
        float f = Float.POSITIVE_INFINITY;
        int i = 0;
        while (i < size) {
            TouchPoint touchPoint = findConvexHull.get(i);
            i++;
            TouchPoint touchPoint2 = findConvexHull.get(i % findConvexHull.size());
            float atan2 = (float) Math.atan2(touchPoint2.getY() - touchPoint.getY(), touchPoint2.getX() - touchPoint.getX());
            List<TouchPoint> list = findConvexHull;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(GeometryUtils.INSTANCE.rotationTransform((TouchPoint) it2.next(), touchPoint, -atan2));
            }
            Iterator it3 = arrayList.iterator();
            if (!it3.hasNext()) {
                throw new NoSuchElementException();
            }
            float x = ((TouchPoint) it3.next()).getX();
            while (it3.hasNext()) {
                x = Math.min(x, ((TouchPoint) it3.next()).getX());
            }
            Iterator it4 = arrayList.iterator();
            if (!it4.hasNext()) {
                throw new NoSuchElementException();
            }
            float x2 = ((TouchPoint) it4.next()).getX();
            while (it4.hasNext()) {
                x2 = Math.max(x2, ((TouchPoint) it4.next()).getX());
            }
            Iterator it5 = arrayList.iterator();
            if (!it5.hasNext()) {
                throw new NoSuchElementException();
            }
            float y = ((TouchPoint) it5.next()).getY();
            while (it5.hasNext()) {
                y = Math.min(y, ((TouchPoint) it5.next()).getY());
            }
            Iterator it6 = arrayList.iterator();
            if (!it6.hasNext()) {
                throw new NoSuchElementException();
            }
            float y2 = ((TouchPoint) it6.next()).getY();
            while (it6.hasNext()) {
                y2 = Math.max(y2, ((TouchPoint) it6.next()).getY());
            }
            float f2 = x2 - x;
            float f3 = y2 - y;
            float f4 = f2 * f3;
            if (f4 < f) {
                float f5 = 2;
                copy = new RotatedRect(GeometryUtils.INSTANCE.rotationTransform(new TouchPoint((x + x2) / f5, (y + y2) / f5), touchPoint, atan2), f2, f3, atan2);
                f = f4;
            }
        }
        return copy;
    }
}
