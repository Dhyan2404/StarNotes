package com.onyx.android.sdk.note.common.utils;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.extension.ShapeKt;
import com.onyx.android.sdk.scribble.utils.Algorithm;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b3\u00104J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J>\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nJ>\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006J6\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006J>\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006J&\u0010 \u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006JF\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006J&\u0010\u001d\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020%2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006J.\u0010\u001d\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020%2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006J.\u0010*\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00020\u0004R\u0014\u0010+\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u0010-\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00100\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b/\u0010.R\u0014\u00102\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b1\u0010.¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "", "getTouchPointCoordinatesHashCode", "", "circleX", "circleY", "circleRadius", "", "ellipseX", "ellipseY", "ellipseA", "ellipseB", "", "circleEllipseHitTest", "x1", "y1", "x2", "y2", "cx", "cy", "radius", "hitTestLine", "getSmallestDistanceOfPointToLine", "x", "y", "limit", "hitTest", "Landroid/graphics/RectF;", "rect", "circleRectHitTest", "x3", "y3", "x4", "y4", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "touchPointList", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "drawableRes", "hitTestShapeDrawable", "ELLIPSE_HIT_TEST_DIFF_VALUE", "F", "ELLIPSE_HIT_TEST_POINTS", "I", "a", "MAX_XY", "b", "HIT_TEST_BLOCK_SIZE", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HitTestUtils {
    public static final float ELLIPSE_HIT_TEST_DIFF_VALUE = 0.5f;
    public static final int ELLIPSE_HIT_TEST_POINTS = 360;

    @NotNull
    public static final HitTestUtils INSTANCE = new HitTestUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final int MAX_XY = 10000;

    /* renamed from: b, reason: from kotlin metadata */
    public static final int HIT_TEST_BLOCK_SIZE = 3;

    public final boolean circleEllipseHitTest(float circleX, float circleY, float circleRadius, double ellipseX, double ellipseY, double ellipseA, double ellipseB) {
        double pow = Math.pow(ellipseA, 2.0d);
        double pow2 = Math.pow(ellipseB, 2.0d);
        int i = 0;
        while (i < 360) {
            double d = circleRadius;
            double d2 = (i * 3.141592653589793d) / 180;
            int i2 = i;
            double pow3 = (Math.pow(Math.abs((circleX + (Math.cos(d2) * d)) - ellipseX), 2.0d) / pow) + (Math.pow(Math.abs((circleY + (d * Math.sin(d2))) - ellipseY), 2.0d) / pow2);
            if (pow3 >= 1.0d && pow3 <= 1.5d) {
                return true;
            }
            i = i2 + 4;
        }
        return false;
    }

    public final boolean circleRectHitTest(@NotNull RectF rect, float cx, float cy, float radius) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        float f = rect.left;
        if (cx >= f) {
            f = cx > f + rect.width() ? rect.left + rect.width() : cx;
        }
        float f2 = rect.top;
        if (cy >= f2) {
            f2 = cy > f2 + rect.height() ? rect.top + rect.height() : cy;
        }
        float f3 = cx - f;
        float f4 = cy - f2;
        return Math.sqrt((double) ((f3 * f3) + (f4 * f4))) <= ((double) radius);
    }

    public final double getSmallestDistanceOfPointToLine(float x1, float y1, float x2, float y2, float cx, float cy) {
        MathUtils mathUtils = MathUtils.INSTANCE;
        double distance = mathUtils.distance(x1, y1, x2, y2);
        double distance2 = mathUtils.distance(x1, y1, cx, cy);
        double distance3 = mathUtils.distance(x2, y2, cx, cy);
        double d = distance3 * distance3;
        double d2 = distance * distance;
        double d3 = distance2 * distance2;
        if (d >= d2 + d3) {
            return distance2;
        }
        if (d3 >= d2 + d) {
            return distance3;
        }
        double d4 = 2;
        double d5 = ((distance + distance2) + distance3) / d4;
        return (d4 * Math.sqrt((((d5 - distance) * d5) * (d5 - distance2)) * (d5 - distance3))) / distance;
    }

    public final int getTouchPointCoordinatesHashCode(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        return TouchPoint.INSTANCE.getTouchPointCoordinatesHashCode(touchPoint, 10000, 3);
    }

    public final boolean hitTest(float x1, float y1, float x2, float y2, float x, float y, float limit) {
        return Algorithm.INSTANCE.distance(x1, y1, x2, y2, x, y) <= limit;
    }

    public final boolean hitTestLine(float x1, float y1, float x2, float y2, float cx, float cy, float radius) {
        return getSmallestDistanceOfPointToLine(x1, y1, x2, y2, cx, cy) <= ((double) radius);
    }

    public final boolean hitTestShapeDrawable(float x, float y, float radius, @NotNull Shape shape, int drawableRes) {
        RectF originRect;
        Intrinsics.checkNotNullParameter(shape, "shape");
        float[] fArr = {x, y};
        MatrixKt.invertMatrix(shape.getShapeMatrix()).mapPoints(fArr);
        if (shape.getType() != 44) {
            originRect = shape.getOriginRect();
        } else {
            if (shape.getPoints().size() < 2) {
                return false;
            }
            originRect = new RectF(shape.getPoints().get(0).getX(), shape.getPoints().get(0).getY(), shape.getPoints().get(1).getX(), shape.getPoints().get(1).getY());
        }
        return circleRectHitTest(ShapeKt.getDrawableRect$default(shape, originRect, drawableRes, null, 4, null), fArr[0], fArr[1], radius);
    }

    public final boolean hitTest(@NotNull TouchPointList touchPointList, float x, float y, float radius) {
        Intrinsics.checkNotNullParameter(touchPointList, "touchPointList");
        float[] fArr = {x, y};
        List<TouchPoint> points = touchPointList.getPoints();
        int size = points.size() - 1;
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            if (hitTest(points.get(i).getX(), points.get(i).getY(), points.get(i2).getX(), points.get(i2).getY(), fArr[0], fArr[1], radius)) {
                return true;
            }
            i = i2;
        }
        return false;
    }

    public final boolean hitTestLine(float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4) {
        float f = y2 - y1;
        float f2 = x1 - x2;
        float f3 = (x2 * y1) - (x1 * y2);
        float f4 = (f * x3) + (f2 * y3) + f3;
        float f5 = (f * x4) + (f2 * y4) + f3;
        if (!(f4 == 0.0f)) {
            if (!(f5 == 0.0f)) {
                if (Math.signum(f4) == Math.signum(f5)) {
                    return false;
                }
            }
        }
        float f6 = y4 - y3;
        float f7 = x3 - x4;
        float f8 = (x4 * y3) - (x3 * y4);
        float f9 = (x1 * f6) + (y1 * f7) + f8;
        float f10 = (x2 * f6) + (y2 * f7) + f8;
        if (!(f9 == 0.0f)) {
            if (!(f10 == 0.0f)) {
                if (Math.signum(f9) == Math.signum(f10)) {
                    return false;
                }
            }
        }
        return !((f * f7) - (f6 * f2) == 0.0f);
    }

    public final boolean hitTest(@NotNull TouchPointList touchPointList, float x1, float y1, float x2, float y2) {
        Intrinsics.checkNotNullParameter(touchPointList, "touchPointList");
        float[] fArr = {x1, y1, x2, y2};
        List<TouchPoint> points = touchPointList.getPoints();
        int size = points.size() - 1;
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            if (hitTestLine(points.get(i).getX(), points.get(i).getY(), points.get(i2).getX(), points.get(i2).getY(), fArr[0], fArr[1], fArr[2], fArr[3])) {
                return true;
            }
            i = i2;
        }
        return false;
    }
}
