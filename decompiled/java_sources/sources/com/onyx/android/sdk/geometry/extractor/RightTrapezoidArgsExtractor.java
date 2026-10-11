package com.onyx.android.sdk.geometry.extractor;

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

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\f\u0010\b\u001a\u00020\u0007*\u00020\u0005H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/RightTrapezoidArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "outline", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "extractArgs", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RightTrapezoidArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final RightTrapezoidArgsExtractor INSTANCE = new RightTrapezoidArgsExtractor();

    /* renamed from: a */
    public final void m33291a(GeometryArgs geometryArgs) {
        geometryArgs.updateCorners();
    }

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        List<TouchPoint> listOf;
        List<TouchPoint> listOf2;
        Intrinsics.checkNotNullParameter(outline, "outline");
        TouchPoint touchPoint = outline.get(0);
        TouchPoint touchPoint2 = outline.get(1);
        TouchPoint touchPoint3 = outline.get(2);
        TouchPoint touchPoint4 = outline.get(3);
        TouchPointPair touchPointPair = new TouchPointPair(touchPoint, touchPoint4);
        TouchPointPair touchPointPair2 = new TouchPointPair(touchPoint, touchPoint2);
        TouchPointPair touchPointPair3 = new TouchPointPair(touchPoint4, touchPoint3);
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        TouchPoint findPointByDistance = geometryUtils.findPointByDistance(touchPoint, Float.valueOf(touchPointPair2.length()), Float.valueOf(touchPointPair.directionTo(touchPoint2)));
        TouchPoint findPointByDistance2 = geometryUtils.findPointByDistance(touchPoint4, Float.valueOf(touchPointPair3.length()), Float.valueOf(touchPointPair.directionTo(touchPoint3)));
        TouchPointPair touchPointPair4 = new TouchPointPair(touchPoint4, findPointByDistance2);
        float length = touchPointPair.length();
        TouchPoint findPointByDistance3 = geometryUtils.findPointByDistance(touchPointPair4.center(), Float.valueOf(length / 2), Float.valueOf(touchPointPair.reversedDirection()));
        float direction = touchPointPair4.direction();
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setCx(findPointByDistance3.getX());
        geometryArgs.setCy(findPointByDistance3.getY());
        geometryArgs.setWidth(touchPointPair4.length());
        geometryArgs.setHeight(length);
        geometryArgs.setRotateX(findPointByDistance3.getX());
        geometryArgs.setRotateY(findPointByDistance3.getY());
        geometryArgs.setRotation(direction);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, findPointByDistance, findPointByDistance2, touchPoint4});
        geometryArgs.setPoints(listOf);
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, findPointByDistance, findPointByDistance2, touchPoint4});
        geometryArgs.setExtras(listOf2);
        m33291a(geometryArgs);
        return geometryArgs;
    }
}
