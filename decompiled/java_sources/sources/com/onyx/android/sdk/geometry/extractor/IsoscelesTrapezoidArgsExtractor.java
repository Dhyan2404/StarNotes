package com.onyx.android.sdk.geometry.extractor;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\f\u0010\b\u001a\u00020\u0007*\u00020\u0005H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/IsoscelesTrapezoidArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "outline", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "extractArgs", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class IsoscelesTrapezoidArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final IsoscelesTrapezoidArgsExtractor INSTANCE = new IsoscelesTrapezoidArgsExtractor();

    /* renamed from: a */
    public final void m33284a(GeometryArgs geometryArgs) {
        TouchPoint touchPoint = new TouchPoint(geometryArgs.getCx(), geometryArgs.getCy());
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        List<TouchPoint> rotationTransform = geometryUtils.rotationTransform(geometryArgs.getPoints(), touchPoint, -geometryArgs.getRotation());
        RectF boundRect = geometryUtils.boundRect(rotationTransform);
        geometryArgs.setWidth(boundRect.width());
        geometryArgs.setHeight(boundRect.height());
        geometryArgs.setScaleX(touchPoint.getX());
        geometryArgs.setScaleY(touchPoint.getY());
        if (rotationTransform.get(0).getY() > rotationTransform.get(3).getY()) {
            geometryArgs.setSy(-1.0f);
        }
        geometryArgs.updateCorners();
    }

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        List<TouchPoint> listOf;
        List<TouchPoint> listOf2;
        List<TouchPoint> listOf3;
        Intrinsics.checkNotNullParameter(outline, "outline");
        TouchPoint touchPoint = outline.get(0);
        outline.get(1);
        TouchPoint touchPoint2 = outline.get(2);
        TouchPoint touchPoint3 = outline.get(3);
        TouchPointPair touchPointPair = new TouchPointPair(touchPoint3, touchPoint2);
        float distance = touchPointPair.distance(touchPoint);
        TouchPoint findCrossPoint = touchPointPair.findCrossPoint(touchPoint);
        float length = new TouchPointPair(touchPoint3, findCrossPoint).length();
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        TouchPoint findPointByDistance = geometryUtils.findPointByDistance(geometryUtils.findPointByDistance(touchPoint2, Float.valueOf(length), Float.valueOf(touchPointPair.direction() + 3.1415927f)), Float.valueOf(distance), Float.valueOf(new TouchPointPair(findCrossPoint, touchPoint).direction()));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, findPointByDistance, touchPoint2, touchPoint3});
        TouchPoint gravityCenter = geometryUtils.gravityCenter(listOf);
        float direction = touchPointPair.direction();
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setCx(gravityCenter.getX());
        geometryArgs.setCy(gravityCenter.getY());
        geometryArgs.setRotateX(gravityCenter.getX());
        geometryArgs.setRotateY(gravityCenter.getY());
        geometryArgs.setRotation(direction);
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, findPointByDistance, touchPoint2, touchPoint3});
        geometryArgs.setPoints(listOf2);
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, findPointByDistance, touchPoint2, touchPoint3, gravityCenter});
        geometryArgs.setExtras(listOf3);
        m33284a(geometryArgs);
        return geometryArgs;
    }
}
