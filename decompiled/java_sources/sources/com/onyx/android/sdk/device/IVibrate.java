package com.onyx.android.sdk.device;

import android.content.Context;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/device/IVibrate;", "", "destroyStylusVibrate", "", "context", "Landroid/content/Context;", "enableVibrate", "isEnable", "", "initStylusVibrate", "startVibrate", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IVibrate {
    void destroyStylusVibrate(@NotNull Context context);

    void enableVibrate(@NotNull Context context, boolean isEnable);

    void initStylusVibrate(@NotNull Context context);

    void startVibrate(@NotNull Context context);
}
