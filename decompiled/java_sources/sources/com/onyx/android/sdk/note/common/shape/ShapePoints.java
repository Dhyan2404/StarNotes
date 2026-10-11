package com.onyx.android.sdk.note.common.shape;

import android.graphics.Matrix;
import android.graphics.Region;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\fH&J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H&J \u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0016H&J\b\u0010\u001a\u001a\u00020\fH\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016J \u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0016H&J(\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0016H&J2\u0010\"\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010#2\u0006\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0016H&J\u0018\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u0016H&J\u0018\u0010&\u001a\u00020\u00142\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H&J\u0018\u0010+\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H&J\u0018\u0010.\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H&J\u0018\u0010/\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H&J\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H&J\b\u00104\u001a\u00020\u0012H&R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\t\u0010\u0005\"\u0004\b\n\u0010\u0007R\u0018\u0010\u000b\u001a\u00020\fX¦\u000e¢\u0006\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapePoints;", "", "currentPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getCurrentPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setCurrentPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "downPoint", "getDownPoint", "setDownPoint", PointConstant.POINT_FILE_END, "Lcom/onyx/android/sdk/base/data/TouchPointList;", "getPoints", "()Lcom/onyx/android/sdk/base/data/TouchPointList;", "setPoints", "(Lcom/onyx/android/sdk/base/data/TouchPointList;)V", "addPoints", "", "containPoint", "", "x", "", "y", "fastHitTest", "radius", "getRenderPoints", "getUsePointCount", "", "hitTest", "x1", "y1", "x2", "y2", "hitTestPoint", "", "hitTestPoints", "pointList", "intersectRegion", "region", "Landroid/graphics/Region;", "matrix", "Landroid/graphics/Matrix;", "onDown", "normalizedPoint", "screenPoint", "onMove", "onUp", "split", "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "updatePoints", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapePoints {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @NotNull
        public static TouchPointList getRenderPoints(@NotNull ShapePoints shapePoints) {
            return shapePoints.getPoints();
        }

        public static int getUsePointCount(@NotNull ShapePoints shapePoints) {
            return shapePoints.getPoints().size();
        }
    }

    void addPoints(@NotNull TouchPointList points);

    boolean containPoint(float x, float y);

    boolean fastHitTest(float x, float y, float radius);

    @NotNull
    TouchPoint getCurrentPoint();

    @NotNull
    TouchPoint getDownPoint();

    @NotNull
    TouchPointList getPoints();

    @NotNull
    TouchPointList getRenderPoints();

    int getUsePointCount();

    boolean hitTest(float x, float y, float radius);

    boolean hitTest(float x1, float y1, float x2, float y2);

    @Nullable
    List<TouchPoint> hitTestPoint(float x1, float y1, float x2, float y2);

    boolean hitTestPoints(@NotNull TouchPointList pointList, float radius);

    boolean intersectRegion(@NotNull Region region, @NotNull Matrix matrix);

    void onDown(@NotNull TouchPoint normalizedPoint, @NotNull TouchPoint screenPoint);

    void onMove(@NotNull TouchPoint normalizedPoint, @NotNull TouchPoint screenPoint);

    void onUp(@NotNull TouchPoint normalizedPoint, @NotNull TouchPoint screenPoint);

    void setCurrentPoint(@NotNull TouchPoint touchPoint);

    void setDownPoint(@NotNull TouchPoint touchPoint);

    void setPoints(@NotNull TouchPointList touchPointList);

    @NotNull
    SplitShapeResult split(@NotNull EraseBean eraseBean);

    void updatePoints();
}
