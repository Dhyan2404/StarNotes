package com.onyx.android.sdk.geometry.extractor;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Comparator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\f\u0010\b\u001a\u00020\u0007*\u00020\u0005H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "outline", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "extractArgs", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRightTriangleArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RightTriangleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1045#2:56\n223#2,2:57\n223#2,2:59\n*S KotlinDebug\n*F\n+ 1 RightTriangleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor\n*L\n14#1:56\n19#1:57,2\n20#1:59,2\n*E\n"})
/* loaded from: classes7.dex */
public final class RightTriangleArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final RightTriangleArgsExtractor INSTANCE = new RightTriangleArgsExtractor();

    /* renamed from: a */
    public final void m33292a(GeometryArgs geometryArgs) {
        TouchPoint touchPoint = geometryArgs.getPoints().get(1);
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        List<TouchPoint> rotationTransform = geometryUtils.rotationTransform(geometryArgs.getPoints(), touchPoint, -geometryArgs.getRotation());
        RectF boundRect = geometryUtils.boundRect(rotationTransform);
        TouchPoint touchPoint2 = rotationTransform.get(0);
        TouchPoint touchPoint3 = rotationTransform.get(2);
        geometryArgs.setCx(boundRect.centerX());
        geometryArgs.setCy(boundRect.centerY());
        geometryArgs.setWidth(boundRect.width());
        geometryArgs.setHeight(boundRect.height());
        geometryArgs.setScaleX(touchPoint.getX());
        geometryArgs.setScaleY(touchPoint.getY());
        if (touchPoint3.getX() < touchPoint.getX()) {
            geometryArgs.setSx(-1.0f);
        }
        if (touchPoint2.getY() > touchPoint.getY()) {
            geometryArgs.setSy(-1.0f);
        }
        geometryArgs.updateCorners();
    }

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        List sortedWith;
        List<TouchPoint> listOf;
        List<TouchPoint> listOf2;
        Intrinsics.checkNotNullParameter(outline, "outline");
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(GeometryUtils.findAllSides$default(GeometryUtils.INSTANCE, outline, false, 1, null), new Comparator() { // from class: com.onyx.android.sdk.geometry.extractor.RightTriangleArgsExtractor$extractArgs$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(((TouchPointPair) t).length()), Float.valueOf(((TouchPointPair) t2).length()));
                return compareValues;
            }
        });
        TouchPointPair touchPointPair = (TouchPointPair) sortedWith.get(0);
        TouchPointPair touchPointPair2 = (TouchPointPair) sortedWith.get(1);
        TouchPointPair touchPointPair3 = (TouchPointPair) sortedWith.get(2);
        List<TouchPoint> list = outline;
        for (TouchPoint touchPoint : list) {
            if (touchPointPair.containsEndPoint(touchPoint) && touchPointPair2.containsEndPoint(touchPoint)) {
                for (TouchPoint touchPoint2 : list) {
                    if (touchPointPair2.containsEndPoint(touchPoint2) && touchPointPair3.containsEndPoint(touchPoint2)) {
                        TouchPoint findCrossPoint = touchPointPair2.getVerticalLine(touchPoint).findCrossPoint(touchPointPair3);
                        GeometryArgs geometryArgs = new GeometryArgs();
                        geometryArgs.setRotateX(touchPoint.getX());
                        geometryArgs.setRotateY(touchPoint.getY());
                        geometryArgs.setRotation(touchPointPair2.direction());
                        geometryArgs.setRx(touchPointPair2.length());
                        geometryArgs.setRy(new TouchPointPair(touchPoint, findCrossPoint).length());
                        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{findCrossPoint, touchPoint, touchPoint2});
                        geometryArgs.setPoints(listOf);
                        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{findCrossPoint, touchPoint, touchPoint2});
                        geometryArgs.setExtras(listOf2);
                        m33292a(geometryArgs);
                        return geometryArgs;
                    }
                }
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }
}
