package com.onyx.android.sdk.genericshape.utils;

import com.onyx.android.sdk.base.data.TouchPoint;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\u001e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/utils/BracketPointUtils;", "", "()V", "getCenterRealPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "centerPoint", "startPoint", "endPoint", "getEndRealPoint", "getStartRealPoint", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BracketPointUtils {

    @NotNull
    public static final BracketPointUtils INSTANCE = new BracketPointUtils();

    private BracketPointUtils() {
    }

    @NotNull
    public final TouchPoint getCenterRealPoint(@NotNull TouchPoint centerPoint, @NotNull TouchPoint startPoint, @NotNull TouchPoint endPoint) {
        Intrinsics.checkNotNullParameter(centerPoint, "centerPoint");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        Intrinsics.checkNotNullParameter(endPoint, "endPoint");
        TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        touchPoint.setX(centerPoint.getX());
        touchPoint.setY(centerPoint.getY());
        if (centerPoint.getY() <= startPoint.getY() + 20.0f) {
            touchPoint.setY(startPoint.getY() + 20.0f);
        }
        if (centerPoint.getY() >= endPoint.getY() - 20.0f) {
            touchPoint.setY(endPoint.getY() - 20.0f);
        }
        return touchPoint;
    }

    @NotNull
    public final TouchPoint getEndRealPoint(@NotNull TouchPoint centerPoint, @NotNull TouchPoint startPoint, @NotNull TouchPoint endPoint) {
        Intrinsics.checkNotNullParameter(centerPoint, "centerPoint");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        Intrinsics.checkNotNullParameter(endPoint, "endPoint");
        TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        touchPoint.setX(startPoint.getX());
        touchPoint.setY(endPoint.getY());
        if (endPoint.getY() < centerPoint.getY() + 20.0f) {
            touchPoint.setY(centerPoint.getY() + 20.0f);
        }
        return touchPoint;
    }

    @NotNull
    public final TouchPoint getStartRealPoint(@NotNull TouchPoint centerPoint, @NotNull TouchPoint startPoint, @NotNull TouchPoint endPoint) {
        Intrinsics.checkNotNullParameter(centerPoint, "centerPoint");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        Intrinsics.checkNotNullParameter(endPoint, "endPoint");
        TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        touchPoint.setX(endPoint.getX());
        touchPoint.setY(startPoint.getY());
        if (startPoint.getY() > centerPoint.getY() - 20.0f) {
            touchPoint.setY(centerPoint.getY() - 20.0f);
        }
        return touchPoint;
    }
}
