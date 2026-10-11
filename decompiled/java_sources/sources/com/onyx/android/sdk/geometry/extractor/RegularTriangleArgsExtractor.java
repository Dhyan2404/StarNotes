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
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\f\u0010\b\u001a\u00020\u0007*\u00020\u0005H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/RegularTriangleArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "outline", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "extractArgs", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RegularTriangleArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final RegularTriangleArgsExtractor INSTANCE = new RegularTriangleArgsExtractor();

    /* renamed from: a */
    public final void m33290a(GeometryArgs geometryArgs) {
        Object first;
        Object last;
        TouchPoint touchPoint = new TouchPoint(geometryArgs.getRotateX(), geometryArgs.getRotateY());
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        List<TouchPoint> rotationTransform = geometryUtils.rotationTransform(geometryArgs.getPoints(), touchPoint, -geometryArgs.getRotation());
        RectF boundRect = geometryUtils.boundRect(rotationTransform);
        geometryArgs.setCx(boundRect.centerX());
        geometryArgs.setCy(boundRect.centerY());
        geometryArgs.setWidth(boundRect.width());
        geometryArgs.setHeight(boundRect.height());
        geometryArgs.setScaleX(geometryArgs.getCx());
        geometryArgs.setScaleY(geometryArgs.getCy());
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) rotationTransform);
        if (((TouchPoint) first).getY() > geometryArgs.getCy()) {
            geometryArgs.setSy(-1.0f);
        }
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) rotationTransform);
        if (((TouchPoint) last).getX() > geometryArgs.getCx()) {
            geometryArgs.setSx(-1.0f);
        }
        geometryArgs.updateCorners();
    }

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        Object first;
        List<TouchPoint> listOf;
        List<TouchPoint> listOf2;
        Intrinsics.checkNotNullParameter(outline, "outline");
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        TouchPoint gravityCenter = geometryUtils.gravityCenter(outline);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) outline);
        TouchPoint touchPoint = (TouchPoint) first;
        TouchPoint rotationTransform = geometryUtils.rotationTransform(touchPoint, gravityCenter, 2.0943952f);
        TouchPoint rotationTransform2 = geometryUtils.rotationTransform(rotationTransform, gravityCenter, 2.0943952f);
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setRotateX(rotationTransform.getX());
        geometryArgs.setRotateY(rotationTransform.getY());
        geometryArgs.setRotation(new TouchPointPair(rotationTransform, rotationTransform2).direction());
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, rotationTransform, rotationTransform2});
        geometryArgs.setPoints(listOf);
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, rotationTransform, rotationTransform2, gravityCenter});
        geometryArgs.setExtras(listOf2);
        m33290a(geometryArgs);
        return geometryArgs;
    }
}
