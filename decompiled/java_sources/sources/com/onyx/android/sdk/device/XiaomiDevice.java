package com.onyx.android.sdk.device;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.SizeUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.auth.MiuiAuthHelper;
import com.miui.penengine.p015e.C6999h;
import com.miui.penengine.touchfilm.MiuiTouchFilmUtils;
import com.onyx.android.sdk.device.XiaomiDevice;
import com.onyx.android.sdk.device.bean.MultiWindowType;
import com.onyx.android.sdk.device.bean.NotchType;
import com.onyx.android.sdk.device.bean.WindowModeType;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\r\u0018\u0000 A2\u00020\u0001:\u0001AB\u0007¢\u0006\u0004\b?\u0010@J\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J6\u0010\r\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004H\u0016J0\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eH\u0016J\u0012\u0010\u0014\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u0015H\u0016JJ\u0010 \u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u001528\u0010\u001f\u001a4\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u001d¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u00180\u001aH\u0016J\u0018\u0010%\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#H\u0016J\b\u0010'\u001a\u00020&H\u0016J(\u0010,\u001a\u00020&2\u0006\u0010(\u001a\u00020&2\u0006\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020&2\u0006\u0010+\u001a\u00020\u0004H\u0016J\u0010\u0010.\u001a\u00020&2\u0006\u0010-\u001a\u00020&H\u0016J\u0010\u00101\u001a\u00020\u00182\u0006\u00100\u001a\u00020/H\u0016J$\u00107\u001a\u00020\u00182\u0006\u00103\u001a\u0002022\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u000604H\u0016J\u0010\u00108\u001a\u00020\u00182\u0006\u00103\u001a\u000202H\u0016J\b\u00109\u001a\u00020\u0006H\u0003J\u0010\u0010:\u001a\u00020\u00042\u0006\u00103\u001a\u000202H\u0002J\u0010\u0010;\u001a\u00020\u00042\u0006\u00103\u001a\u000202H\u0002J\u0010\u0010<\u001a\u00020\u00182\u0006\u00103\u001a\u000202H\u0002R$\u00106\u001a\u0010\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u0006\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>¨\u0006B"}, m61528d2 = {"Lcom/onyx/android/sdk/device/XiaomiDevice;", "Lcom/onyx/android/sdk/device/CommonBaseDevice;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "pointerCount", "", "filterByCancel", "currentEvent", "Landroid/graphics/PointF;", "downPointF", "upPointF", "distanceThreshold", "filterByUpToDownDistance", "", "downTimeMillisecond", "upTimeMillisecond", "upDownTimeMin", "upDownTimeMax", "filterByUpToDownTime", "filterByTouchUp", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "hasNotch", "", "setDisplayInNotch", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "Lcom/onyx/android/sdk/device/bean/NotchType;", "notchType", "callback", "getNotchRect", "Lcom/onyx/android/sdk/device/bean/WindowModeType;", "windowModeType", "Lcom/onyx/android/sdk/device/bean/MultiWindowType;", "multiWindowType", "getWindowTopPadding", "", "getPalmSizeFactor", "currentPressureSensitivity", "minPressureSensitivity", "maxPressureSensitivity", "totalLevel", "getDevicePressureSensitivity", "commonDefaultPressureSensitivity", "getDefaultPressureSensitivity", "Landroid/view/View;", "view", "requestRefreshConfigOfView", "Landroid/content/Context;", "context", "Lkotlin/Function1;", "", "callBack", "registerStylusEngine", "unRegisterStylusEngine", C4921e.f26537n, C6999h.f39688c, "i", "j", "c", "Lkotlin/jvm/functions/Function1;", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class XiaomiDevice extends CommonBaseDevice {
    public static final float DEFAULT_PRESSURE_SENSITIVITY_XIAOMI = 0.24f;
    public static final float DEVICE_PRESSURE_RANGE = 0.5f;
    public static final float FLOATING_WINDOW_TOP_PADDING_DIMEN_LARGE = 50.0f;
    public static final float MIN_PRESSURE_SENSITIVITY = 0.0f;
    public static final int SPLIT_BAR_PADDING_API_LEVEL = 35;
    public static final float WINDOW_TOP_PADDING_DIMEN_OF_SPLIT_BAR = 22.0f;
    public static final float XIAOMI_PALM_SIZE_FACTOR = 2.5f;

    /* renamed from: d */
    public static final float f42086d = 0.5f;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Function1<? super String, Boolean> callBack;

    /* renamed from: l */
    public static final void m33022l(XiaomiDevice this$0, Context context, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        if (z) {
            MiuiAuthHelper.destroyAuthService();
            this$0.m33025j(context);
        }
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean filterByCancel(@Nullable MotionEvent event, int pointerCount) {
        if (isMoreThanTwoFinger(pointerCount)) {
            return true;
        }
        return super.filterByCancel(event, pointerCount);
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
            LogUtils.m8164v(XiaomiDevice.class, "filter by up to down time");
        }
        return z;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IPenArgs
    public float getDefaultPressureSensitivity(float commonDefaultPressureSensitivity) {
        return 0.24f;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IPenArgs
    public float getDevicePressureSensitivity(float currentPressureSensitivity, float minPressureSensitivity, float maxPressureSensitivity, int totalLevel) {
        return ((0.5f / totalLevel) * ((int) (((currentPressureSensitivity - minPressureSensitivity) / ((maxPressureSensitivity - minPressureSensitivity) / r0)) + 0.5f))) + 0.0f;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.INotch
    public void getNotchRect(@NotNull Activity activity, @NotNull Function2<? super Boolean, ? super NotchType, Unit> callback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!hasNotch(activity)) {
            callback.invoke(Boolean.FALSE, null);
            return;
        }
        Rect calculateNotchRect = calculateNotchRect(activity, m33024i(activity), m33023h(activity));
        if (calculateNotchRect == null) {
            callback.invoke(Boolean.FALSE, null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(calculateNotchRect);
        NotchType notchType = getNotchType(activity, arrayList);
        if (notchType == null) {
            callback.invoke(Boolean.FALSE, null);
        } else {
            callback.invoke(Boolean.TRUE, notchType);
        }
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IPalmSize
    public float getPalmSizeFactor() {
        return 2.5f;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IScreen
    public int getWindowTopPadding(@NotNull WindowModeType windowModeType, @NotNull MultiWindowType multiWindowType) {
        Intrinsics.checkNotNullParameter(windowModeType, "windowModeType");
        Intrinsics.checkNotNullParameter(multiWindowType, "multiWindowType");
        return windowModeType == WindowModeType.FREEDOM_MODE ? SizeUtils.dp2px(50.0f) : multiWindowType.isWindowAtTheTop() ? SizeUtils.dp2px(20.0f) : BuildKt.isApiLevelAbove(35) ? SizeUtils.dp2px(22.0f) : SizeUtils.dp2px(4.0f);
    }

    /* renamed from: h */
    public final int m33023h(Context context) {
        int identifier = context.getResources().getIdentifier("notch_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.INotch
    public boolean hasNotch(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return BuildKt.isApiLevelAbove(28) ? super.hasNotch(activity) : m33026k();
    }

    /* renamed from: i */
    public final int m33024i(Context context) {
        int identifier = context.getResources().getIdentifier("notch_width", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: j */
    public final void m33025j(Context context) {
        MiuiTouchFilmUtils.init(context, new MiuiTouchFilmUtils.TouchFilmListener() { // from class: com.onyx.android.sdk.device.XiaomiDevice$initStylusEngineByCheck$1
            @Override // com.miui.penengine.touchfilm.MiuiTouchFilmUtils.TouchFilmListener
            public void onBrushPreviewChanged(boolean p0) {
            }

            @Override // com.miui.penengine.touchfilm.MiuiTouchFilmUtils.TouchFilmListener
            public void onTouchFilmTriggered(int function) {
            }
        });
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: k */
    public final boolean m33026k() {
        ReflectUtils reflectUtils = ReflectUtils.INSTANCE;
        Object invokeMethodSafely = reflectUtils.invokeMethodSafely(reflectUtils.getMethodSafely(Class.forName("android.os.SystemProperties"), "getInt", String.class, Integer.TYPE), null, "ro.miui.notch");
        if (invokeMethodSafely == null) {
            invokeMethodSafely = 0;
        }
        return Intrinsics.areEqual(invokeMethodSafely, (Object) 1);
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public void registerStylusEngine(@NotNull final Context context, @NotNull Function1<? super String, Boolean> callBack) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callBack, "callBack");
        this.callBack = callBack;
        MiuiAuthHelper.initAuthService(context, new MiuiAuthHelper.AuthResultListener() { // from class: com.sunia.HTREnginev2.hvo
            @Override // com.miui.penengine.auth.MiuiAuthHelper.AuthResultListener
            public final void onAuthComplete(boolean z) {
                XiaomiDevice.m33022l(XiaomiDevice.this, context, z);
            }
        });
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public void requestRefreshConfigOfView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        requestHighRefreshRate(view);
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.INotch
    public void setDisplayInNotch(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (BuildKt.isApiLevelAbove(28)) {
            super.setDisplayInNotch(activity);
        } else {
            ReflectUtils reflectUtils = ReflectUtils.INSTANCE;
            reflectUtils.invokeMethodSafely(reflectUtils.getMethodSafely(Window.class, "addExtraFlags", Integer.TYPE), activity.getWindow(), 1792);
        }
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public void unRegisterStylusEngine(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        MiuiTouchFilmUtils.onDestroy();
    }
}
