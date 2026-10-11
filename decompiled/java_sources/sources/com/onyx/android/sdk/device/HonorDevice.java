package com.onyx.android.sdk.device;

import com.blankj.utilcode.util.SizeUtils;
import com.onyx.android.sdk.device.bean.MultiWindowType;
import com.onyx.android.sdk.device.bean.WindowModeType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004H\u0016J\b\u0010\u000e\u001a\u00020\fH\u0016¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/device/HonorDevice;", "Lcom/onyx/android/sdk/device/CommonBaseDevice;", "()V", "getPalmSizeFactor", "", "getWindowTopPadding", "", "windowModeType", "Lcom/onyx/android/sdk/device/bean/WindowModeType;", "multiWindowType", "Lcom/onyx/android/sdk/device/bean/MultiWindowType;", "isDynamicRefreshSupport", "", "refresh", "supportNativeRenderNode", "Companion", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HonorDevice extends CommonBaseDevice {
    public static final float HONOR_MAX_DYNAMIC_SUPPORT_REFRESH_VALUE = 61.0f;
    public static final float HONOR_PALM_SIZE_FACTOR = 2.0f;

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IPalmSize
    public float getPalmSizeFactor() {
        return 2.0f;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IScreen
    public int getWindowTopPadding(@NotNull WindowModeType windowModeType, @NotNull MultiWindowType multiWindowType) {
        Intrinsics.checkNotNullParameter(windowModeType, "windowModeType");
        Intrinsics.checkNotNullParameter(multiWindowType, "multiWindowType");
        return multiWindowType.isWindowAtTheTop() ? SizeUtils.dp2px(20.0f) : SizeUtils.dp2px(4.0f);
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean isDynamicRefreshSupport(float refresh) {
        return refresh <= 61.0f;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean supportNativeRenderNode() {
        if (BuildKt.isApiLevelAbove(36)) {
            return false;
        }
        return super.supportNativeRenderNode();
    }
}
