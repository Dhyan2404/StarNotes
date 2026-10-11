package com.onyx.android.sdk.note.common.utils;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.RegionIterator;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.data.split.SplitPathResult;
import com.onyx.android.sdk.note.common.data.split.SplitRectResult;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.fill.FillShape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fH\u0002J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\rH\u0002¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;", "", "Lcom/onyx/android/sdk/note/common/shape/fill/FillShape;", "shape", "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "eraseBean", "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", "split", "Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;", "c", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "touchPointList", "", "Landroid/graphics/RectF;", "rectFList", "", "a", "Landroid/graphics/Region;", "b", "eraseRegion", "inputRectF", "Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;", "d", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FillShapeSplitter {

    @NotNull
    public static final FillShapeSplitter INSTANCE = new FillShapeSplitter();

    /* renamed from: a */
    public final void m34003a(TouchPointList touchPointList, List<? extends RectF> rectFList) {
        List<? extends RectF> list = rectFList;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (RectF rectF : rectFList) {
            PointUtils pointUtils = PointUtils.INSTANCE;
            touchPointList.add(pointUtils.createTouchPoint(rectF.left, rectF.top));
            touchPointList.add(pointUtils.createTouchPoint(rectF.right, rectF.bottom));
        }
    }

    /* renamed from: b */
    public final Region m34004b(FillShape shape, EraseBean eraseBean) {
        Path path;
        List<TouchPoint> erasePoints = eraseBean.getErasePoints();
        if (eraseBean.getEraseShape() != null) {
            ShapeRenderUtils shapeRenderUtils = ShapeRenderUtils.INSTANCE;
            Shape eraseShape = eraseBean.getEraseShape();
            Matrix shapeMatrix = eraseShape != null ? eraseShape.getShapeMatrix() : null;
            Shape eraseShape2 = eraseBean.getEraseShape();
            path = shapeRenderUtils.renderShape(shapeMatrix, eraseShape2 != null ? eraseShape2.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String() : null);
        } else if (CollectionKt.isNonBlank(erasePoints)) {
            Path path2 = new Path();
            for (TouchPoint touchPoint : erasePoints) {
                path2.addOval(new RectF(touchPoint.getX() - eraseBean.getEraseRadius(), touchPoint.getY() - eraseBean.getEraseRadius(), touchPoint.getX() + eraseBean.getEraseRadius(), touchPoint.getY() + eraseBean.getEraseRadius()), Path.Direction.CW);
            }
            path = path2;
        } else {
            path = null;
        }
        if (path == null) {
            return null;
        }
        path.transform(MatrixKt.invertMatrix(shape.getShapeMatrix()));
        return ShapeRegionUtils.createRegionByPath$default(ShapeRegionUtils.INSTANCE, path, null, false, 6, null);
    }

    /* renamed from: c */
    public final SplitPathResult m34005c(FillShape shape, EraseBean eraseBean) {
        List<TouchPointList> mutableListOf;
        List<TouchPointList> mutableListOf2;
        List<? extends RectF> listOf;
        SplitPathResult splitPathResult = new SplitPathResult();
        TouchPointList touchPointList = new TouchPointList();
        TouchPointList touchPointList2 = new TouchPointList();
        Region m34004b = m34004b(shape, eraseBean);
        if (m34004b == null) {
            return splitPathResult;
        }
        boolean z = false;
        for (RectF rectF : shape.ensureUpdateFillRectList()) {
            SplitRectResult m34006d = m34006d(m34004b, rectF);
            if (m34006d.isErased()) {
                m34003a(touchPointList, m34006d.getSplitRectList());
                z = true;
            } else {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(rectF);
                m34003a(touchPointList, listOf);
            }
            if (eraseBean.getCutShape()) {
                m34003a(touchPointList2, m34006d.getRemoveRectList());
            }
        }
        if (z) {
            if (touchPointList.isEmpty()) {
                splitPathResult.setPathErased(true);
            } else {
                mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(touchPointList2);
                splitPathResult.setRemoveSegmentList(mutableListOf);
                mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(touchPointList);
                splitPathResult.setSplitSegmentList(mutableListOf2);
            }
        }
        return splitPathResult;
    }

    /* renamed from: d */
    public final SplitRectResult m34006d(Region eraseRegion, RectF inputRectF) {
        SplitRectResult splitRectResult = new SplitRectResult();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        splitRectResult.setSplitRectList(arrayList);
        splitRectResult.setRemoveRectList(arrayList2);
        RectUtils rectUtils = RectUtils.INSTANCE;
        Rect rect = rectUtils.toRect(rectUtils.roundExpandRectF(inputRectF));
        if (rect == null) {
            return splitRectResult;
        }
        Region region = new Region();
        region.set(rect);
        if (eraseRegion.contains(rect.left, rect.top) && eraseRegion.contains(rect.right, rect.top) && eraseRegion.contains(rect.left, rect.bottom) && eraseRegion.contains(rect.right, rect.bottom)) {
            splitRectResult.setPathErased(true);
            arrayList2.add(new RectF(inputRectF));
            return splitRectResult;
        }
        if (region.op(eraseRegion, Region.Op.INTERSECT)) {
            Region region2 = new Region();
            region2.set(rect);
            region2.op(eraseRegion, Region.Op.DIFFERENCE);
            RegionIterator regionIterator = new RegionIterator(region2);
            if (region2.isEmpty()) {
                splitRectResult.setPathErased(true);
                arrayList2.add(new RectF(inputRectF));
                return splitRectResult;
            }
            Rect rect2 = new Rect();
            while (regionIterator.next(rect2)) {
                CollectionKt.add(arrayList, RectUtils.INSTANCE.toRectF(rect2));
            }
            RegionIterator regionIterator2 = new RegionIterator(region);
            while (regionIterator2.next(rect2)) {
                CollectionKt.add(arrayList2, RectUtils.INSTANCE.toRectF(rect2));
            }
        }
        return splitRectResult;
    }

    @NotNull
    public final SplitShapeResult split(@NotNull FillShape shape, @NotNull EraseBean eraseBean) throws CloneNotSupportedException {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        SplitShapeResult splitShapeResult = new SplitShapeResult();
        SplitPathResult m34005c = m34005c(shape, eraseBean);
        ShapeCopyUtils shapeCopyUtils = ShapeCopyUtils.INSTANCE;
        List<Shape> cloneNewShapes = shapeCopyUtils.cloneNewShapes(m34005c.getSplitSegmentList(), shape, 37);
        if (eraseBean.getCutShape()) {
            splitShapeResult.setRemoveShapes(shapeCopyUtils.cloneNewShapes(m34005c.getRemoveSegmentList(), shape, 37));
        }
        splitShapeResult.setSplitShapes(cloneNewShapes);
        splitShapeResult.setShapeErased(m34005c.getIsPathErased());
        return splitShapeResult;
    }
}
