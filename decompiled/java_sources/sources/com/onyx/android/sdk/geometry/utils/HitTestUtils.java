package com.onyx.android.sdk.geometry.utils;

import com.onyx.android.sdk.base.utils.MathUtils;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004J>\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004JF\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004J.\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/utils/HitTestUtils;", "", "()V", "distance", "", "x1", "y1", "x2", "y2", "x", "y", "hitTest", "", "limit", "hitTestLine", "x3", "y3", "x4", "y4", "isPointInsideCircle", "pointX", "pointY", "centerX", "centerY", "radius", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HitTestUtils {

    @NotNull
    public static final HitTestUtils INSTANCE = new HitTestUtils();

    public final float distance(float x1, float y1, float x2, float y2, float x, float y) {
        double distance;
        MathUtils mathUtils = MathUtils.INSTANCE;
        double distance2 = mathUtils.distance(x1, y1, x2, y2);
        if (distance2 == 0.0d) {
            distance = mathUtils.distance(x1, y1, x, y);
        } else {
            double d = ((((x - x1) * r11) + ((y - y1) * r13)) / (distance2 * distance2)) * distance2;
            distance = d < 0.0d ? mathUtils.distance(x1, y1, x, y) : d > distance2 ? mathUtils.distance(x2, y2, x, y) : mathUtils.distance((float) (x1 + (((x2 - x1) * d) / distance2)), (float) (y1 + ((d * (y2 - y1)) / distance2)), x, y);
        }
        return (float) distance;
    }

    public final boolean hitTest(float x1, float y1, float x2, float y2, float x, float y, float limit) {
        return distance(x1, y1, x2, y2, x, y) <= limit;
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

    public final boolean isPointInsideCircle(float pointX, float pointY, float centerX, float centerY, float radius) {
        float f = pointX - centerX;
        float f2 = pointY - centerY;
        return ((float) Math.sqrt((double) ((f * f) + (f2 * f2)))) <= radius;
    }
}
