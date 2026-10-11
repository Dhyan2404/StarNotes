package com.onyx.android.sdk.genericshape.utils;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ(\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/utils/DirectionPointUtils;", "", "()V", "arrowLinePoint", "", "downPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "upPoint", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "", "rotateVector", ExtUnits.UNIT_PX, "py", "angle", "", "arrowLen", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DirectionPointUtils {

    @NotNull
    public static final DirectionPointUtils INSTANCE = new DirectionPointUtils();

    private DirectionPointUtils() {
    }

    public static /* synthetic */ float[] arrowLinePoint$default(DirectionPointUtils directionPointUtils, TouchPoint touchPoint, TouchPoint touchPoint2, float f, int i, Object obj) {
        if ((i & 4) != 0) {
            f = 0.0f;
        }
        return directionPointUtils.arrowLinePoint(touchPoint, touchPoint2, f);
    }

    private final float[] rotateVector(float px, float py, double angle, double arrowLen) {
        double d = px;
        double d2 = py;
        double cos = (Math.cos(angle) * d) - (Math.sin(angle) * d2);
        double sin = (d * Math.sin(angle)) + (d2 * Math.cos(angle));
        double sqrt = Math.sqrt((cos * cos) + (sin * sin));
        return new float[]{(float) ((cos / sqrt) * arrowLen), (float) ((sin / sqrt) * arrowLen)};
    }

    @NotNull
    public final float[] arrowLinePoint(@NotNull TouchPoint downPoint, @NotNull TouchPoint upPoint, float strokeWidth) {
        double d;
        Intrinsics.checkNotNullParameter(downPoint, "downPoint");
        Intrinsics.checkNotNullParameter(upPoint, "upPoint");
        float x = downPoint.getX();
        float y = downPoint.getY();
        float x2 = upPoint.getX();
        float y2 = upPoint.getY();
        double d2 = 14.0d;
        if (strokeWidth > 0.0f) {
            d2 = ((Number) MathUtils.INSTANCE.atLeast(Double.valueOf(14.0d), Double.valueOf(strokeWidth * GeometryConfigurations.INSTANCE.getMinArrowWidthPercent()))).doubleValue();
            d = 1.4285714285714286d * d2;
        } else {
            d = 20.0d;
        }
        double atan = Math.atan(d2 / d);
        double sqrt = Math.sqrt((d2 * d2) + (d * d));
        float f = x2 - x;
        float f2 = y2 - y;
        float[] rotateVector = rotateVector(f, f2, atan, sqrt);
        float[] rotateVector2 = rotateVector(f, f2, -atan, sqrt);
        return new float[]{x2 - rotateVector[0], y2 - rotateVector[1], x2 - rotateVector2[0], y2 - rotateVector2[1]};
    }
}
