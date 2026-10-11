package com.onyx.android.sdk.note.common.utils;

import android.graphics.PointF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J)\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\rJ.\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006J\u0018\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0014\u001a\u00020\u0006J \u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/PointUtils;", "", "()V", "createTouchPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "x", "", "y", "isPointInPolygon", "", "pts", "", "Landroid/graphics/PointF;", "([Landroid/graphics/PointF;FF)Z", "isPointInsideCircle", "pointX", "pointY", "centerX", "centerY", "radius", "scale", "", "point", "scaleX", "scaleY", "toRectTouchPointList", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "srcPointList", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nPointUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointUtils.kt\ncom/onyx/android/sdk/note/common/utils/PointUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,82:1\n1#2:83\n*E\n"})
/* loaded from: classes8.dex */
public final class PointUtils {

    @NotNull
    public static final PointUtils INSTANCE = new PointUtils();

    @NotNull
    public final TouchPoint createTouchPoint(float x, float y) {
        return new TouchPoint(x, y, Random.INSTANCE.nextFloat() * 1024, 0.0f, System.currentTimeMillis());
    }

    public final boolean isPointInPolygon(@NotNull PointF[] pts, float x, float y) {
        Intrinsics.checkNotNullParameter(pts, "pts");
        int length = pts.length;
        int i = length - 1;
        for (int i2 = 0; i2 < length; i2++) {
            PointF pointF = pts[i2];
            float f = pointF.y;
            if ((f <= y && y < pts[i].y) || (pts[i].y <= y && y < f)) {
                PointF pointF2 = pts[i];
                float f2 = pointF2.x;
                float f3 = pointF.x;
                if (x < (((f2 - f3) * (y - f)) / (pointF2.y - f)) + f3) {
                    return true;
                }
            }
            i = i2;
        }
        return false;
    }

    public final boolean isPointInsideCircle(float pointX, float pointY, float centerX, float centerY, float radius) {
        float f = pointX - centerX;
        float f2 = pointY - centerY;
        return ((float) Math.sqrt((double) ((f * f) + (f2 * f2)))) <= radius;
    }

    public final void scale(@Nullable PointF point, float scale) {
        if (point != null) {
            point.x *= scale;
            point.y *= scale;
        }
    }

    @NotNull
    public final TouchPointList toRectTouchPointList(@NotNull TouchPointList srcPointList) {
        Object firstOrNull;
        Object lastOrNull;
        Intrinsics.checkNotNullParameter(srcPointList, "srcPointList");
        TouchPointList touchPointList = new TouchPointList();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) srcPointList.getPoints());
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return touchPointList;
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) srcPointList.getPoints());
        TouchPoint touchPoint2 = (TouchPoint) lastOrNull;
        if (touchPoint2 == null) {
            return touchPointList;
        }
        touchPointList.add(touchPoint.copy());
        TouchPoint copy = touchPoint.copy();
        copy.setX(touchPoint2.getX());
        touchPointList.add(copy);
        touchPointList.add(touchPoint2.copy());
        TouchPoint copy2 = touchPoint.copy();
        copy2.setY(touchPoint2.getY());
        touchPointList.add(copy2);
        return touchPointList;
    }

    public final void scale(@Nullable PointF point, float scaleX, float scaleY) {
        if (point != null) {
            point.x *= scaleX;
            point.y *= scaleY;
        }
    }
}
