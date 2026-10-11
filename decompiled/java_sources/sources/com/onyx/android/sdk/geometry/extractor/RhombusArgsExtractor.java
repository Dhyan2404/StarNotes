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

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/RhombusArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "()V", "extractArgs", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "outline", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class RhombusArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final RhombusArgsExtractor INSTANCE = new RhombusArgsExtractor();

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
        TouchPointPair touchPointPair = new TouchPointPair(touchPoint2, touchPoint);
        TouchPointPair touchPointPair2 = new TouchPointPair(touchPoint2, touchPoint3);
        float length = touchPointPair.length();
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        TouchPoint findPointByDistance = geometryUtils.findPointByDistance(touchPoint2, Float.valueOf(length), Float.valueOf(touchPointPair2.direction()));
        TouchPoint findPointByDistance2 = geometryUtils.findPointByDistance(findPointByDistance, Float.valueOf(touchPointPair.length()), Float.valueOf(touchPointPair.direction()));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, touchPoint2, findPointByDistance, findPointByDistance2});
        TouchPoint gravityCenter = geometryUtils.gravityCenter(listOf);
        float direction = new TouchPointPair(gravityCenter, findPointByDistance).direction();
        RectF boundRect = geometryUtils.boundRect(geometryUtils.rotationTransform(listOf, gravityCenter, -direction));
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setCx(gravityCenter.getX());
        geometryArgs.setCy(gravityCenter.getY());
        geometryArgs.setWidth(boundRect.width());
        geometryArgs.setHeight(boundRect.height());
        geometryArgs.setRotateX(gravityCenter.getX());
        geometryArgs.setRotateY(gravityCenter.getY());
        geometryArgs.setRotation(direction);
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, touchPoint2, findPointByDistance, findPointByDistance2});
        geometryArgs.setPoints(listOf2);
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, touchPoint2, findPointByDistance, findPointByDistance2, gravityCenter});
        geometryArgs.setExtras(listOf3);
        geometryArgs.updateCorners();
        return geometryArgs;
    }
}
