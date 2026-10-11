package com.onyx.android.sdk.device;

import android.graphics.PointF;
import android.view.MotionEvent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.SizeUtils;
import com.onyx.android.sdk.device.bean.MultiWindowType;
import com.onyx.android.sdk.device.bean.WindowModeType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 (2\u00020\u0001:\u0001(B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0006H\u0016J6\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\bH\u0016J0\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\u0010\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0006H\u0016J\b\u0010$\u001a\u00020\u0004H\u0016J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0006H\u0016J\u0010\u0010&\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0006H\u0016J\u0010\u0010'\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0006H\u0016¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/device/LenovoDevice;", "Lcom/onyx/android/sdk/device/CommonBaseDevice;", "()V", "filterByCancel", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "pointerCount", "", "filterByDispatchPointerDown", "filterByDispatchTouchEvent", "filterByTouchUp", "currentEvent", "filterByUpToDownDistance", "downPointF", "Landroid/graphics/PointF;", "upPointF", "distanceThreshold", "filterByUpToDownTime", "downTimeMillisecond", "", "upTimeMillisecond", "upDownTimeMin", "upDownTimeMax", "getNavBarHeight", ActivityChooserModel.f1429r, "Landroidx/appcompat/app/AppCompatActivity;", "getPalmSizeFactor", "", "getWindowTopPadding", "windowModeType", "Lcom/onyx/android/sdk/device/bean/WindowModeType;", "multiWindowType", "Lcom/onyx/android/sdk/device/bean/MultiWindowType;", "isPressed", "motionEvent", "isRefreshModeChangeEnable", "isStylusLongPressInterrupt", "isStylusLongPressRelease", "isStylusLongPressed", "Companion", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LenovoDevice extends CommonBaseDevice {
    public static final float LENOVO_MULTI_WINDOW_TOP_PADDING_DIMEN_LARGE = 40.0f;
    public static final float LENOVO_PALM_SIZE_FACTOR = 2.5f;

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean filterByCancel(@Nullable MotionEvent event, int pointerCount) {
        if (isMoreThanTwoFinger(pointerCount)) {
            return true;
        }
        return super.filterByCancel(event, pointerCount);
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean filterByDispatchPointerDown(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getPointerCount() < 3 || !(event.getActionMasked() == 5 || event.getActionMasked() == 3)) {
            return super.filterByDispatchPointerDown(event);
        }
        return true;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean filterByDispatchTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return event.getPointerCount() >= 3;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean filterByTouchUp(@Nullable MotionEvent currentEvent) {
        if (currentEvent != null) {
            return currentEvent.getActionMasked() == 1 || currentEvent.getActionMasked() == 3;
        }
        return false;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean filterByUpToDownDistance(@Nullable MotionEvent currentEvent, @Nullable PointF downPointF, @Nullable PointF upPointF, int pointerCount, int distanceThreshold) {
        if (!isMoreThanTwoFinger(pointerCount)) {
            return super.filterByUpToDownDistance(currentEvent, downPointF, upPointF, pointerCount, distanceThreshold);
        }
        if (currentEvent != null && currentEvent.getActionMasked() == 1) {
            return true;
        }
        return currentEvent != null && currentEvent.getActionMasked() == 3;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean filterByUpToDownTime(long downTimeMillisecond, long upTimeMillisecond, int pointerCount, long upDownTimeMin, long upDownTimeMax) {
        if (upTimeMillisecond <= 0) {
            upTimeMillisecond = System.currentTimeMillis();
        }
        long j = upTimeMillisecond - downTimeMillisecond;
        if (isMoreThanTwoFinger(pointerCount)) {
            upDownTimeMin = 0;
        }
        boolean z = false;
        if (upDownTimeMin <= j && j < upDownTimeMax) {
            z = true;
        }
        if (!z) {
            LogUtils.m8164v(LenovoDevice.class, "filter by up to down time");
        }
        return z;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public int getNavBarHeight(@NotNull AppCompatActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return activity.getResources().getDimensionPixelSize(activity.getResources().getIdentifier("navigation_bar_height", "dimen", "android"));
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IPalmSize
    public float getPalmSizeFactor() {
        return 2.5f;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IScreen
    public int getWindowTopPadding(@NotNull WindowModeType windowModeType, @NotNull MultiWindowType multiWindowType) {
        Intrinsics.checkNotNullParameter(windowModeType, "windowModeType");
        Intrinsics.checkNotNullParameter(multiWindowType, "multiWindowType");
        return (multiWindowType.isWindowAtTheTop() || multiWindowType.isWindowAtTheBottom() || multiWindowType.isWindowAtTheLeft() || multiWindowType.isWindowAtTheRight()) ? SizeUtils.dp2px(40.0f) : SizeUtils.dp2px(4.0f);
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean isPressed(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        if (motionEvent.getToolType(motionEvent.getActionIndex()) != 2) {
            return false;
        }
        int action = motionEvent.getAction();
        return action == 0 || action == 2;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean isRefreshModeChangeEnable() {
        return false;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean isStylusLongPressInterrupt(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        return motionEvent.getAction() == 0 && (motionEvent.getButtonState() == 32 || motionEvent.getButtonState() == 64);
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean isStylusLongPressRelease(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        return motionEvent.getAction() == 1 && (motionEvent.getButtonState() == 32 || motionEvent.getButtonState() == 64);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
    
        if (r0 != 3) goto L19;
     */
    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isStylusLongPressed(@org.jetbrains.annotations.NotNull android.view.MotionEvent r5) {
        /*
            r4 = this;
            java.lang.String r0 = "motionEvent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            int r0 = r5.getAction()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1a
            r5 = 3
            if (r0 == r5) goto L16
            goto L34
        L16:
            r4.setLongPressActive(r1)
            goto L34
        L1a:
            int r0 = r5.getButtonState()
            r3 = 32
            if (r0 == r3) goto L30
            int r5 = r5.getButtonState()
            r0 = 64
            if (r5 == r0) goto L30
            boolean r5 = r4.getIsLongPressActive()
            if (r5 == 0) goto L31
        L30:
            r1 = r2
        L31:
            r4.setStylusPress(r1)
        L34:
            boolean r4 = r4.getIsStylusPress()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.device.LenovoDevice.isStylusLongPressed(android.view.MotionEvent):boolean");
    }
}
