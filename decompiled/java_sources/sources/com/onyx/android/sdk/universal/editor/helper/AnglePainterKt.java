package com.onyx.android.sdk.universal.editor.helper;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.AnglePoints;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, m61528d2 = {"drawRightAngle", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "angle", "Lcom/onyx/android/sdk/geometry/data/AnglePoints;", "radius", "", "paint", "Landroid/graphics/Paint;", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class AnglePainterKt {
    public static final void drawRightAngle(@NotNull Canvas canvas, @NotNull AnglePoints angle, float f, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(angle, "angle");
        Intrinsics.checkNotNullParameter(paint, "paint");
        double sin = f * Math.sin(0.7853981633974483d);
        TouchPointPair touchPointPair = new TouchPointPair(angle.getCenter(), angle.getPrevious());
        TouchPointPair touchPointPair2 = new TouchPointPair(angle.getCenter(), angle.getNext());
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        TouchPoint findPointByDistance = geometryUtils.findPointByDistance(angle.getCenter(), Double.valueOf(sin), Float.valueOf(touchPointPair.direction()));
        TouchPoint findPointByDistance2 = geometryUtils.findPointByDistance(angle.getCenter(), Double.valueOf(sin), Float.valueOf(touchPointPair2.direction()));
        TouchPoint findPointByDistance3 = geometryUtils.findPointByDistance(findPointByDistance, Double.valueOf(sin), Float.valueOf(touchPointPair2.direction()));
        canvas.drawLine(findPointByDistance3.getX(), findPointByDistance3.getY(), findPointByDistance.getX(), findPointByDistance.getY(), paint);
        canvas.drawLine(findPointByDistance3.getX(), findPointByDistance3.getY(), findPointByDistance2.getX(), findPointByDistance2.getY(), paint);
    }
}
