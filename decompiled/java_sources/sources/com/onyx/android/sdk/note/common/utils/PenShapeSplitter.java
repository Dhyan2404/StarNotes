package com.onyx.android.sdk.note.common.utils;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.data.split.SplitPathResult;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J \u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH\u0002¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/PenShapeSplitter;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "eraseBean", "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", "split", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "hitTestPointSet", "Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PenShapeSplitter {

    @NotNull
    public static final PenShapeSplitter INSTANCE = new PenShapeSplitter();

    /* renamed from: a */
    public final SplitPathResult m34032a(Shape shape, Set<TouchPoint> hitTestPointSet) {
        SplitPathResult splitPathResult = new SplitPathResult();
        ArrayList arrayList = new ArrayList();
        splitPathResult.setSplitSegmentList(arrayList);
        if (hitTestPointSet != null && !shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().isEmpty()) {
            for (TouchPoint touchPoint : shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints()) {
                TouchPointList touchPointList = (TouchPointList) CollectionKt.getLast(arrayList);
                if (!hitTestPointSet.contains(touchPoint)) {
                    if (touchPointList == null) {
                        touchPointList = new TouchPointList();
                        arrayList.add(touchPointList);
                    }
                    touchPointList.add(new TouchPoint(touchPoint));
                } else if (touchPointList != null && !touchPointList.isEmpty()) {
                    arrayList.add(new TouchPointList());
                }
            }
        }
        return splitPathResult;
    }

    @NotNull
    public final SplitShapeResult split(@NotNull Shape shape, @NotNull EraseBean eraseBean) throws CloneNotSupportedException {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        SplitShapeResult splitShapeResult = new SplitShapeResult();
        List<TouchPoint> points = shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints();
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        TouchPointList touchPointList = new TouchPointList();
        arrayList.add(touchPointList);
        eraseBean.setTargetShapeMatrix(shape.getShapeMatrix());
        TouchPoint touchPoint = null;
        for (TouchPoint touchPoint2 : points) {
            if (eraseBean.isPointHitTest(touchPoint, touchPoint2)) {
                hashSet.add(touchPoint2);
                touchPointList.add(touchPoint2);
            } else if (touchPointList.size() > 0) {
                touchPointList = new TouchPointList();
                arrayList.add(touchPointList);
            }
            touchPoint = touchPoint2;
        }
        if (hashSet.isEmpty()) {
            return splitShapeResult;
        }
        if (shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size() - hashSet.size() < 2) {
            splitShapeResult.setShapeErased(true);
            return splitShapeResult;
        }
        SplitPathResult m34032a = m34032a(shape, hashSet);
        ShapeCopyUtils shapeCopyUtils = ShapeCopyUtils.INSTANCE;
        splitShapeResult.setSplitShapes(shapeCopyUtils.cloneNewShapes(m34032a.getSplitSegmentList(), shape, shape.getType()));
        if (eraseBean.getCutShape()) {
            splitShapeResult.setRemoveShapes(shapeCopyUtils.cloneNewShapes(arrayList, shape, shape.getType()));
        }
        return splitShapeResult;
    }
}
