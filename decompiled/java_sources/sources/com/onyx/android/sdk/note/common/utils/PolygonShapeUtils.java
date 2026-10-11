package com.onyx.android.sdk.note.common.utils;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u001e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004J \u0010\n\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J(\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0004H\u0002¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/PolygonShapeUtils;", "", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "", "sideNum", "calculatePolygonPoints", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "downPoint", "upPoint", "a", "centerPoint", "", "radius", "sideAngle", FirebaseAnalytics.Param.INDEX, "b", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PolygonShapeUtils {

    @NotNull
    public static final PolygonShapeUtils INSTANCE = new PolygonShapeUtils();

    /* renamed from: a */
    public final TouchPointList m34034a(TouchPoint downPoint, TouchPoint upPoint, int sideNum) {
        TouchPointList touchPointList = new TouchPointList();
        TouchPoint touchPoint = new TouchPoint(downPoint.getX(), (downPoint.getY() + upPoint.getY()) / 2.0f);
        float distance = (float) MathUtils.INSTANCE.distance(touchPoint.getX(), touchPoint.getY(), upPoint.getX(), upPoint.getY());
        float f = 360.0f / sideNum;
        for (int i = 0; i < sideNum; i++) {
            touchPointList.add(m34035b(touchPoint, distance, f, i));
        }
        return touchPointList;
    }

    /* renamed from: b */
    public final TouchPoint m34035b(TouchPoint centerPoint, float radius, float sideAngle, int index) {
        MathUtils mathUtils = MathUtils.INSTANCE;
        float f = sideAngle * index;
        return new TouchPoint(mathUtils.sin(radius, f) + centerPoint.getX(), (-mathUtils.cos(radius, f)) + centerPoint.getY());
    }

    @NotNull
    public final TouchPointList calculatePolygonPoints(@NotNull TouchPointList pointList, int sideNum) {
        Object first;
        Object last;
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        TouchPointList touchPointList = new TouchPointList();
        if (pointList.size() < 1) {
            return touchPointList;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) pointList.getPoints());
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) pointList.getPoints());
        return calculatePolygonPoints((TouchPoint) first, (TouchPoint) last, sideNum);
    }

    @NotNull
    public final TouchPointList calculatePolygonPoints(@NotNull TouchPoint downPoint, @NotNull TouchPoint upPoint, int sideNum) {
        Intrinsics.checkNotNullParameter(downPoint, "downPoint");
        Intrinsics.checkNotNullParameter(upPoint, "upPoint");
        return m34034a(downPoint, upPoint, sideNum);
    }
}
