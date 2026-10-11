package com.onyx.android.sdk.note.common.shape.pen;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.render.NeoPenRender;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.shape.BaseShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTests;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PenShapeSplitter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0016J.\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0016J \u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0006J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u000eH\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u001eH\u0016¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "Lcom/onyx/android/sdk/note/common/shape/BaseShape;", "()V", "getUsePointCount", "", "hitTest", "", "x1", "", "y1", "x2", "y2", "hitTestPoint", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "lowLatencyFlush", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "penRender", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "resetRender", "onMove", "", "normalizedPoint", "screenPoint", "split", "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "testData", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class PenShape extends BaseShape {
    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public int getUsePointCount() {
        return (int) (getPoints().size() * 2.3f);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x1, float y1, float x2, float y2) {
        float[] fArr = {x1, y1, x2, y2};
        MatrixKt.invertMatrix(getShapeMatrix()).mapPoints(fArr);
        List<TouchPoint> points = getPoints().getPoints();
        int size = points.size() - 1;
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            if (HitTestUtils.INSTANCE.hitTestLine(points.get(i).getX(), points.get(i).getY(), points.get(i2).getX(), points.get(i2).getY(), fArr[0], fArr[1], fArr[2], fArr[3])) {
                return true;
            }
            i = i2;
        }
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public List<TouchPoint> hitTestPoint(float x1, float y1, float x2, float y2) {
        ArrayList arrayList = new ArrayList();
        float[] fArr = {x1, y1, x2, y2};
        MatrixKt.invertMatrix(getShapeMatrix()).mapPoints(fArr);
        List<TouchPoint> points = getPoints().getPoints();
        int size = points.size() - 1;
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            if (HitTestUtils.INSTANCE.hitTestLine(points.get(i).getX(), points.get(i).getY(), points.get(i2).getX(), points.get(i2).getY(), fArr[0], fArr[1], fArr[2], fArr[3])) {
                arrayList.add(new TouchPoint(points.get(i)));
                arrayList.add(new TouchPoint(points.get(i2)));
            }
            i = i2;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((TouchPoint) it2.next()).applyMatrix(getShapeMatrix());
        }
        return arrayList;
    }

    public final boolean lowLatencyFlush(@NotNull RenderContext renderContext, @Nullable NeoPenRender penRender, boolean resetRender) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (penRender == null) {
            return false;
        }
        penRender.resetPredict();
        lowLatencyRender(renderContext);
        if (!resetRender) {
            return true;
        }
        penRender.reset();
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public void onMove(@NotNull TouchPoint normalizedPoint, @NotNull TouchPoint screenPoint) {
        Intrinsics.checkNotNullParameter(normalizedPoint, "normalizedPoint");
        Intrinsics.checkNotNullParameter(screenPoint, "screenPoint");
        getPoints().add(normalizedPoint);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) throws CloneNotSupportedException {
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        return PenShapeSplitter.INSTANCE.split(this, eraseBean);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeTest
    @NotNull
    public Shape testData() {
        ShapeTests.INSTANCE.addTestPoints(this, 100);
        return super.testData();
    }
}
