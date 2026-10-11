package com.onyx.android.sdk.geometry.extractor;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.SpreadBuilder;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\f\u0010\b\u001a\u00020\u0007*\u00020\u0005H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/extractor/SquareArgsExtractor;", "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "outline", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "extractArgs", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSquareArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SquareArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/SquareArgsExtractor\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,47:1\n37#2,2:48\n37#2,2:50\n*S KotlinDebug\n*F\n+ 1 SquareArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/SquareArgsExtractor\n*L\n32#1:48,2\n33#1:50,2\n*E\n"})
/* loaded from: classes7.dex */
public final class SquareArgsExtractor implements IGeometryArgsExtractor {

    @NotNull
    public static final SquareArgsExtractor INSTANCE = new SquareArgsExtractor();

    /* renamed from: a */
    public final void m33293a(GeometryArgs geometryArgs) {
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
        List<TouchPoint> listOf3;
        Intrinsics.checkNotNullParameter(outline, "outline");
        TouchPoint touchPoint = outline.get(0);
        TouchPoint touchPoint2 = outline.get(1);
        TouchPoint touchPoint3 = outline.get(2);
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        float distanceTo = geometryUtils.distanceTo(touchPoint, touchPoint2);
        TouchPointPair touchPointPair = new TouchPointPair(touchPoint, touchPoint2);
        float signFactor = MathUtils.INSTANCE.signFactor(Float.valueOf(touchPointPair.signedDistance(touchPoint3))) * distanceTo;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, touchPoint2, touchPointPair.findPointByDistance(signFactor, touchPoint2), touchPointPair.findPointByDistance(signFactor, touchPoint)});
        TouchPoint gravityCenter = geometryUtils.gravityCenter(listOf);
        float direction = touchPointPair.direction();
        GeometryArgs geometryArgs = new GeometryArgs();
        geometryArgs.setCx(gravityCenter.getX());
        geometryArgs.setCy(gravityCenter.getY());
        geometryArgs.setRotateX(gravityCenter.getX());
        geometryArgs.setRotateY(gravityCenter.getY());
        geometryArgs.setRotation(direction);
        List<TouchPoint> list = listOf;
        TouchPoint[] touchPointArr = (TouchPoint[]) list.toArray(new TouchPoint[0]);
        listOf2 = CollectionsKt__CollectionsKt.listOf(Arrays.copyOf(touchPointArr, touchPointArr.length));
        geometryArgs.setPoints(listOf2);
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.addSpread(list.toArray(new TouchPoint[0]));
        spreadBuilder.add(gravityCenter);
        listOf3 = CollectionsKt__CollectionsKt.listOf(spreadBuilder.toArray(new TouchPoint[spreadBuilder.size()]));
        geometryArgs.setExtras(listOf3);
        m33293a(geometryArgs);
        return geometryArgs;
    }
}
