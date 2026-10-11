package com.onyx.android.sdk.geometry.extractor;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.AnglePoints;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\f\u0010\b\u001a\u00020\u0007*\u00020\u0005H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "outline", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "extractArgs", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nIsoscelesTriangleArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsoscelesTriangleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n2310#2,14:55\n*S KotlinDebug\n*F\n+ 1 IsoscelesTriangleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor\n*L\n18#1:55,14\n*E\n"})
/* loaded from: classes7.dex */
public final class IsoscelesTriangleArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final IsoscelesTriangleArgsExtractor INSTANCE = new IsoscelesTriangleArgsExtractor();

    /* renamed from: a */
    public final void m33285a(GeometryArgs geometryArgs) {
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
        List<TouchPoint> listOf;
        List<TouchPoint> listOf2;
        Intrinsics.checkNotNullParameter(outline, "outline");
        Iterator it2 = GeometryUtils.findAllAngles$default(GeometryUtils.INSTANCE, outline, false, 1, null).iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it2.next();
        if (it2.hasNext()) {
            float sideLengthDifferRate = ((AnglePoints) next).sideLengthDifferRate();
            do {
                Object next2 = it2.next();
                float sideLengthDifferRate2 = ((AnglePoints) next2).sideLengthDifferRate();
                if (Float.compare(sideLengthDifferRate, sideLengthDifferRate2) > 0) {
                    next = next2;
                    sideLengthDifferRate = sideLengthDifferRate2;
                }
            } while (it2.hasNext());
        }
        AnglePoints anglePoints = (AnglePoints) next;
        TouchPoint center = anglePoints.getCenter();
        float floatValue = MathUtils.INSTANCE.average(Float.valueOf(anglePoints.shortSideLength()), Float.valueOf(anglePoints.longSideLength())).floatValue();
        float previousDirection = anglePoints.previousDirection();
        float nextDirection = anglePoints.nextDirection();
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        TouchPoint findPointByDistance = geometryUtils.findPointByDistance(center, Float.valueOf(floatValue), Float.valueOf(previousDirection));
        TouchPoint findPointByDistance2 = geometryUtils.findPointByDistance(center, Float.valueOf(floatValue), Float.valueOf(nextDirection));
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setRotateX(findPointByDistance.getX());
        geometryArgs.setRotateY(findPointByDistance.getY());
        geometryArgs.setRotation(new TouchPointPair(findPointByDistance, findPointByDistance2).direction());
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{center, findPointByDistance, findPointByDistance2});
        geometryArgs.setPoints(listOf);
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{center, findPointByDistance, findPointByDistance2});
        geometryArgs.setExtras(listOf2);
        m33285a(geometryArgs);
        return geometryArgs;
    }
}
