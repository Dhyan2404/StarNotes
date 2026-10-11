package com.onyx.android.sdk.geometry.extractor;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J \u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/ArcArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "outline", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "extractArgs", "", "deltaAngle", "", "isLongerArc", "isClockwise", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ArcArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final ArcArgsExtractor INSTANCE = new ArcArgsExtractor();

    /* renamed from: a */
    public final float m33281a(float deltaAngle, boolean isLongerArc, boolean isClockwise) {
        float abs = Math.abs(deltaAngle);
        float f = (float) (6.283185307179586d - abs);
        return (isLongerArc ? Math.max(abs, f) : Math.min(abs, f)) * (isClockwise ? 1 : -1);
    }

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        Object first;
        Object last;
        List<TouchPoint> listOf;
        Intrinsics.checkNotNullParameter(outline, "outline");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) outline);
        TouchPoint touchPoint = (TouchPoint) first;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) outline);
        TouchPoint touchPoint2 = (TouchPoint) last;
        TouchPointPair touchPointPair = new TouchPointPair(touchPoint, touchPoint2);
        TouchPoint findPointByDistance = touchPointPair.findPointByDistance(touchPointPair.signedDistance(touchPointPair.farthestPoint(outline)), touchPointPair.center());
        TouchPoint findCrossPoint = new TouchPointPair(touchPoint, touchPoint2).getCentralVerticalLine().findCrossPoint(new TouchPointPair(touchPoint, findPointByDistance).getCentralVerticalLine());
        boolean isClockwise = GeometryUtils.INSTANCE.isClockwise(new TouchPointPair(touchPoint, findPointByDistance), new TouchPointPair(findPointByDistance, touchPoint2));
        boolean isSameSide = touchPointPair.isSameSide(findPointByDistance, findCrossPoint);
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setCx(findCrossPoint.getX());
        geometryArgs.setCy(findCrossPoint.getY());
        geometryArgs.setR((float) TouchPoint.INSTANCE.distance(findCrossPoint, touchPoint));
        geometryArgs.setStartAngle(new TouchPointPair(findCrossPoint, touchPoint).direction());
        geometryArgs.setEndAngle(new TouchPointPair(findCrossPoint, touchPoint2).direction());
        geometryArgs.setSweepAngle(m33281a(geometryArgs.getEndAngle() - geometryArgs.getStartAngle(), isSameSide, isClockwise));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{findCrossPoint, touchPoint, touchPoint2, findPointByDistance});
        geometryArgs.setExtras(listOf);
        return geometryArgs;
    }
}
