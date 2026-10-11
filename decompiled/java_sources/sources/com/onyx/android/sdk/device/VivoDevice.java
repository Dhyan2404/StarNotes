package com.onyx.android.sdk.device;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.MotionEvent;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ScreenUtils;
import com.blankj.utilcode.util.SizeUtils;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.device.bean.MultiWindowType;
import com.onyx.android.sdk.device.bean.NotchType;
import com.onyx.android.sdk.device.bean.WindowModeType;
import com.sun.org.apache.bcel.internal.Constants;
import com.vivo.penengine.impl.VivoStylusGestureManagerImpl;
import com.vivo.penengine.impl.VivoStylusManagerImpl;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 ;2\u00020\u00012\u00020\u0002:\u0001;B\u0007¢\u0006\u0004\b9\u0010:J\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J6\u0010\u000e\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0016J0\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J\u0012\u0010\u0015\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J$\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00172\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00070\u0019H\u0016J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0010\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0018\u0010\"\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u0007H\u0016J\u0010\u0010$\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0005H\u0016J\u0010\u0010'\u001a\u00020\u00072\u0006\u0010&\u001a\u00020%H\u0016JJ\u0010.\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020%28\u0010-\u001a4\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b('\u0012\u0015\u0012\u0013\u0018\u00010+¢\u0006\f\b)\u0012\b\b*\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u001c0(H\u0016J\u0018\u00103\u001a\u00020\u00052\u0006\u00100\u001a\u00020/2\u0006\u00102\u001a\u000201H\u0016J\b\u00104\u001a\u00020\u0007H\u0003J\u0012\u00105\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002J\u0012\u00106\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002R$\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/device/VivoDevice;", "Lcom/onyx/android/sdk/device/CommonBaseDevice;", "Lcom/vivo/penengine/impl/VivoStylusGestureManagerImpl$OnGestureCallback;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "pointerCount", "", "filterByCancel", "currentEvent", "Landroid/graphics/PointF;", "downPointF", "upPointF", "distanceThreshold", "filterByUpToDownDistance", "", "downTimeMillisecond", "upTimeMillisecond", "upDownTimeMin", "upDownTimeMax", "filterByUpToDownTime", "filterByTouchUp", "filterByDispatchTouchEvent", "Landroid/content/Context;", "context", "Lkotlin/Function1;", "", "callBack", "", "registerStylusEngine", "unRegisterStylusEngine", "initStylusVibrate", "destroyStylusVibrate", "isEnable", "enableVibrate", "gestureType", "onGesture", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "hasNotch", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "Lcom/onyx/android/sdk/device/bean/NotchType;", "notchType", "callback", "getNotchRect", "Lcom/onyx/android/sdk/device/bean/WindowModeType;", "windowModeType", "Lcom/onyx/android/sdk/device/bean/MultiWindowType;", "multiWindowType", "getWindowTopPadding", "i", C6998g.f39679a, C6999h.f39688c, "c", "Lkotlin/jvm/functions/Function1;", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class VivoDevice extends CommonBaseDevice implements VivoStylusGestureManagerImpl.OnGestureCallback {
    public static final int DOUBLE_CLICK = 2;
    public static final int PRIMARY_KEY_CLICK = 3;
    public static final int SECONDARY_KEY_CLICK = 4;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Function1<? super String, Boolean> callBack;

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IVibrate
    public void destroyStylusVibrate(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        VivoStylusManagerImpl.getInstance(context).destroy();
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IVibrate
    public void enableVibrate(@NotNull Context context, boolean isEnable) {
        Intrinsics.checkNotNullParameter(context, "context");
        VivoStylusManagerImpl.getInstance(context).enableWritingVibrate(isEnable);
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean filterByCancel(@Nullable MotionEvent event, int pointerCount) {
        if (isMoreThanTwoFinger(pointerCount)) {
            return true;
        }
        return super.filterByCancel(event, pointerCount);
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
            LogUtils.m8164v(VivoDevice.class, "filter by up to down time");
        }
        return z;
    }

    /* renamed from: g */
    public final int m33018g(Context context) {
        return (int) (27 * ScreenUtils.getScreenDensity());
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.INotch
    public void getNotchRect(@NotNull Activity activity, @NotNull Function2<? super Boolean, ? super NotchType, Unit> callback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!hasNotch(activity)) {
            callback.invoke(Boolean.FALSE, null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        Rect calculateNotchRect = calculateNotchRect(activity, m33019h(activity), m33018g(activity));
        if (calculateNotchRect == null) {
            callback.invoke(Boolean.FALSE, null);
            return;
        }
        arrayList.add(calculateNotchRect);
        NotchType notchType = getNotchType(activity, arrayList);
        if (notchType == null) {
            callback.invoke(Boolean.FALSE, null);
        } else {
            callback.invoke(Boolean.TRUE, notchType);
        }
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IScreen
    public int getWindowTopPadding(@NotNull WindowModeType windowModeType, @NotNull MultiWindowType multiWindowType) {
        Intrinsics.checkNotNullParameter(windowModeType, "windowModeType");
        Intrinsics.checkNotNullParameter(multiWindowType, "multiWindowType");
        return windowModeType == WindowModeType.FREEDOM_MODE ? SizeUtils.dp2px(50.0f) : multiWindowType.isWindowAtTheTop() ? SizeUtils.dp2px(20.0f) : SizeUtils.dp2px(4.0f);
    }

    /* renamed from: h */
    public final int m33019h(Context context) {
        return (int) (100 * ScreenUtils.getScreenDensity());
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.INotch
    public boolean hasNotch(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return BuildKt.isApiLevelAbove(28) ? super.hasNotch(activity) : m33020i();
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: i */
    public final boolean m33020i() {
        Class<?> cls = Class.forName("android.util.FtFeature");
        ReflectUtils reflectUtils = ReflectUtils.INSTANCE;
        Object invokeMethodSafely = reflectUtils.invokeMethodSafely(reflectUtils.getMethodSafely(cls, "isFtFeatureSupport", Integer.TYPE), cls.newInstance(), 32);
        if (invokeMethodSafely == null) {
            invokeMethodSafely = Boolean.FALSE;
        }
        return ((Boolean) invokeMethodSafely).booleanValue();
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IVibrate
    public void initStylusVibrate(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        VivoStylusManagerImpl.getInstance(context).init();
    }

    @Override // com.vivo.penengine.impl.VivoStylusGestureManagerImpl.OnGestureCallback
    public boolean onGesture(int gestureType) {
        Function1<? super String, Boolean> function1;
        if (gestureType == 2) {
            Function1<? super String, Boolean> function12 = this.callBack;
            if (function12 != null) {
                return function12.invoke("settings_stylus_double_click").booleanValue();
            }
            return false;
        }
        if (gestureType != 3) {
            if (gestureType == 4 && (function1 = this.callBack) != null) {
                return function1.invoke("settings_stylus_secondary_click").booleanValue();
            }
            return false;
        }
        Function1<? super String, Boolean> function13 = this.callBack;
        if (function13 != null) {
            return function13.invoke("settings_stylus_primary_click").booleanValue();
        }
        return false;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public void registerStylusEngine(@NotNull Context context, @NotNull Function1<? super String, Boolean> callBack) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callBack, "callBack");
        this.callBack = callBack;
        VivoStylusGestureManagerImpl.getInstance(context).registerGestureCallback(this);
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public void unRegisterStylusEngine(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        VivoStylusGestureManagerImpl.getInstance(context).unregisterGestureCallback(this);
    }
}
