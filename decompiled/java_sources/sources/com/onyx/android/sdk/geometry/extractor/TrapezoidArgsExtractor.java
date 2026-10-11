package com.onyx.android.sdk.geometry.extractor;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/TrapezoidArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "()V", "extractArgs", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "outline", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TrapezoidArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final TrapezoidArgsExtractor INSTANCE = new TrapezoidArgsExtractor();

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        List<TouchPoint> listOf;
        List<TouchPoint> listOf2;
        List<TouchPoint> listOf3;
        Intrinsics.checkNotNullParameter(outline, "outline");
        TouchPoint touchPoint = outline.get(0);
        TouchPoint touchPoint2 = outline.get(1);
        TouchPoint touchPoint3 = outline.get(2);
        TouchPoint touchPoint4 = outline.get(3);
        TouchPointPair touchPointPair = new TouchPointPair(touchPoint4, touchPoint3);
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        TouchPoint findCrossPoint = new TouchPointPair(touchPoint3, touchPoint2).findCrossPoint(new TouchPointPair(touchPoint, geometryUtils.findPointByDistance(touchPoint, Float.valueOf(100.0f), Float.valueOf(touchPointPair.direction()))));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, findCrossPoint, touchPoint3, touchPoint4});
        float direction = touchPointPair.direction();
        List<TouchPoint> rotationTransform = geometryUtils.rotationTransform(listOf, touchPoint4, -direction);
        TouchPoint center = geometryUtils.center(geometryUtils.boundRect(rotationTransform));
        RectF boundRect = geometryUtils.boundRect(rotationTransform);
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setCx(center.getX());
        geometryArgs.setCy(center.getY());
        geometryArgs.setWidth(boundRect.width());
        geometryArgs.setHeight(boundRect.height());
        geometryArgs.setRotateX(touchPoint4.getX());
        geometryArgs.setRotateY(touchPoint4.getY());
        geometryArgs.setRotation(direction);
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, findCrossPoint, touchPoint3, touchPoint4});
        geometryArgs.setPoints(listOf2);
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, findCrossPoint, touchPoint3, touchPoint4});
        geometryArgs.setExtras(listOf3);
        geometryArgs.updateCorners();
        return geometryArgs;
    }
}
