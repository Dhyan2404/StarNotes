package com.onyx.android.sdk.geometry.data;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.math3.linear.SymmLQ;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0004\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0001\u001a\u0012\u0010\b\u001a\u00020\t*\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001\u001a\u001c\u0010\u000b\u001a\u00020\t*\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\b\b\u0002\u0010\f\u001a\u00020\r\u001a\u001e\u0010\u000e\u001a\u00020\t*\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\b\b\u0002\u0010\f\u001a\u00020\rH\u0002\u001a\u0012\u0010\u000f\u001a\u00020\t*\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001\u001a\u0012\u0010\u0010\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001\u001a\u0012\u0010\u0011\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\r\u001a\u001e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00010\u0013*\b\u0012\u0004\u0012\u00020\u00010\u00132\u0006\u0010\u0012\u001a\u00020\r\u001a\u0014\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u001a \u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00010\u0013*\b\u0012\u0004\u0012\u00020\u00010\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0003¨\u0006\u0017"}, m61528d2 = {"horizontalGuideline", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "getHorizontalGuideline", "()Lcom/onyx/android/sdk/geometry/data/Guideline;", "verticalGuideline", "getVerticalGuideline", "boundRect", "Landroid/graphics/RectF;", "isAlign", "", Constants.ATTRVAL_OTHER, "isNear", SymmLQ.f108603e, "", "isNearInternal", "isParallel", "merge", "stretch", ExtUnits.UNIT_PX, "", Constants.ELEMNAME_TRANSFORM_STRING, "matrix", "Landroid/graphics/Matrix;", "sdk-geometry_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGuideLine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuideLine.kt\ncom/onyx/android/sdk/geometry/data/GuideLineKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1549#2:134\n1620#2,3:135\n1549#2:138\n1620#2,3:139\n1#3:142\n*S KotlinDebug\n*F\n+ 1 GuideLine.kt\ncom/onyx/android/sdk/geometry/data/GuideLineKt\n*L\n69#1:134\n69#1:135,3\n92#1:138\n92#1:139,3\n*E\n"})
/* loaded from: classes7.dex */
public final class GuideLineKt {

    @NotNull
    private static final Guideline horizontalGuideline;

    @NotNull
    private static final Guideline verticalGuideline;

    static {
        Guideline guideline = new Guideline("Horizontal", new TouchPoint(0.0f, 0.0f), new TouchPoint(1.0f, 0.0f), null, 8, null);
        guideline.setShapeGuideLine(false);
        horizontalGuideline = guideline;
        Guideline guideline2 = new Guideline("Vertical", new TouchPoint(0.0f, 0.0f), new TouchPoint(0.0f, 1.0f), null, 8, null);
        guideline2.setShapeGuideLine(false);
        verticalGuideline = guideline2;
    }

