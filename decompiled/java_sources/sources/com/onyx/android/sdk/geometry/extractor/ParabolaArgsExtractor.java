package com.onyx.android.sdk.geometry.extractor;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/ParabolaArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "()V", "extractArgs", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "outline", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ParabolaArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final ParabolaArgsExtractor INSTANCE = new ParabolaArgsExtractor();

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
        float signedDistance = touchPointPair.signedDistance(touchPointPair.farthestPoint(outline));
        TouchPoint findPointByDistance = touchPointPair.findPointByDistance(signedDistance, touchPointPair.center());
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setX(touchPoint.getX());
        geometryArgs.setY(touchPoint.getY());
        geometryArgs.setWidth(touchPointPair.length());
        geometryArgs.setHeight(signedDistance);
        geometryArgs.setRotation(touchPointPair.direction());
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, touchPoint2, findPointByDistance});
        geometryArgs.setExtras(listOf);
        return geometryArgs;
    }
}
