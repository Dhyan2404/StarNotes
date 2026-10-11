package com.onyx.android.sdk.device;

import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u0006H\u0016¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/device/SamsungDevice;", "Lcom/onyx/android/sdk/device/CommonBaseDevice;", "()V", "filterByActionDown", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "isCheckScaleSpanEnable", "isPressed", "motionEvent", "isRefreshModeChangeEnable", "isStylusLongPressInterrupt", "isStylusLongPressRelease", "isStylusLongPressed", "normalizeTouchAction", "", "Companion", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SamsungDevice extends CommonBaseDevice {
    public static final int ACTION_STYLUS_ACTION_DOWN = 211;
    public static final int ACTION_STYLUS_ACTION_MOVE = 213;
    public static final int ACTION_STYLUS_ACTION_UP = 212;

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean filterByActionDown(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return event.getActionMasked() == 0 || event.getActionMasked() == 211;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean isCheckScaleSpanEnable() {
        return true;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean isPressed(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        if (motionEvent.getToolType(motionEvent.getActionIndex()) != 2) {
            return false;
        }
        int action = motionEvent.getAction();
        return action == 0 || action == 2 || action == 211 || action == 213;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean isRefreshModeChangeEnable() {
        return false;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean isStylusLongPressInterrupt(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        return (motionEvent.getAction() == 0 || motionEvent.getAction() == 211) && motionEvent.getButtonState() == 32;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean isStylusLongPressRelease(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        return (motionEvent.getAction() == 1 || motionEvent.getAction() == 212) && motionEvent.getButtonState() == 32;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean isStylusLongPressed(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        int action = motionEvent.getAction();
        if (action == 0 || action == 2 || action == 211 || action == 213) {
            setStylusPress(motionEvent.getButtonState() == 32 || motionEvent.getButtonState() == 64);
        }
        return getIsStylusPress();
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public int normalizeTouchAction(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                return 1;
            }
            if (action != 2) {
                switch (action) {
                    case 211:
                        break;
                    case 212:
                        return 1;
                    case 213:
                        break;
                    default:
                        return super.normalizeTouchAction(motionEvent);
                }
            }
            return 2;
        }
        return 0;
    }
}
