package com.onyx.android.sdk.device;

import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/device/OnePlusDevice;", "Lcom/onyx/android/sdk/device/OppoDevice;", "()V", "filterDuplicateKeyboardOpenEvent", "", "keyboardHeight", "", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class OnePlusDevice extends OppoDevice {
    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean filterDuplicateKeyboardOpenEvent(int keyboardHeight) {
        return keyboardHeight > 0;
    }
}
