package com.onyx.android.sdk.note.common.utils;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.graphics.RegionIterator;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.data.split.SplitPathResult;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006J\u001a\u0010\n\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J \u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "eraseBean", "", "shapeType", "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", "split", "a", "Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;", "b", "Landroid/graphics/Path;", "path", "c", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GraphicalShapeSplitter {

    @NotNull
    public static final GraphicalShapeSplitter INSTANCE = new GraphicalShapeSplitter();

    public static /* synthetic */ SplitShapeResult split$default(GraphicalShapeSplitter graphicalShapeSplitter, Shape shape, EraseBean eraseBean, int i, int i2, Object obj) throws CloneNotSupportedException {
        if ((i2 & 4) != 0) {
            i = 36;
        }
        return graphicalShapeSplitter.split(shape, eraseBean, i);
    }

    /* renamed from: a */
    public final SplitShapeResult m34007a(Shape shape, EraseBean eraseBean) throws CloneNotSupportedException {
        Shape cloneNewShape;
        Path path = shape.getPath();
        if (path.isEmpty()) {
            return null;
        }
        RegionIterator regionIterator = new RegionIterator(ShapeRegionUtils.createRegionByPath$default(ShapeRegionUtils.INSTANCE, path, null, false, 6, null));
        Rect rect = new Rect();
        TouchPointList touchPointList = new TouchPointList();
        while (regionIterator.next(rect)) {
            touchPointList.add(new TouchPoint(rect.left, rect.top));
            touchPointList.add(new TouchPoint(rect.right, rect.bottom));
        }
        if (touchPointList.size() < 2 || (cloneNewShape = ShapeCopyUtils.INSTANCE.cloneNewShape(touchPointList, shape, 37)) == null) {
            return null;
        }
        cloneNewShape.setShapeMatrix(new Matrix());
        cloneNewShape.updateShapeRect();
        return cloneNewShape.split(eraseBean);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0069 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x006a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.note.common.data.split.SplitPathResult m34008b(com.onyx.android.sdk.note.common.shape.Shape r6, com.onyx.android.sdk.note.common.data.erase.EraseBean r7) {
        /*
            r5 = this;
            com.onyx.android.sdk.note.common.data.split.SplitPathResult r0 = new com.onyx.android.sdk.note.common.data.split.SplitPathResult
            r0.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            com.onyx.android.sdk.note.common.data.split.SplitPathResult r0 = r0.setSplitSegmentList(r1)
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            com.onyx.android.sdk.note.common.data.split.SplitPathResult r0 = r0.setRemoveSegmentList(r1)
            android.graphics.Path r1 = r6.getPath()
            boolean r2 = r1.isEmpty()
            if (r2 == 0) goto L22
            return r0
        L22:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            com.onyx.android.sdk.note.common.data.split.SplitPathResult r5 = r5.m34009c(r6, r7, r1)
            java.util.List r6 = r5.getSplitSegmentList()
            java.util.Collection r6 = (java.util.Collection) r6
            boolean r6 = com.onyx.android.sdk.base.extension.CollectionKt.isNonBlank(r6)
            r7 = 1
            r3 = 0
            if (r6 == 0) goto L57
            java.util.List r6 = r0.getSplitSegmentList()
            java.util.List r4 = r5.getSplitSegmentList()
            java.util.Collection r4 = (java.util.Collection) r4
            r6.addAll(r4)
            java.util.List r6 = r0.getRemoveSegmentList()
            java.util.List r5 = r5.getRemoveSegmentList()
            java.util.Collection r5 = (java.util.Collection) r5
            r6.addAll(r5)
            r2.add(r1)
            goto L62
        L57:
            boolean r5 = r5.getIsPathErased()
            if (r5 == 0) goto L62
            r2.add(r1)
            r5 = r7
            goto L63
        L62:
            r5 = r3
        L63:
            boolean r6 = r2.isEmpty()
            if (r6 == 0) goto L6a
            return r0
        L6a:
            if (r5 == 0) goto L77
            java.util.List r5 = r0.getSplitSegmentList()
            boolean r5 = r5.isEmpty()
            if (r5 == 0) goto L77
            goto L78
        L77:
            r7 = r3
        L78:
            r0.setPathErased(r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.utils.GraphicalShapeSplitter.m34008b(com.onyx.android.sdk.note.common.shape.Shape, com.onyx.android.sdk.note.common.data.erase.EraseBean):com.onyx.android.sdk.note.common.data.split.SplitPathResult");
    }

    /* renamed from: c */
    public final SplitPathResult m34009c(Shape shape, EraseBean eraseBean, Path path) {
        Object first;
        PathMeasure pathMeasure;
        SplitPathResult splitPathResult = new SplitPathResult();
        char c = 0;
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int i = 2;
        float[] fArr = new float[2];
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        splitPathResult.setRemoveSegmentList(arrayList2);
        splitPathResult.setSplitSegmentList(arrayList);
        TouchPointList touchPointList = new TouchPointList();
        TouchPointList touchPointList2 = new TouchPointList();
        float length = pathMeasure2.getLength();
        float[] fArr2 = null;
        boolean z = false;
        TouchPoint touchPoint = null;
        float f = 0.0f;
        while (f < length) {
            if (pathMeasure2.getPosTan(f, fArr, fArr2)) {
                TouchPoint createTouchPoint = PointUtils.INSTANCE.createTouchPoint(fArr[c], fArr[1]);
                if (eraseBean.isPointHitTest(touchPoint, createTouchPoint)) {
                    touchPointList2.add(createTouchPoint);
                    if (!arrayList2.contains(touchPointList2)) {
                        arrayList2.add(touchPointList2);
                    }
                    if (touchPointList.size() > 0) {
                        touchPointList = new TouchPointList();
                    }
                } else {
                    if (touchPointList2.size() > 0) {
                        touchPointList2 = new TouchPointList();
                    }
                    if (f >= length - 2) {
                        z = true;
                    }
                    touchPointList.add(createTouchPoint);
                    if (!arrayList.contains(touchPointList)) {
                        arrayList.add(touchPointList);
                    }
                }
                pathMeasure = pathMeasure2;
                touchPoint = createTouchPoint;
            } else {
                pathMeasure = pathMeasure2;
                Debug.INSTANCE.m32035d(GraphicalShapeSplitter.class, "null point", new Object[0]);
            }
            f += 2;
            i = 2;
            pathMeasure2 = pathMeasure;
            c = 0;
            fArr2 = null;
        }
        int i2 = i;
        if (shape.isClosedShape() && arrayList.size() >= i2 && z) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
            ((TouchPointList) first).addAll(0, arrayList.remove(arrayList.size() - 1).getPoints());
        }
        if (length <= 0.0f) {
            TouchPointList m72175clone = shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().m72175clone();
            m72175clone.applyMatrix(shape.getShapeMatrix());
            if (eraseBean.isAllPointHitTest(m72175clone.getPoints())) {
                splitPathResult.setPathErased(true);
            }
        }
        if (!arrayList2.isEmpty() && arrayList.isEmpty()) {
            splitPathResult.setPathErased(true);
        }
        return splitPathResult;
    }

    @NotNull
    public final SplitShapeResult split(@NotNull Shape shape, @NotNull EraseBean eraseBean, int shapeType) throws CloneNotSupportedException {
        List<? extends Shape> mutableList;
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        SplitShapeResult splitShapeResult = new SplitShapeResult();
        SplitPathResult m34008b = m34008b(shape, eraseBean);
        ShapeCopyUtils shapeCopyUtils = ShapeCopyUtils.INSTANCE;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) shapeCopyUtils.cloneNewShapesAndRestMatrix(m34008b.getSplitSegmentList(), shape, shapeType));
        ArrayList arrayList = new ArrayList();
        if (eraseBean.getCutShape()) {
            arrayList.addAll(shapeCopyUtils.cloneNewShapesAndRestMatrix(m34008b.getRemoveSegmentList(), shape, shapeType));
        }
        if (shape.isClosedShape() && !ShapeRenders.INSTANCE.isIgnoreFill(shape) && !m34008b.getIsPathErased()) {
            SplitShapeResult m34007a = m34007a(shape, eraseBean);
            if (m34007a == null || !m34007a.isErased()) {
                return splitShapeResult;
            }
            CollectionKt.addAll(mutableList, m34007a.getSplitShapes());
            CollectionKt.addAll(arrayList, m34007a.getRemoveShapes());
        }
        splitShapeResult.setSplitShapes(mutableList);
        splitShapeResult.setShapeErased(m34008b.getIsPathErased());
        splitShapeResult.setRemoveShapes(arrayList);
        Iterator<Path> it2 = m34008b.getNotHitTestPaths().iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(mutableList, ShapeSplitUtils.INSTANCE.savePathToShape(shape, it2.next(), shapeType));
        }
        return splitShapeResult;
    }
}