    @NotNull
    public static final RectF boundRect(@NotNull Guideline guideline) {
        List<TouchPoint> listOf;
        Intrinsics.checkNotNullParameter(guideline, "<this>");
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{guideline.getP1(), guideline.getP2()});
        return geometryUtils.boundRect(listOf);
    }

    @NotNull
    public static final Guideline getHorizontalGuideline() {
        return horizontalGuideline;
    }

    @NotNull
    public static final Guideline getVerticalGuideline() {
        return verticalGuideline;
    }

    public static final boolean isAlign(@NotNull Guideline guideline, @NotNull Guideline other) {
        Intrinsics.checkNotNullParameter(guideline, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return isParallel(guideline, other) && new TouchPointPair(guideline.getP1(), guideline.getP2()).distance(other.center()) < GeometryConfigurations.INSTANCE.getGuidelineAlignThreshold();
    }

    public static final boolean isNear(@NotNull Guideline guideline, @NotNull Guideline other, @NotNull Number threshold) {
        Intrinsics.checkNotNullParameter(guideline, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(threshold, "threshold");
        return isNearInternal(guideline, other, threshold) || isNearInternal(other, guideline, threshold);
    }

    public static /* synthetic */ boolean isNear$default(Guideline guideline, Guideline guideline2, Number number, int i, Object obj) {
        if ((i & 2) != 0) {
            number = Float.valueOf(GeometryConfigurations.INSTANCE.getGuidelineNearThreshold());
        }
        return isNear(guideline, guideline2, number);
    }

    private static final boolean isNearInternal(Guideline guideline, Guideline guideline2, Number number) {
        boolean inRange;
        boolean inRange2;
        List listOf;
        float m73067minOrThrow;
        boolean inRange3;
        boolean inRange4;
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        GeometryConfigurations geometryConfigurations = GeometryConfigurations.INSTANCE;
        if (!geometryUtils.isParallelTo(guideline, guideline2, Float.valueOf(geometryUtils.degreeToRad(geometryConfigurations.getGuidelineParallelDistanceThreshold())), true) || guideline.distance(guideline2.center()) > number.floatValue()) {
            return false;
        }
        TouchPoint findCrossPoint = guideline.findCrossPoint(guideline2.getP1());
        TouchPoint findCrossPoint2 = guideline.findCrossPoint(guideline2.getP2());
        MathUtils mathUtils = MathUtils.INSTANCE;
        inRange = mathUtils.inRange(Float.valueOf(findCrossPoint.getX()), Float.valueOf(guideline.getP1().getX()), Float.valueOf(guideline.getP2().getX()), (r16 & 4) != 0, (r16 & 8) != 0, (r16 & 16) != 0 ? false : true);
        if (inRange) {
            inRange4 = mathUtils.inRange(Float.valueOf(findCrossPoint.getY()), Float.valueOf(guideline.getP1().getY()), Float.valueOf(guideline.getP2().getY()), (r16 & 4) != 0, (r16 & 8) != 0, (r16 & 16) != 0 ? false : true);
            if (inRange4) {
                return true;
            }
        }
        inRange2 = mathUtils.inRange(Float.valueOf(findCrossPoint2.getX()), Float.valueOf(guideline.getP1().getX()), Float.valueOf(guideline.getP2().getX()), (r16 & 4) != 0, (r16 & 8) != 0, (r16 & 16) != 0 ? false : true);
        if (inRange2) {
            inRange3 = mathUtils.inRange(Float.valueOf(findCrossPoint2.getY()), Float.valueOf(guideline.getP1().getY()), Float.valueOf(guideline.getP2().getY()), (r16 & 4) != 0, (r16 & 8) != 0, (r16 & 16) != 0 ? false : true);
            if (inRange3) {
                return true;
            }
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(new TouchPointPair(guideline.getP1(), findCrossPoint).length()), Float.valueOf(new TouchPointPair(guideline.getP1(), findCrossPoint2).length()), Float.valueOf(new TouchPointPair(guideline.getP2(), findCrossPoint).length()), Float.valueOf(new TouchPointPair(guideline.getP2(), findCrossPoint2).length())});
        m73067minOrThrow = CollectionsKt___CollectionsKt.m73067minOrThrow((Iterable<Float>) listOf);
        return m73067minOrThrow < geometryConfigurations.getGuidelineNearThreshold();
    }

    public static /* synthetic */ boolean isNearInternal$default(Guideline guideline, Guideline guideline2, Number number, int i, Object obj) {
        if ((i & 2) != 0) {
            number = Float.valueOf(GeometryConfigurations.INSTANCE.getGuidelineNearThreshold());
        }
        return isNearInternal(guideline, guideline2, number);
    }

    public static final boolean isParallel(@NotNull Guideline guideline, @NotNull Guideline other) {
        Intrinsics.checkNotNullParameter(guideline, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        return geometryUtils.isParallelTo(guideline, other, Float.valueOf(geometryUtils.degreeToRad(GeometryConfigurations.INSTANCE.getGuidelineParallelDegThreshold())), true);
    }

    @NotNull
    public static final Guideline merge(@NotNull Guideline guideline, @NotNull Guideline other) {
        List<TouchPoint> listOf;
        Intrinsics.checkNotNullParameter(guideline, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{guideline.getP1(), guideline.getP2(), other.getP1(), other.getP2()});
        TouchPointPair farthestPointPair = GeometryUtils.INSTANCE.farthestPointPair(listOf);
        return new Guideline(guideline.getShapeId() + '/' + other.getShapeId(), farthestPointPair.getP1(), farthestPointPair.getP2(), guideline.getId() + '/' + other.getId());
    }

    @NotNull
    public static final Guideline stretch(@NotNull Guideline guideline, @NotNull Number px) {
        Intrinsics.checkNotNullParameter(guideline, "<this>");
        Intrinsics.checkNotNullParameter(px, "px");
        TouchPoint center = guideline.center();
        TouchPointPair touchPointPair = new TouchPointPair(center, guideline.getP1());
        TouchPointPair touchPointPair2 = new TouchPointPair(center, guideline.getP2());
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        Guideline guideline2 = new Guideline(guideline.getShapeId(), geometryUtils.findPointByDistance(center, Float.valueOf(touchPointPair.length() + px.floatValue()), Float.valueOf(touchPointPair.direction())), geometryUtils.findPointByDistance(center, Float.valueOf(touchPointPair2.length() + px.floatValue()), Float.valueOf(touchPointPair2.direction())), guideline.getId());
        guideline2.setSupportHorizontalAlignment(guideline.getSupportHorizontalAlignment());
        guideline2.setSupportVerticalAlignment(guideline.getSupportVerticalAlignment());
        return guideline2;
    }

    @NotNull
    public static final Guideline transform(@NotNull Guideline guideline, @Nullable Matrix matrix) {
        Intrinsics.checkNotNullParameter(guideline, "<this>");
        Guideline guideline2 = new Guideline(guideline.getShapeId(), guideline.getP1().transform(matrix), guideline.getP2().transform(matrix), guideline.getId());
        guideline2.setSupportHorizontalAlignment(guideline.getSupportHorizontalAlignment());
        guideline2.setSupportVerticalAlignment(guideline.getSupportVerticalAlignment());
        return guideline2;
    }

    @NotNull
    public static final List<Guideline> transform(@NotNull List<Guideline> list, @Nullable Matrix matrix) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<Guideline> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(transform((Guideline) it2.next(), matrix));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Guideline> stretch(@NotNull List<Guideline> list, @NotNull Number px) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(px, "px");
        List<Guideline> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(stretch((Guideline) it2.next(), px));
        }
        return arrayList;
    }
}
