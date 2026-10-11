package com.onyx.android.sdk.device;

import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J(\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/device/IPenArgs;", "", "getDefaultPressureSensitivity", "", "commonDefaultPressureSensitivity", "getDevicePressureSensitivity", "currentPressureSensitivity", "minPressureSensitivity", "maxPressureSensitivity", "totalLevel", "", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IPenArgs {
    float getDefaultPressureSensitivity(float commonDefaultPressureSensitivity);

    float getDevicePressureSensitivity(float currentPressureSensitivity, float minPressureSensitivity, float maxPressureSensitivity, int totalLevel);
}
