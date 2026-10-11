package com.onyx.android.sdk.device;

import android.app.Activity;
import androidx.appcompat.widget.ActivityChooserModel;
import com.onyx.android.sdk.device.bean.MultiWindowType;
import com.onyx.android.sdk.device.bean.ScreenInfo;
import com.onyx.android.sdk.device.bean.WindowModeType;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0003H&J\b\u0010\r\u001a\u00020\u000eH&J\b\u0010\u000f\u001a\u00020\u000eH&J\b\u0010\u0010\u001a\u00020\u000eH&J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/device/IScreen;", "", "getMultiWindowType", "Lcom/onyx/android/sdk/device/bean/MultiWindowType;", ActivityChooserModel.f1429r, "Landroid/app/Activity;", "windowModeType", "Lcom/onyx/android/sdk/device/bean/WindowModeType;", "getScreenInfo", "Lcom/onyx/android/sdk/device/bean/ScreenInfo;", "getWindowTopPadding", "", "multiWindowType", "isFreedomWindowMode", "", "isFullScreen", "isMultiWindowMode", "isSmallScreen", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IScreen {
    @NotNull
    MultiWindowType getMultiWindowType(@NotNull Activity activity, @NotNull WindowModeType windowModeType);

    @NotNull
    ScreenInfo getScreenInfo();

    int getWindowTopPadding(@NotNull WindowModeType windowModeType, @NotNull MultiWindowType multiWindowType);

    boolean isFreedomWindowMode();

    boolean isFullScreen();

    boolean isMultiWindowMode();

    boolean isSmallScreen(@NotNull Activity activity);
}
