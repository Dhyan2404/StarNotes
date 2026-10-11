package com.onyx.android.sdk.device.bean;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/device/bean/ScreenInfo;", "", "", "a", "F", "getAppScreenDp", "()F", "setAppScreenDp", "(F)V", "appScreenDp", "Lcom/onyx/android/sdk/device/bean/WindowModeType;", "b", "Lcom/onyx/android/sdk/device/bean/WindowModeType;", "getWindowModeType", "()Lcom/onyx/android/sdk/device/bean/WindowModeType;", "setWindowModeType", "(Lcom/onyx/android/sdk/device/bean/WindowModeType;)V", "windowModeType", "Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;", "c", "Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;", "getScreenDisplayType", "()Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;", "setScreenDisplayType", "(Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;)V", "screenDisplayType", Constants.CONSTRUCTOR_NAME, "()V", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ScreenInfo {

    /* renamed from: a, reason: from kotlin metadata */
    public float appScreenDp;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public WindowModeType windowModeType = WindowModeType.FULL_SCREEN;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public ScreenDisplayType screenDisplayType = ScreenDisplayType.PAD;

    public final float getAppScreenDp() {
        return this.appScreenDp;
    }

    @NotNull
    public final ScreenDisplayType getScreenDisplayType() {
        return this.screenDisplayType;
    }

    @NotNull
    public final WindowModeType getWindowModeType() {
        return this.windowModeType;
    }

    public final void setAppScreenDp(float f) {
        this.appScreenDp = f;
    }

    public final void setScreenDisplayType(@NotNull ScreenDisplayType screenDisplayType) {
        Intrinsics.checkNotNullParameter(screenDisplayType, "<set-?>");
        this.screenDisplayType = screenDisplayType;
    }

    public final void setWindowModeType(@NotNull WindowModeType windowModeType) {
        Intrinsics.checkNotNullParameter(windowModeType, "<set-?>");
        this.windowModeType = windowModeType;
    }
}
