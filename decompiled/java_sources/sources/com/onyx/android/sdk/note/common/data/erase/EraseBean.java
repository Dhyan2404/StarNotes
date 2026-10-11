package com.onyx.android.sdk.note.common.data.erase;

import android.graphics.Matrix;
import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PointUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b)\u0010*J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0016\u0010\t\u001a\u00020\u00002\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000f\u001a\u00020\fJ\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0010J\u0006\u0010\u0015\u001a\u00020\u0014J\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016J\u0014\u0010\u001a\u001a\u00020\u00102\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00070\nJ\u0018\u0010\u001d\u001a\u00020\u00102\b\u0010\u001b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001c\u001a\u00020\u0007J\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u0002R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "eraseShape", "setEraseShape", "getEraseShape", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "erasePoints", "setErasePoints", "", "getErasePoints", "", "eraseRadius", "setEraseRadius", "getEraseRadius", "", "cutShape", "setCutShape", "isCutShape", "Landroid/graphics/Path;", "getErasePath", "Landroid/graphics/Matrix;", "targetShapeMatrix", "setTargetShapeMatrix", PointConstant.POINT_FILE_END, "isAllPointHitTest", "lastPoint", "currentPoint", "isPointHitTest", "point", "a", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "b", "Ljava/util/List;", "c", "F", "d", Constants.HASIDCALL_INDEX_SIG, "e", "Landroid/graphics/Matrix;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEraseBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraseBean.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseBean\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,162:1\n41#2,5:163\n1549#3:168\n1620#3,3:169\n1855#3,2:174\n37#4,2:172\n*S KotlinDebug\n*F\n+ 1 EraseBean.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseBean\n*L\n70#1:163,5\n77#1:168\n77#1:169,3\n97#1:174,2\n78#1:172,2\n*E\n"})
/* loaded from: classes8.dex */
public final class EraseBean {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public Shape eraseShape;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public List<TouchPoint> erasePoints;

    /* renamed from: c, reason: from kotlin metadata */
    public float eraseRadius;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean cutShape;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Matrix targetShapeMatrix;

    public EraseBean() {
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.eraseRadius = FLOAT_ONE.floatValue();
    }

    /* renamed from: a */
    public final TouchPoint m33634a(TouchPoint point) {
        TouchPoint copy;
        if (point == null || (copy = point.copy()) == null) {
            return null;
        }
        if (MatrixKt.isNullOrEmpty(this.targetShapeMatrix)) {
            return copy;
        }
        copy.applyMatrix(this.targetShapeMatrix);
        return copy;
    }

    @NotNull
    public final Path getErasePath() {
        int collectionSizeOrDefault;
        List<TouchPoint> emptyList;
        TouchPointList touchPointList;
        Shape shape = this.eraseShape;
        if (shape != null) {
            if (shape == null || (touchPointList = shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String()) == null || (emptyList = touchPointList.getPoints()) == null) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            return PathKt.getFillStrokePath(PathKt.asPath(emptyList, true), Float.valueOf(0.0f), true);
        }
        List<TouchPoint> list = this.erasePoints;
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        List<TouchPoint> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(PathKt.createHitTestPath((TouchPoint) it2.next(), Float.valueOf(getEraseRadius())));
        }
        Path[] pathArr = (Path[]) arrayList.toArray(new Path[0]);
        return PathKt.concat((Path[]) Arrays.copyOf(pathArr, pathArr.length));
    }

    @Nullable
    public final List<TouchPoint> getErasePoints() {
        return this.erasePoints;
    }

    public final float getEraseRadius() {
        return this.eraseRadius;
    }

    @Nullable
    public final Shape getEraseShape() {
        return this.eraseShape;
    }

    public final boolean isAllPointHitTest(@NotNull List<TouchPoint> points) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(points, "points");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) points);
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return false;
        }
        for (TouchPoint touchPoint2 : points) {
            if (!isPointHitTest(touchPoint, touchPoint2)) {
                return false;
            }
            touchPoint = touchPoint2;
        }
        return true;
    }

    /* renamed from: isCutShape, reason: from getter */
    public final boolean getCutShape() {
        return this.cutShape;
    }

    public final boolean isPointHitTest(@Nullable TouchPoint lastPoint, @NotNull TouchPoint currentPoint) {
        Intrinsics.checkNotNullParameter(currentPoint, "currentPoint");
        TouchPoint m33634a = m33634a(currentPoint);
        if (m33634a == null) {
            return false;
        }
        TouchPoint m33634a2 = m33634a(lastPoint);
        if (!CollectionKt.isNonBlank(this.erasePoints)) {
            Shape shape = this.eraseShape;
            if (shape == null) {
                return false;
            }
            Intrinsics.checkNotNull(shape);
            float x = m33634a.getX();
            float y = m33634a.getY();
            Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
            Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
            return shape.hitTest(x, y, FLOAT_ONE.floatValue());
        }
        List<TouchPoint> list = this.erasePoints;
        Intrinsics.checkNotNull(list);
        Iterator<TouchPoint> it2 = list.iterator();
        TouchPoint touchPoint = null;
        while (it2.hasNext()) {
            TouchPoint m33634a3 = m33634a(it2.next());
            if (m33634a3 != null) {
                if (m33634a2 != null) {
                    if ((touchPoint != null && HitTestUtils.INSTANCE.hitTestLine(m33634a2.getX(), m33634a2.getY(), m33634a.getX(), m33634a.getY(), touchPoint.getX(), touchPoint.getY(), m33634a3.getX(), m33634a3.getY())) || HitTestUtils.INSTANCE.hitTest(m33634a2.getX(), m33634a2.getY(), m33634a.getX(), m33634a.getY(), m33634a3.getX(), m33634a3.getY(), this.eraseRadius)) {
                        return true;
                    }
                } else if (PointUtils.INSTANCE.isPointInsideCircle(m33634a.getX(), m33634a.getY(), m33634a3.getX(), m33634a3.getY(), this.eraseRadius)) {
                    return true;
                }
                touchPoint = m33634a3;
            }
        }
        return false;
    }

    @NotNull
    public final EraseBean setCutShape(boolean cutShape) {
        this.cutShape = cutShape;
        return this;
    }

    @NotNull
    public final EraseBean setErasePoints(@Nullable List<TouchPoint> erasePoints) {
        this.erasePoints = erasePoints;
        return this;
    }

    @NotNull
    public final EraseBean setEraseRadius(float eraseRadius) {
        this.eraseRadius = eraseRadius;
        return this;
    }

    @NotNull
    public final EraseBean setEraseShape(@Nullable Shape eraseShape) {
        this.eraseShape = eraseShape;
        return this;
    }

    @NotNull
    public final EraseBean setTargetShapeMatrix(@Nullable Matrix targetShapeMatrix) {
        this.targetShapeMatrix = targetShapeMatrix;
        if (CollectionKt.isNonBlank(this.erasePoints) && !MatrixKt.isNullOrEmpty(targetShapeMatrix)) {
            List<TouchPoint> list = this.erasePoints;
            Intrinsics.checkNotNull(list);
            int size = list.size();
            for (int i = 0; i < size; i++) {
                List<TouchPoint> list2 = this.erasePoints;
                Intrinsics.checkNotNull(list2);
                TouchPoint touchPoint = new TouchPoint(list2.get(i));
                touchPoint.invertMatrix(targetShapeMatrix);
                List<TouchPoint> list3 = this.erasePoints;
                Intrinsics.checkNotNull(list3);
                list3.set(i, touchPoint);
            }
        }
        return this;
    }
}
