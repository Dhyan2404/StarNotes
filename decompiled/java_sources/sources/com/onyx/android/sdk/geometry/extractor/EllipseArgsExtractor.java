package com.onyx.android.sdk.geometry.extractor;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.SpreadBuilder;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\f\u0010\b\u001a\u00020\u0007*\u00020\u0005H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/EllipseArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "outline", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "extractArgs", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEllipseArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EllipseArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/EllipseArgsExtractor\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,48:1\n37#2,2:49\n*S KotlinDebug\n*F\n+ 1 EllipseArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/EllipseArgsExtractor\n*L\n34#1:49,2\n*E\n"})
/* loaded from: classes7.dex */
public final class EllipseArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final EllipseArgsExtractor INSTANCE = new EllipseArgsExtractor();

    /* renamed from: a */
    public final void m33283a(GeometryArgs geometryArgs) {
        TouchPoint touchPoint = new TouchPoint(geometryArgs.getCx(), geometryArgs.getCy());
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        RectF boundRect = geometryUtils.boundRect(geometryUtils.rotationTransform(geometryArgs.getPoints(), touchPoint, -geometryArgs.getRotation()));
        geometryArgs.setWidth(boundRect.width());
        geometryArgs.setHeight(boundRect.height());
        geometryArgs.updateCorners();
    }

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        List<TouchPoint> listOf;
        List<TouchPoint> listOf2;
        Intrinsics.checkNotNullParameter(outline, "outline");
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        TouchPointPair adjustToStandardDirectionIfPossible = geometryUtils.adjustToStandardDirectionIfPossible(geometryUtils.farthestPointPair(outline), GeometryConfigurations.INSTANCE.getAngleAdjustRangeForEllipse());
        TouchPoint center = adjustToStandardDirectionIfPossible.center();
        float distance = adjustToStandardDirectionIfPossible.distance(adjustToStandardDirectionIfPossible.farthestPoint(outline));
        float f = -distance;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{adjustToStandardDirectionIfPossible.findPointByDistance(distance, adjustToStandardDirectionIfPossible.getP1()), adjustToStandardDirectionIfPossible.findPointByDistance(distance, adjustToStandardDirectionIfPossible.getP2()), adjustToStandardDirectionIfPossible.findPointByDistance(f, adjustToStandardDirectionIfPossible.getP2()), adjustToStandardDirectionIfPossible.findPointByDistance(f, adjustToStandardDirectionIfPossible.getP1())});
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setCx(center.getX());
        geometryArgs.setCy(center.getY());
        geometryArgs.setRx(adjustToStandardDirectionIfPossible.length() / 2);
        geometryArgs.setRy(distance);
        geometryArgs.setRotateX(center.getX());
        geometryArgs.setRotateY(center.getY());
        geometryArgs.setRotation(adjustToStandardDirectionIfPossible.direction());
        geometryArgs.setPoints(listOf);
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.addSpread(listOf.toArray(new TouchPoint[0]));
        spreadBuilder.add(center);
        listOf2 = CollectionsKt__CollectionsKt.listOf(spreadBuilder.toArray(new TouchPoint[spreadBuilder.size()]));
        geometryArgs.setExtras(listOf2);
        m33283a(geometryArgs);
        return geometryArgs;
    }
}
