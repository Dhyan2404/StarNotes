package com.onyx.android.sdk.note.common.utils;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.shape.BaseShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b'\u0010(J&\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J6\u0010\t\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J4\u0010\t\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0007\u001a\u00020\u0004J \u0010\u0013\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\u0004J*\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\n2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0004J&\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J.\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004J\"\u0010\u001d\u001a\u00020\b*\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J*\u0010 \u001a\u00020\b*\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J2\u0010 \u001a\u00020\b*\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\"\u0010&\u001a\u00020%2\u0006\u0010\"\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020#2\b\u0010!\u001a\u0004\u0018\u00010\rH\u0002¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;", "", "Lcom/onyx/android/sdk/note/common/shape/BaseShape;", "shape", "", "x", "y", "radius", "", "hitTestShapePoint", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", PointConstant.POINT_FILE_END, "Landroid/graphics/Matrix;", "shapeMatrix", "shapePointList", "hitPointList", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "hitTestShapePoints", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeList", "limit", "hitTestShapesPoints", "hitTestShapeLines", "x1", "y1", "x2", "y2", "hitTestOriginRect", "Landroid/graphics/RectF;", "rect", "hitTestRect", "matrix", "point", "", "outArray", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeHitTests.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeHitTests.kt\ncom/onyx/android/sdk/note/common/utils/ShapeHitTests\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,185:1\n1549#2:186\n1620#2,3:187\n1855#2,2:190\n215#3,2:192\n*S KotlinDebug\n*F\n+ 1 ShapeHitTests.kt\ncom/onyx/android/sdk/note/common/utils/ShapeHitTests\n*L\n57#1:186\n57#1:187,3\n105#1:190,2\n111#1:192,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeHitTests {

    @NotNull
    public static final ShapeHitTests INSTANCE = new ShapeHitTests();

    /* renamed from: a */
    public final void m34048a(TouchPoint point, float[] outArray, Matrix matrix) {
        outArray[0] = point.getX();
        outArray[1] = point.getY();
        if (matrix != null) {
            matrix.mapPoints(outArray);
        }
    }

    public final boolean hitTestOriginRect(@NotNull Shape shape, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return hitTestRect(shape, shape.getOriginRect(), f, f2, f3);
    }

    public final boolean hitTestRect(@NotNull Shape shape, @NotNull RectF rect, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(rect, "rect");
        return hitTestRect(shape, rect, MatrixKt.invertMatrix(shape.getShapeMatrix()), f, f2, f3);
    }

    public final boolean hitTestShapeLines(@NotNull Shape shape, float x, float y, float radius) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        int size = shape.getPoints().getPoints().size();
        float[] shapeVertices = ShapeUtils.INSTANCE.getShapeVertices(shape);
        for (int i = 0; i < size; i++) {
            int i2 = i * 2;
            int i3 = i2 + 1;
            int i4 = i2 + 2;
            if (i4 >= shapeVertices.length) {
                i4 = 0;
            }
            int i5 = i2 + 3;
            if (i5 >= shapeVertices.length) {
                i5 = 1;
            }
            if (HitTestUtils.INSTANCE.hitTestLine(shapeVertices[i2], shapeVertices[i3], shapeVertices[i4], shapeVertices[i5], x, y, radius)) {
                return true;
            }
        }
        return false;
    }

    public final boolean hitTestShapePoint(@NotNull BaseShape shape, float x, float y, float radius) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return hitTestShapePoint(shape.getPoints().getPoints(), shape.getShapeMatrix(), x, y, radius);
    }

    public final boolean hitTestShapePoints(@NotNull BaseShape shape, @Nullable TouchPointList pointList, float radius) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (pointList == null) {
            return false;
        }
        TouchPoint touchPoint = null;
        for (TouchPoint touchPoint2 : pointList.getPoints()) {
            if (shape.hitTest(touchPoint2.getX(), touchPoint2.getY(), radius)) {
                return true;
            }
            if (touchPoint != null && shape.hitTest(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY())) {
                return true;
            }
            touchPoint = touchPoint2;
        }
        return false;
    }

    @NotNull
    public final List<Shape> hitTestShapesPoints(@NotNull List<? extends Shape> shapeList, @NotNull TouchPointList hitPointList, float limit) {
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Intrinsics.checkNotNullParameter(hitPointList, "hitPointList");
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (Shape shape : shapeList) {
            for (TouchPoint touchPoint : shape.getPoints().getPoints()) {
                int touchPointCoordinatesHashCode = HitTestUtils.INSTANCE.getTouchPointCoordinatesHashCode(touchPoint);
                CollectionKt.ensureList((HashMap<Integer, List<V>>) hashMap, Integer.valueOf(touchPointCoordinatesHashCode)).add(shape);
                hashMap2.put(Integer.valueOf(touchPointCoordinatesHashCode), touchPoint);
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            TouchPoint touchPoint2 = (TouchPoint) hashMap2.get(entry.getKey());
            if (touchPoint2 != null) {
                for (TouchPoint touchPoint3 : hitPointList.getPoints()) {
                    if (((Number) entry.getKey()).intValue() == HitTestUtils.INSTANCE.getTouchPointCoordinatesHashCode(touchPoint3) || MathUtils.INSTANCE.distance(touchPoint2.getX(), touchPoint2.getY(), touchPoint3.getX(), touchPoint3.getY()) <= limit) {
                        hashSet.addAll((Collection) entry.getValue());
                        break;
                    }
                }
            }
        }
        return new ArrayList(hashSet);
    }

    public final boolean hitTestRect(@NotNull Shape shape, @NotNull RectF rect, @NotNull Matrix matrix, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        RectF copy = RectFKt.copy(rect);
        float[] fArr = {f, f2, f3};
        matrix.mapPoints(fArr);
        float f4 = fArr[0];
        float f5 = fArr[1];
        RectKt.expand(copy, fArr[2]);
        if (copy.isEmpty()) {
            return false;
        }
        return copy.contains(f4, f5);
    }

    public final boolean hitTestShapePoint(@NotNull List<TouchPoint> points, @Nullable Matrix shapeMatrix, float x, float y, float radius) {
        Intrinsics.checkNotNullParameter(points, "points");
        float[] fArr = {x, y};
        float[] fArr2 = {0.0f, 0.0f};
        float[] fArr3 = {0.0f, 0.0f};
        int size = points.size();
        int i = 0;
        while (i < size) {
            final TouchPoint touchPoint = points.get(i);
            m34048a(touchPoint, fArr2, shapeMatrix);
            i++;
            m34048a((TouchPoint) CollectionKt.getOrElse(points, i, new Function1<Integer, TouchPoint>() { // from class: com.onyx.android.sdk.note.common.utils.ShapeHitTests$hitTestShapePoint$1
                {
                    super(1);
                }

                @NotNull
                public final TouchPoint invoke(int i2) {
                    return TouchPoint.this;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ TouchPoint invoke(Integer num) {
                    return invoke(num.intValue());
                }
            }), fArr3, shapeMatrix);
            if (HitTestUtils.INSTANCE.hitTest(fArr2[0], fArr2[1], fArr3[0], fArr3[1], fArr[0], fArr[1], radius)) {
                return true;
            }
        }
        return false;
    }

    public final boolean hitTestShapeLines(@NotNull Shape shape, float x1, float y1, float x2, float y2) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (shape.getPoints() == null) {
            return false;
        }
        int size = shape.getPoints().getPoints().size();
        float[] shapeVertices = ShapeUtils.INSTANCE.getShapeVertices(shape);
        for (int i = 0; i < size; i++) {
            int i2 = i * 2;
            int i3 = i2 + 1;
            int i4 = i2 + 2;
            if (i4 >= shapeVertices.length) {
                i4 = 0;
            }
            int i5 = i2 + 3;
            if (i5 >= shapeVertices.length) {
                i5 = 1;
            }
            if (HitTestUtils.INSTANCE.hitTestLine(shapeVertices[i2], shapeVertices[i3], shapeVertices[i4], shapeVertices[i5], x1, y1, x2, y2)) {
                return true;
            }
        }
        return false;
    }

    public final boolean hitTestShapePoint(@NotNull List<TouchPoint> shapePointList, @NotNull List<TouchPoint> hitPointList, @Nullable Matrix shapeMatrix, float radius) {
        int collectionSizeOrDefault;
        Object first;
        Intrinsics.checkNotNullParameter(shapePointList, "shapePointList");
        Intrinsics.checkNotNullParameter(hitPointList, "hitPointList");
        if (CollectionKt.getSize(hitPointList) == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) hitPointList);
            TouchPoint touchPoint = (TouchPoint) first;
            return hitTestShapePoint(shapePointList, shapeMatrix, touchPoint.getX(), touchPoint.getY(), radius);
        }
        List<TouchPoint> list = shapePointList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TouchPoint touchPoint2 : list) {
            if (shapeMatrix != null) {
                touchPoint2 = touchPoint2.copy().applyMatrix(shapeMatrix);
            }
            arrayList.add(touchPoint2);
        }
        Map map = CollectionKt.toMap(arrayList, new Function1<TouchPoint, Integer>() { // from class: com.onyx.android.sdk.note.common.utils.ShapeHitTests$hitTestShapePoint$shapePointMap$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull TouchPoint it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Integer.valueOf(HitTestUtils.INSTANCE.getTouchPointCoordinatesHashCode(it2));
            }
        });
        for (TouchPoint touchPoint3 : hitPointList) {
            TouchPoint touchPoint4 = (TouchPoint) map.get(Integer.valueOf(HitTestUtils.INSTANCE.getTouchPointCoordinatesHashCode(touchPoint3)));
            if (touchPoint4 != null && MathUtils.INSTANCE.distance(touchPoint4.getX(), touchPoint4.getY(), touchPoint3.getX(), touchPoint3.getY()) <= radius) {
                return true;
            }
        }
        return false;
    }
}
