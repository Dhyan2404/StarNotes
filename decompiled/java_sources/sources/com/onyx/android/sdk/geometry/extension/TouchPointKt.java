package com.onyx.android.sdk.geometry.extension;

import android.graphics.PointF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.TouchData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\f\u0010\u0003\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\f\u0010\u0004\u001a\u00020\u0005*\u0004\u0018\u00010\u0002\u001a\f\u0010\u0006\u001a\u00020\u0005*\u0004\u0018\u00010\u0002\u001a\f\u0010\u0007\u001a\u00020\b*\u0004\u0018\u00010\u0002\u001a\f\u0010\t\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\f\u0010\n\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\"\u0010\u000b\u001a\u00020\f*\u00020\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u001a\"\u0010\u0010\u001a\u00020\f*\u00020\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u001a\n\u0010\u0011\u001a\u00020\u0012*\u00020\u0002\u001a*\u0010\u0013\u001a\u00020\f*\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u001a\"\u0010\u0015\u001a\u00020\f*\u00020\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¨\u0006\u0016"}, m61528d2 = {"obtainPressure", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "obtainSize", "obtainTiltX", "", "obtainTiltY", "obtainTimestamp", "", "obtainX", "obtainY", "toDownTouchData", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "predictPoint", "boxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "toMoveTouchData", "toPointF", "Landroid/graphics/PointF;", "toTouchData", "action", "toUpTouchData", "sdk-geometry_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TouchPointKt {
    public static final float obtainPressure(@Nullable TouchPoint touchPoint) {
        if (touchPoint != null) {
            return touchPoint.getPressure();
        }
        return 0.0f;
    }

    public static final float obtainSize(@Nullable TouchPoint touchPoint) {
        if (touchPoint != null) {
            return touchPoint.getSize();
        }
        return 0.0f;
    }

    public static final int obtainTiltX(@Nullable TouchPoint touchPoint) {
        if (touchPoint != null) {
            return touchPoint.getTiltX();
        }
        return 0;
    }

    public static final int obtainTiltY(@Nullable TouchPoint touchPoint) {
        if (touchPoint != null) {
            return touchPoint.getTiltY();
        }
        return 0;
    }

    public static final long obtainTimestamp(@Nullable TouchPoint touchPoint) {
        if (touchPoint != null) {
            return touchPoint.getTimestamp();
        }
        return 0L;
    }

    public static final float obtainX(@Nullable TouchPoint touchPoint) {
        if (touchPoint != null) {
            return touchPoint.getX();
        }
        return 0.0f;
    }

    public static final float obtainY(@Nullable TouchPoint touchPoint) {
        if (touchPoint != null) {
            return touchPoint.getY();
        }
        return 0.0f;
    }

    @NotNull
    public static final TouchData toDownTouchData(@NotNull TouchPoint touchPoint, @Nullable TouchPoint touchPoint2, @Nullable BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        return toTouchData(touchPoint, 0, touchPoint2, boxInfo);
    }

    public static /* synthetic */ TouchData toDownTouchData$default(TouchPoint touchPoint, TouchPoint touchPoint2, BoxInfo boxInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            touchPoint2 = null;
        }
        if ((i & 2) != 0) {
            boxInfo = null;
        }
        return toDownTouchData(touchPoint, touchPoint2, boxInfo);
    }

    @NotNull
    public static final TouchData toMoveTouchData(@NotNull TouchPoint touchPoint, @Nullable TouchPoint touchPoint2, @Nullable BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        return toTouchData(touchPoint, 2, touchPoint2, boxInfo);
    }

    public static /* synthetic */ TouchData toMoveTouchData$default(TouchPoint touchPoint, TouchPoint touchPoint2, BoxInfo boxInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            touchPoint2 = null;
        }
        if ((i & 2) != 0) {
            boxInfo = null;
        }
        return toMoveTouchData(touchPoint, touchPoint2, boxInfo);
    }

    @NotNull
    public static final PointF toPointF(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        return new PointF(touchPoint.getX(), touchPoint.getY());
    }

    @NotNull
    public static final TouchData toTouchData(@NotNull TouchPoint touchPoint, int i, @Nullable TouchPoint touchPoint2, @Nullable BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        return new TouchData(i, 2, touchPoint, touchPoint2, boxInfo, 0L, 32, null);
    }

    public static /* synthetic */ TouchData toTouchData$default(TouchPoint touchPoint, int i, TouchPoint touchPoint2, BoxInfo boxInfo, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            touchPoint2 = null;
        }
        if ((i2 & 4) != 0) {
            boxInfo = null;
        }
        return toTouchData(touchPoint, i, touchPoint2, boxInfo);
    }

    @NotNull
    public static final TouchData toUpTouchData(@NotNull TouchPoint touchPoint, @Nullable TouchPoint touchPoint2, @Nullable BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(touchPoint, "<this>");
        return toTouchData(touchPoint, 1, touchPoint2, boxInfo);
    }

    public static /* synthetic */ TouchData toUpTouchData$default(TouchPoint touchPoint, TouchPoint touchPoint2, BoxInfo boxInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            touchPoint2 = null;
        }
        if ((i & 2) != 0) {
            boxInfo = null;
        }
        return toUpTouchData(touchPoint, touchPoint2, boxInfo);
    }
}
