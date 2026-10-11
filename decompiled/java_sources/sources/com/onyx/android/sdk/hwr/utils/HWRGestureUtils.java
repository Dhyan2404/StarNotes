package com.onyx.android.sdk.hwr.utils;

import com.onyx.android.sdk.hwr.data.bean.HWRGestureWithContext;
import com.onyx.android.sdk.hwr.data.bean.HWRGestureWithoutContext;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/utils/HWRGestureUtils;", "", "()V", "convertGestureWithContext", "", "gestureWithoutContext", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRGestureUtils {

    @NotNull
    public static final HWRGestureUtils INSTANCE = new HWRGestureUtils();

    @NotNull
    public final String convertGestureWithContext(@NotNull String gestureWithoutContext) {
        Intrinsics.checkNotNullParameter(gestureWithoutContext, "gestureWithoutContext");
        switch (gestureWithoutContext.hashCode()) {
            case -1683701069:
                return !gestureWithoutContext.equals(HWRGestureWithoutContext.GESTURE_BOTTOM_TOP) ? "" : HWRGestureWithContext.GESTURE_JOIN;
            case -1604098754:
                return !gestureWithoutContext.equals("surround") ? "" : "surround";
            case -1434062568:
                return !gestureWithoutContext.equals(HWRGestureWithoutContext.GESTURE_RIGHT_LEFT) ? "" : "underline";
            case 1028134102:
                return !gestureWithoutContext.equals(HWRGestureWithoutContext.GESTURE_LEFT_RIGHT) ? "" : "underline";
            case 1736247715:
                return !gestureWithoutContext.equals(HWRGestureWithoutContext.GESTURE_TOP_BOTTOM) ? "" : HWRGestureWithContext.GESTURE_INSERT;
            case 1926279930:
                return !gestureWithoutContext.equals("scratch") ? "" : "scratch";
            default:
                return "";
        }
    }
}
