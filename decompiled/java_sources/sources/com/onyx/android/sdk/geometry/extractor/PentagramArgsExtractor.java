package com.onyx.android.sdk.geometry.extractor;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.SpreadBuilder;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\f\u0010\b\u001a\u00020\u0007*\u00020\u0005H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "outline", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "extractArgs", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPentagramArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PentagramArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,64:1\n37#2,2:65\n*S KotlinDebug\n*F\n+ 1 PentagramArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor\n*L\n53#1:65,2\n*E\n"})
/* loaded from: classes7.dex */
public final class PentagramArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final PentagramArgsExtractor INSTANCE = new PentagramArgsExtractor();

    /* renamed from: a */
    public final void m33288a(GeometryArgs geometryArgs) {
        float f = 2;
        geometryArgs.setWidth(geometryArgs.getR() * f);
        geometryArgs.setHeight(geometryArgs.getR() * f);
        geometryArgs.updateCorners();
    }

    @Override // com.onyx.android.sdk.geometry.extractor.IGeometryArgsExtractor
    @NotNull
    public GeometryArgs extractArgs(@NotNull List<TouchPoint> outline) {
        List<TouchPoint> listOf;
        Object first;
        List<TouchPoint> listOf2;
        Intrinsics.checkNotNullParameter(outline, "outline");
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        RectF boundRect = geometryUtils.boundRect(outline);
        TouchPoint center = geometryUtils.center(boundRect);
        float f = 2;
        float floatValue = MathUtils.INSTANCE.average(Float.valueOf(boundRect.width() / f), Float.valueOf(boundRect.height() / f)).floatValue();
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setCx(center.getX());
        geometryArgs.setCy(center.getY());
        geometryArgs.setR(floatValue);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(center);
        geometryArgs.setExtras(listOf);
        float f2 = 0.6f * floatValue;
        float degreeToRad = geometryUtils.degreeToRad(54.0f);
        TouchPoint touchPoint = new TouchPoint(center.getX(), center.getY() - floatValue);
        double d = degreeToRad;
        TouchPoint touchPoint2 = new TouchPoint(center.getX() - (((float) Math.cos(d)) * f2), center.getY() - (((float) Math.sin(d)) * f2));
        ArrayList arrayList = new ArrayList();
        float degreeToRad2 = geometryUtils.degreeToRad(72.0f);
        for (int i = 0; i < 5; i++) {
            GeometryUtils geometryUtils2 = GeometryUtils.INSTANCE;
            float f3 = i * degreeToRad2;
            arrayList.add(geometryUtils2.rotationTransform(touchPoint2, center, f3));
            arrayList.add(geometryUtils2.rotationTransform(touchPoint, center, f3));
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) outline);
        float direction = new TouchPointPair(center, (TouchPoint) first).direction() + 1.5707964f;
        GeometryArgs geometryArgs2 = new GeometryArgs();
        geometryArgs2.setCx(center.getX());
        geometryArgs2.setCy(center.getY());
        geometryArgs2.setR(floatValue);
        geometryArgs2.setRotateX(center.getX());
        geometryArgs2.setRotateY(center.getY());
        geometryArgs2.setRotation(direction);
        geometryArgs2.setPoints(arrayList);
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.add(center);
        spreadBuilder.addSpread(arrayList.toArray(new TouchPoint[0]));
        listOf2 = CollectionsKt__CollectionsKt.listOf(spreadBuilder.toArray(new TouchPoint[spreadBuilder.size()]));
        geometryArgs2.setExtras(listOf2);
        m33288a(geometryArgs2);
        return geometryArgs2;
    }
}
