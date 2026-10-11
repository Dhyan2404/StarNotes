package com.onyx.android.sdk.hwr.utils;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.data.constant.HWRConfigurations;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u0014\u0010\b\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u0014\u0010\t\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/utils/LineUtils;", "", "()V", "isAllPointParallel", "", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "isAllPointParallelIgnoreDirection", "isLine", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nLineUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineUtils.kt\ncom/onyx/android/sdk/hwr/utils/LineUtils\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n657#2,14:77\n1855#3:91\n1940#3,14:92\n1856#3:106\n*S KotlinDebug\n*F\n+ 1 LineUtils.kt\ncom/onyx/android/sdk/hwr/utils/LineUtils\n*L\n42#1:77,14\n61#1:91\n63#1:92,14\n61#1:106\n*E\n"})
/* loaded from: classes7.dex */
public final class LineUtils {

    @NotNull
    public static final LineUtils INSTANCE = new LineUtils();

    public final boolean isAllPointParallel(@NotNull List<TouchPoint> points) {
        Object first;
        Object last;
        double averageOfFloat;
        Intrinsics.checkNotNullParameter(points, "points");
        List resample$default = GeometryUtils.resample$default(GeometryUtils.INSTANCE, points, Float.valueOf(GeometryConfigurations.INSTANCE.getLinePointResampleSpacing()), null, 2, null);
        if (resample$default.size() < 2) {
            return false;
        }
        if (resample$default.size() == 2) {
            return true;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) resample$default);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) resample$default);
        float direction = new TouchPointPair((TouchPoint) first, (TouchPoint) last).direction();
        ArrayList arrayList = new ArrayList();
        int size = resample$default.size() - 1;
        if (size <= resample$default.size() - 1 && size > 0) {
            int i = 0;
            while (i < size) {
                Object obj = resample$default.get(i);
                i++;
                arrayList.add(Float.valueOf(GeometryUtils.INSTANCE.deltaRad(new TouchPointPair((TouchPoint) obj, (TouchPoint) resample$default.get(i)).direction(), direction)));
            }
        }
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        averageOfFloat = CollectionsKt___CollectionsKt.averageOfFloat(arrayList);
        return geometryUtils.radToDegree((float) averageOfFloat) < GeometryConfigurations.INSTANCE.getLineMistakeDegree();
    }

    public final boolean isAllPointParallelIgnoreDirection(@NotNull List<TouchPoint> points) {
        Object first;
        Object last;
        List listOf;
        Intrinsics.checkNotNullParameter(points, "points");
        if (points.size() < 2) {
            return false;
        }
        if (points.size() == 2) {
            return true;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) points);
        TouchPoint touchPoint = (TouchPoint) first;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) points);
        TouchPoint touchPoint2 = (TouchPoint) last;
        TouchPointPair touchPointPair = new TouchPointPair(touchPoint, touchPoint2);
        for (TouchPoint touchPoint3 : points) {
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, touchPoint2});
            Iterator it2 = listOf.iterator();
            if (!it2.hasNext()) {
                throw new NoSuchElementException();
            }
            Object next = it2.next();
            if (it2.hasNext()) {
                double distance = TouchPoint.INSTANCE.distance((TouchPoint) next, touchPoint3);
                do {
                    Object next2 = it2.next();
                    double distance2 = TouchPoint.INSTANCE.distance((TouchPoint) next2, touchPoint3);
                    if (Double.compare(distance, distance2) < 0) {
                        next = next2;
                        distance = distance2;
                    }
                } while (it2.hasNext());
            }
            TouchPointPair touchPointPair2 = new TouchPointPair(touchPoint3, (TouchPoint) next);
            GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
            float deltaRad = geometryUtils.deltaRad(touchPointPair2.direction(), touchPointPair.direction());
            if (deltaRad > 1.5707964f) {
                deltaRad = 3.1415927f - deltaRad;
            }
            if (geometryUtils.radToDegree(deltaRad) > HWRConfigurations.INSTANCE.getLineMistakenDegreeForRuler()) {
                return false;
            }
        }
        return true;
    }

    public final boolean isLine(@NotNull List<TouchPoint> points) {
        Intrinsics.checkNotNullParameter(points, "points");
        if (points.size() < 2) {
            return false;
        }
        return points.size() == 2 || isAllPointParallel(points);
    }
}
