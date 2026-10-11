package com.onyx.android.sdk.note.common.document.page;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeHitTests;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\b\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J8\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\u0010\f\u001a\u0004\u0018\u00010\u0007J,\u0010\u0011\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/page/NotePageHitTest;", "", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "touchPointList", "", "radius", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "removeShapesByTouchPointList", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "fastHitTestPointShapeList", "changedShapeBean", "fastHitTestPoint", "shape", "removeShapeBean", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NotePageHitTest {

    @NotNull
    public static final NotePageHitTest INSTANCE = new NotePageHitTest();

    /* renamed from: a */
    public final boolean m33781a(NotePage notePage, Shape shape, ChangedShapeBean changedShapeBean, TouchPointList touchPointList, float f) {
        if (!shape.hitTestPoints(touchPointList, f)) {
            return false;
        }
        changedShapeBean.merge(NotePage.removeShape$default(notePage, shape, false, 2, null));
        return true;
    }

    @NotNull
    public final List<Shape> fastHitTestPoint(@NotNull NotePage notePage, @NotNull TouchPointList touchPointList, float f, @NotNull List<? extends Shape> fastHitTestPointShapeList, @Nullable ChangedShapeBean changedShapeBean) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(touchPointList, "touchPointList");
        Intrinsics.checkNotNullParameter(fastHitTestPointShapeList, "fastHitTestPointShapeList");
        List<Shape> hitTestShapesPoints = ShapeHitTests.INSTANCE.hitTestShapesPoints(fastHitTestPointShapeList, touchPointList, f);
        Debug.INSTANCE.m32035d(notePage.getClass(), "total = " + notePage.getShapeCount() + ", input = " + fastHitTestPointShapeList.size() + ", hitList = " + hitTestShapesPoints.size(), new Object[0]);
        Iterator<Shape> it2 = hitTestShapesPoints.iterator();
        while (it2.hasNext()) {
            ChangedShapeBean removeShape$default = NotePage.removeShape$default(notePage, it2.next(), false, 2, null);
            if (changedShapeBean != null) {
                changedShapeBean.merge(removeShape$default);
            }
        }
        return hitTestShapesPoints;
    }

    @NotNull
    public final ChangedShapeBean removeShapesByTouchPointList(@NotNull NotePage notePage, @NotNull TouchPointList touchPointList, float f) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(touchPointList, "touchPointList");
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size = notePage.getShapeList().size();
        RectF boundingRect = touchPointList.getBoundingRect();
        RectKt.expand(boundingRect, f);
        while (true) {
            size--;
            if (-1 >= size) {
                break;
            }
            Shape shape = notePage.getShapeList().get(size);
            if (notePage.getLayerIndex() == shape.getLayerId() && ShapeOptions.INSTANCE.isVisible(shape) && ShapeTypes.INSTANCE.canErase(shape) && !shape.getBoundingRect().isEmpty()) {
                RectF rectF = new RectF(shape.getBoundingRect());
                RectKt.expand(rectF, shape.getStrokeWidth() / 2.0f);
                if (RectUtils.INSTANCE.intersects(boundingRect, rectF)) {
                    arrayList2.add(shape);
                }
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            Shape shape2 = (Shape) it2.next();
            Intrinsics.checkNotNull(shape2);
            if (m33781a(notePage, shape2, changedShapeBean, touchPointList, f)) {
                arrayList.add(shape2);
            }
        }
        return changedShapeBean.setRemoveShapeList(arrayList);
    }
}
