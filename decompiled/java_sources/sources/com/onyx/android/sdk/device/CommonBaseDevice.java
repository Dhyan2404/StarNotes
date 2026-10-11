package com.onyx.android.sdk.device;

import android.app.Activity;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.BarUtils;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ScreenUtils;
import com.blankj.utilcode.util.SizeUtils;
import com.blankj.utilcode.util.Utils;
import com.onyx.android.sdk.device.CommonBaseDevice;
import com.onyx.android.sdk.device.IDevice;
import com.onyx.android.sdk.device.bean.MultiWindowType;
import com.onyx.android.sdk.device.bean.NotchType;
import com.onyx.android.sdk.device.bean.ScreenDisplayType;
import com.onyx.android.sdk.device.bean.ScreenInfo;
import com.onyx.android.sdk.device.bean.WindowModeType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0017\b\u0016\u0018\u0000 ~2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001~B\u0007¢\u0006\u0004\b|\u0010}J\u001c\u0010\u000b\u001a\u00020\n2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\fH\u0002J\u001a\u0010\u0018\u001a\u00020\u00172\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J6\u0010\u001b\u001a\u00020\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u00132\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J0\u0010!\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u001cH\u0016J\u0012\u0010\"\u001a\u00020\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010'\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0013H\u0016J\u0010\u0010(\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0013H\u0016J\u0010\u0010)\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0013H\u0016J\u0010\u0010*\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0013H\u0016J\u0010\u0010+\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0013H\u0016J\u0010\u0010.\u001a\u00020-2\u0006\u0010,\u001a\u00020\u0017H\u0016J\u0010\u00100\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020/H\u0016J$\u00106\u001a\u00020-2\u0006\u00102\u001a\u0002012\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u001703H\u0016J\u0010\u00107\u001a\u00020-2\u0006\u00102\u001a\u000201H\u0016J\u0010\u00108\u001a\u00020-2\u0006\u00102\u001a\u000201H\u0016J\u0010\u00109\u001a\u00020-2\u0006\u00102\u001a\u000201H\u0016J\u0018\u0010;\u001a\u00020-2\u0006\u00102\u001a\u0002012\u0006\u0010:\u001a\u00020\u0017H\u0016J\u0010\u0010<\u001a\u00020-2\u0006\u00102\u001a\u000201H\u0016J\u0018\u0010@\u001a\u0004\u0018\u00010>2\f\u0010?\u001a\b\u0012\u0004\u0012\u00020>0=H\u0016J\u0010\u0010B\u001a\u00020\u00172\u0006\u0010A\u001a\u00020\nH\u0016J\u0010\u0010C\u001a\u00020\u00172\u0006\u0010A\u001a\u00020\nH\u0016J\b\u0010D\u001a\u00020\u0017H\u0016J\u0010\u0010E\u001a\u00020-2\u0006\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010H\u001a\u00020-2\u0006\u0010G\u001a\u00020FH\u0016J\b\u0010I\u001a\u00020\u0017H\u0016J\u0010\u0010K\u001a\u00020\u00172\u0006\u0010J\u001a\u00020\u0015H\u0016J(\u0010P\u001a\u00020\n2\u0006\u0010L\u001a\u00020\n2\u0006\u0010M\u001a\u00020\n2\u0006\u0010N\u001a\u00020\n2\u0006\u0010O\u001a\u00020\u0015H\u0016J\u0010\u0010R\u001a\u00020\n2\u0006\u0010Q\u001a\u00020\nH\u0016J\u0010\u0010S\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010T\u001a\u00020-2\u0006\u0010\r\u001a\u00020\fH\u0016JJ\u0010[\u001a\u00020-2\u0006\u0010\r\u001a\u00020\f28\u0010Z\u001a4\u0012\u0013\u0012\u00110\u0017¢\u0006\f\bV\u0012\b\bW\u0012\u0004\b\b(S\u0012\u0015\u0012\u0013\u0018\u00010X¢\u0006\f\bV\u0012\b\bW\u0012\u0004\b\b(Y\u0012\u0004\u0012\u00020-0UH\u0016J\"\u0010_\u001a\u0004\u0018\u00010^2\u0006\u00102\u001a\u0002012\u0006\u0010\\\u001a\u00020\u00152\u0006\u0010]\u001a\u00020\u0015H\u0016J\u001e\u0010a\u001a\u0004\u0018\u00010X2\u0006\u0010\r\u001a\u00020\f2\f\u0010`\u001a\b\u0012\u0004\u0012\u00020^0=J\b\u0010c\u001a\u00020bH\u0016J\b\u0010d\u001a\u00020\u0017H\u0016J\b\u0010e\u001a\u00020\u0017H\u0016J\b\u0010f\u001a\u00020\u0017H\u0016J\u0010\u0010g\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\fH\u0016J\u0018\u0010j\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010i\u001a\u00020hH\u0016J\u0018\u0010l\u001a\u00020\u00152\u0006\u0010i\u001a\u00020h2\u0006\u0010k\u001a\u00020\u000eH\u0016J\u000e\u0010m\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015J\b\u0010n\u001a\u00020\nH\u0016J\b\u0010o\u001a\u00020\nH\u0016J\b\u0010p\u001a\u00020\u0017H\u0016J\b\u0010q\u001a\u000204H\u0016J\u0010\u0010r\u001a\u00020-2\u0006\u0010G\u001a\u00020FH\u0004J\u000e\u0010s\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\fR\"\u0010v\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bt\u0010u\u001a\u0004\bv\u0010w\"\u0004\bx\u0010yR\"\u0010z\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010u\u001a\u0004\bz\u0010w\"\u0004\b{\u0010y¨\u0006\u007f"}, m61528d2 = {"Lcom/onyx/android/sdk/device/CommonBaseDevice;", "Lcom/onyx/android/sdk/device/IDevice;", "Lcom/onyx/android/sdk/device/INotch;", "Lcom/onyx/android/sdk/device/IScreen;", "Lcom/onyx/android/sdk/device/IVibrate;", "Lcom/onyx/android/sdk/device/IPalmSize;", "Lcom/onyx/android/sdk/device/IPenArgs;", "Landroid/graphics/PointF;", "downPointF", "upPointF", "", "b", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "Lcom/onyx/android/sdk/device/bean/MultiWindowType;", "d", "e", "Landroid/view/Display$Mode;", "c", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "pointerCount", "", "filterByCancel", "currentEvent", "distanceThreshold", "filterByUpToDownDistance", "", "downTimeMillisecond", "upTimeMillisecond", "upDownTimeMin", "upDownTimeMax", "filterByUpToDownTime", "filterByTouchUp", "filterByDispatchTouchEvent", "filterByDispatchPointerDown", "filterByActionDown", "motionEvent", "isStylusLongPressed", "isEraserPressed", "isStylusLongPressInterrupt", "isStylusLongPressRelease", "isPressed", "isActive", "", "setStylusLongPressActive", "Landroidx/appcompat/app/AppCompatActivity;", "getNavBarHeight", "Landroid/content/Context;", "context", "Lkotlin/Function1;", "", "callBack", "registerStylusEngine", "unRegisterStylusEngine", "initStylusVibrate", "destroyStylusVibrate", "isEnable", "enableVibrate", "startVibrate", "", "Landroid/content/pm/ResolveInfo;", "list", "getTranslateInfo", "refresh", "isRefreshSupport", "isDynamicRefreshSupport", "isRefreshModeChangeEnable", "setHighRefresh", "Landroid/view/View;", "view", "requestRefreshConfigOfView", "supportNativeRenderNode", "keyboardHeight", "filterDuplicateKeyboardOpenEvent", "currentPressureSensitivity", "minPressureSensitivity", "maxPressureSensitivity", "totalLevel", "getDevicePressureSensitivity", "commonDefaultPressureSensitivity", "getDefaultPressureSensitivity", "hasNotch", "setDisplayInNotch", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "Lcom/onyx/android/sdk/device/bean/NotchType;", "notchType", "callback", "getNotchRect", "notchWidth", "notchHeight", "Landroid/graphics/Rect;", "calculateNotchRect", "rectList", "getNotchType", "Lcom/onyx/android/sdk/device/bean/ScreenInfo;", "getScreenInfo", "isFreedomWindowMode", "isMultiWindowMode", "isFullScreen", "isSmallScreen", "Lcom/onyx/android/sdk/device/bean/WindowModeType;", "windowModeType", "getMultiWindowType", "multiWindowType", "getWindowTopPadding", "isMoreThanTwoFinger", "getPalmSizeFactor", "getBigPalmSizeFactor", "getDefaultPalmRejectEnable", "getDeviceSystem", "requestHighRefreshRate", "getDeviceTopPaddingHeight", "a", Constants.HASIDCALL_INDEX_SIG, "isStylusPress", Constants.BOOLEAN_VALUE_SIG, "setStylusPress", "(Z)V", "isLongPressActive", "setLongPressActive", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCommonBaseDevice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonBaseDevice.kt\ncom/onyx/android/sdk/device/CommonBaseDevice\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,522:1\n1855#2,2:523\n*S KotlinDebug\n*F\n+ 1 CommonBaseDevice.kt\ncom/onyx/android/sdk/device/CommonBaseDevice\n*L\n311#1:523,2\n*E\n"})
/* loaded from: classes7.dex */
public class CommonBaseDevice implements IDevice, INotch, IScreen, IVibrate, IPalmSize, IPenArgs {
    public static final float BIG_PALM_SIZE_FACTOR = 2.0f;
    public static final int DISPATCH_POINTER_COUNT = 3;

    @NotNull
    public static final String HARMONYOS_ANCO_FLAG = "anco";
    public static final float MAX_DYNAMIC_SUPPORT_REFRESH_VALUE = 121.0f;
    public static final float MAX_SUPPORT_REFRESH_VALUE = 121.0f;
    public static final float PALM_SIZE_FACTOR = 2.5f;

    @NotNull
    public static final String PLATFORM_ANDROID = "android";

    @NotNull
    public static final String PLATFORM_HARMONYOS_COMPAT = "harmonyos_compat";

    @NotNull
    public static final String PLATFORM_UNKNOWN = "unknown";
    public static final int SMALL_SCREEN_WIDTH = 360;
    public static final int STYLUS_KEY_DOUBLE_CLICK = 2;
    public static final int TWO_FINGERS = 2;

    /* renamed from: a, reason: from kotlin metadata */
    public boolean isStylusPress;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isLongPressActive;

    /* renamed from: f */
    public static final WindowInsets m32984f(CommonBaseDevice this$0, Activity activity, Function2 callback, View v, WindowInsets insets) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        DisplayCutout displayCutout = insets.getDisplayCutout();
        if (displayCutout == null) {
            callback.invoke(Boolean.FALSE, null);
            return insets;
        }
        List<Rect> boundingRects = displayCutout.getBoundingRects();
        Intrinsics.checkNotNullExpressionValue(boundingRects, "getBoundingRects(...)");
        NotchType notchType = this$0.getNotchType(activity, boundingRects);
        if (notchType == null) {
            callback.invoke(Boolean.FALSE, null);
            return insets;
        }
        callback.invoke(Boolean.TRUE, notchType);
        return insets;
    }

    /* renamed from: b */
    public final float m32985b(PointF downPointF, PointF upPointF) {
        if (upPointF == null || downPointF == null) {
            return -1.0f;
        }
        float f = upPointF.x - downPointF.x;
        float f2 = upPointF.y - downPointF.y;
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    /* renamed from: c */
    public final Display.Mode m32986c(Activity activity) {
        float[] alternativeRefreshRates;
        Display.Mode mode = activity.getWindowManager().getDefaultDisplay().getSupportedModes()[0];
        Display.Mode[] supportedModes = activity.getWindowManager().getDefaultDisplay().getSupportedModes();
        Intrinsics.checkNotNullExpressionValue(supportedModes, "getSupportedModes(...)");
        for (Display.Mode mode2 : supportedModes) {
            if (BuildKt.isApiLevelAbove(31)) {
                alternativeRefreshRates = mode2.getAlternativeRefreshRates();
                Intrinsics.checkNotNullExpressionValue(alternativeRefreshRates, "getAlternativeRefreshRates(...)");
                if (!(alternativeRefreshRates.length == 0)) {
                    if (isDynamicRefreshSupport(mode2.getRefreshRate())) {
                        if (isDynamicRefreshSupport(mode.getRefreshRate()) && mode2.getRefreshRate() <= mode.getRefreshRate()) {
                        }
                        mode = mode2;
                    }
                }
            }
            if (mode2.getRefreshRate() > mode.getRefreshRate()) {
                if (!isRefreshSupport(mode2.getRefreshRate())) {
                }
                mode = mode2;
            }
        }
        Intrinsics.checkNotNull(mode);
        return mode;
    }

    @Nullable
    public Rect calculateNotchRect(@NotNull Context context, int notchWidth, int notchHeight) {
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(context, "context");
        int screenWidth = ScreenUtils.getScreenWidth();
        int screenHeight = ScreenUtils.getScreenHeight();
        int i3 = 0;
        if (ScreenUtils.isPortrait()) {
            int i4 = (screenWidth - notchWidth) / 2;
            i = 0;
            i3 = i4;
            notchHeight = notchWidth + i4;
            i2 = notchHeight;
        } else {
            i = (screenHeight - notchWidth) / 2;
            i2 = notchWidth + i;
        }
        return new Rect(i3, i, notchHeight, i2);
    }

    /* renamed from: d */
    public final MultiWindowType m32987d(Activity activity) {
        MultiWindowType multiWindowType = MultiWindowType.MULTI_WINDOW_UN_KNOW;
        int screenWidth = ScreenUtils.getScreenWidth() / 2;
        int screenWidth2 = ScreenUtils.getScreenWidth() / 3;
        int i = screenWidth2 * 2;
        if (Math.abs(screenWidth - ScreenUtils.getAppScreenWidth()) <= SizeUtils.dp2px(20.0f)) {
            multiWindowType = MultiWindowType.MULTI_WINDOW_H_1_2;
        }
        if (Math.abs(screenWidth2 - ScreenUtils.getAppScreenWidth()) <= SizeUtils.dp2px(20.0f)) {
            multiWindowType = MultiWindowType.MULTI_WINDOW_H_1_3;
        }
        if (Math.abs(i - ScreenUtils.getAppScreenWidth()) <= SizeUtils.dp2px(20.0f)) {
            multiWindowType = MultiWindowType.MULTI_WINDOW_H_2_3;
        }
        int[] iArr = new int[2];
        activity.getWindow().getDecorView().getLocationOnScreen(iArr);
        multiWindowType.setLocation((iArr[0] <= BarUtils.getStatusBarHeight() ? 1 : 0) ^ 1);
        return multiWindowType;
    }

    @Override // com.onyx.android.sdk.device.IVibrate
    public void destroyStylusVibrate(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: e */
    public final MultiWindowType m32988e(Activity activity) {
        MultiWindowType multiWindowType = MultiWindowType.MULTI_WINDOW_UN_KNOW;
        int screenHeight = ScreenUtils.getScreenHeight() / 2;
        int screenHeight2 = ScreenUtils.getScreenHeight() / 3;
        int i = screenHeight2 * 2;
        if (Math.abs(screenHeight - ScreenUtils.getAppScreenHeight()) <= SizeUtils.dp2px(20.0f)) {
            multiWindowType = MultiWindowType.MULTI_WINDOW_V_1_2;
        }
        if (Math.abs(screenHeight2 - ScreenUtils.getAppScreenWidth()) <= SizeUtils.dp2px(20.0f)) {
            multiWindowType = MultiWindowType.MULTI_WINDOW_V_1_3;
        }
        if (Math.abs(i - ScreenUtils.getAppScreenWidth()) <= SizeUtils.dp2px(20.0f)) {
            multiWindowType = MultiWindowType.MULTI_WINDOW_V_2_3;
        }
        int[] iArr = new int[2];
        activity.getWindow().getDecorView().getLocationOnScreen(iArr);
        multiWindowType.setLocation(iArr[1] <= BarUtils.getStatusBarHeight() ? 2 : 3);
        return multiWindowType;
    }

    @Override // com.onyx.android.sdk.device.IVibrate
    public void enableVibrate(@NotNull Context context, boolean isEnable) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean filterByActionDown(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return event.getActionMasked() == 0;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean filterByCancel(@Nullable MotionEvent event, int pointerCount) {
        if (event == null) {
            return false;
        }
        if (event.getActionMasked() != 3) {
            return true;
        }
        LogUtils.m8164v(getClass(), "filter by cancel");
        return false;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean filterByDispatchPointerDown(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return event.getActionMasked() == 5;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean filterByDispatchTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return false;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean filterByTouchUp(@Nullable MotionEvent currentEvent) {
        return currentEvent != null && currentEvent.getActionMasked() == 1;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean filterByUpToDownDistance(@Nullable MotionEvent currentEvent, @Nullable PointF downPointF, @Nullable PointF upPointF, int pointerCount, int distanceThreshold) {
        return m32985b(downPointF, upPointF) < ((float) distanceThreshold);
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean filterByUpToDownTime(long downTimeMillisecond, long upTimeMillisecond, int pointerCount, long upDownTimeMin, long upDownTimeMax) {
        long j = upTimeMillisecond - downTimeMillisecond;
        return upDownTimeMin <= j && j < upDownTimeMax;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean filterDuplicateKeyboardOpenEvent(int keyboardHeight) {
        return true;
    }

    @Override // com.onyx.android.sdk.device.IPalmSize
    public float getBigPalmSizeFactor() {
        return 2.0f;
    }

    @Override // com.onyx.android.sdk.device.IPalmSize
    public boolean getDefaultPalmRejectEnable() {
        return false;
    }

    @Override // com.onyx.android.sdk.device.IPenArgs
    public float getDefaultPressureSensitivity(float commonDefaultPressureSensitivity) {
        return commonDefaultPressureSensitivity;
    }

    @Override // com.onyx.android.sdk.device.IPenArgs
    public float getDevicePressureSensitivity(float currentPressureSensitivity, float minPressureSensitivity, float maxPressureSensitivity, int totalLevel) {
        return currentPressureSensitivity;
    }

    @NotNull
    public String getDeviceSystem() {
        return "android";
    }

    public final int getDeviceTopPaddingHeight(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return getWindowTopPadding(getScreenInfo().getWindowModeType(), getMultiWindowType(activity, getScreenInfo().getWindowModeType()));
    }

    @Override // com.onyx.android.sdk.device.IScreen
    @NotNull
    public MultiWindowType getMultiWindowType(@NotNull Activity activity, @NotNull WindowModeType windowModeType) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(windowModeType, "windowModeType");
        if (windowModeType == WindowModeType.MULTI_WINDOW_MODE) {
            return ScreenUtils.getScreenWidth() == ScreenUtils.getAppScreenWidth() ? m32988e(activity) : m32987d(activity);
        }
        return MultiWindowType.MULTI_WINDOW_NONE;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public int getNavBarHeight(@NotNull AppCompatActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        int dimensionPixelSize = activity.getResources().getDimensionPixelSize(activity.getResources().getIdentifier("navigation_bar_height", "dimen", "android"));
        if (BarUtils.isNavBarVisible(activity)) {
            return dimensionPixelSize;
        }
        return 0;
    }

    @Override // com.onyx.android.sdk.device.INotch
    public void getNotchRect(@NotNull final Activity activity, @NotNull final Function2<? super Boolean, ? super NotchType, Unit> callback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!hasNotch(activity)) {
            callback.invoke(Boolean.FALSE, null);
        }
        View decorView = activity.getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        decorView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.sunia.HTREnginev2.z4e
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                WindowInsets m32984f;
                m32984f = CommonBaseDevice.m32984f(CommonBaseDevice.this, activity, callback, view, windowInsets);
                return m32984f;
            }
        });
    }

    @Nullable
    public final NotchType getNotchType(@NotNull Activity activity, @NotNull List<Rect> rectList) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(rectList, "rectList");
        Rect rect = new Rect();
        Window window = activity.getWindow();
        Intrinsics.checkNotNullExpressionValue(window, "getWindow(...)");
        window.getDecorView().getWindowVisibleDisplayFrame(rect);
        Rect rect2 = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, 0, 0);
        for (Rect rect3 : rectList) {
            rect2.set(Math.min(rect2.left, rect3.left), Math.min(rect2.top, rect3.top), Math.max(rect2.right, rect3.right), Math.max(rect2.bottom, rect3.bottom));
        }
        if (!rect.contains(rect2)) {
            return null;
        }
        Rect rect4 = new Rect(0, 0, ScreenUtils.getScreenWidth(), ScreenUtils.getScreenHeight());
        int width = rect4.width() / 2;
        int height = rect4.height() / 2;
        int width2 = rect2.left + (rect2.width() / 2);
        int height2 = rect2.top + (rect2.height() / 2);
        if (Math.abs(width2 - width) <= rect2.width() / 2 && rect2.top < rect2.height()) {
            NotchType notchType = NotchType.MIDDLE_TOP;
            notchType.getPositionOffset().y = rect2.bottom;
            return notchType;
        }
        if (Math.abs(height2 - height) <= rect2.height() / 2) {
            if (rect2.left < rect2.width()) {
                NotchType notchType2 = NotchType.MIDDLE_LEFT;
                notchType2.getPositionOffset().x = rect2.right;
                return notchType2;
            }
            if (rect2.right > rect4.right - rect2.width()) {
                NotchType notchType3 = NotchType.MIDDLE_RIGHT;
                notchType3.getPositionOffset().x = rect4.right - rect2.left;
                return notchType3;
            }
        }
        if (rect2.left < rect2.width() / 2 && rect2.top < rect2.height() / 2) {
            NotchType notchType4 = NotchType.LEFT_TOP;
            notchType4.getPositionOffset().x = rect2.right;
            return notchType4;
        }
        if (rect2.right <= rect4.right - (rect2.width() / 2) || rect2.top >= rect2.height() / 2) {
            return null;
        }
        NotchType notchType5 = NotchType.RIGHT_TOP;
        notchType5.getPositionOffset().x = rect2.left;
        return notchType5;
    }

    @Override // com.onyx.android.sdk.device.IPalmSize
    public float getPalmSizeFactor() {
        return 2.5f;
    }

    @Override // com.onyx.android.sdk.device.IScreen
    @NotNull
    public ScreenInfo getScreenInfo() {
        ScreenInfo screenInfo = new ScreenInfo();
        int appScreenWidth = ScreenUtils.getAppScreenWidth();
        float screenDensity = ScreenUtils.getScreenDensity();
        WindowModeType windowModeType = isFullScreen() ? WindowModeType.FULL_SCREEN : isFreedomWindowMode() ? WindowModeType.FREEDOM_MODE : isMultiWindowMode() ? WindowModeType.MULTI_WINDOW_MODE : WindowModeType.FULL_SCREEN;
        ScreenDisplayType screenDisplayType = com.blankj.utilcode.util.DeviceUtils.isTablet() ? ScreenDisplayType.PAD : ScreenDisplayType.PHONE;
        screenInfo.setAppScreenDp(appScreenWidth / screenDensity);
        screenInfo.setWindowModeType(windowModeType);
        screenInfo.setScreenDisplayType(screenDisplayType);
        return screenInfo;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005f A[EDGE_INSN: B:12:0x005f->B:13:0x005f BREAK  A[LOOP:0: B:2:0x000b->B:28:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[LOOP:0: B:2:0x000b->B:28:?, LOOP_END, SYNTHETIC] */
    @Override // com.onyx.android.sdk.device.IDevice
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.content.pm.ResolveInfo getTranslateInfo(@org.jetbrains.annotations.NotNull java.util.List<? extends android.content.pm.ResolveInfo> r9) {
        /*
            r8 = this;
            java.lang.String r8 = "list"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r8)
            java.lang.Iterable r9 = (java.lang.Iterable) r9
            java.util.Iterator r8 = r9.iterator()
        Lb:
            boolean r0 = r8.hasNext()
            r1 = 0
            r2 = 1
            java.lang.String r3 = "name"
            if (r0 == 0) goto L5e
            java.lang.Object r0 = r8.next()
            r4 = r0
            android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4
            android.content.pm.ActivityInfo r5 = r4.activityInfo
            java.lang.String r5 = r5.name
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r3)
            java.lang.String r6 = "translate"
            boolean r5 = kotlin.text.StringsKt.contains(r5, r6, r2)
            r6 = 0
            if (r5 != 0) goto L4a
            android.content.pm.ActivityInfo r5 = r4.activityInfo
            java.lang.String r5 = r5.name
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r3)
            java.lang.String r7 = "translation"
            boolean r5 = kotlin.text.StringsKt.contains(r5, r7, r2)
            if (r5 != 0) goto L4a
            android.content.pm.ActivityInfo r5 = r4.activityInfo
            java.lang.String r5 = r5.name
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r3)
            java.lang.String r7 = "translator"
            boolean r5 = kotlin.text.StringsKt.contains(r5, r7, r2)
            if (r5 == 0) goto L5b
        L4a:
            android.content.pm.ActivityInfo r4 = r4.activityInfo
            java.lang.String r4 = r4.name
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r3)
            java.lang.String r5 = "browser"
            r7 = 2
            boolean r4 = kotlin.text.StringsKt.contains$default(r4, r5, r6, r7, r1)
            if (r4 != 0) goto L5b
            r6 = r2
        L5b:
            if (r6 == 0) goto Lb
            goto L5f
        L5e:
            r0 = r1
        L5f:
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0
            if (r0 != 0) goto L87
            java.util.Iterator r8 = r9.iterator()
        L67:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto L84
            java.lang.Object r9 = r8.next()
            r0 = r9
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0
            android.content.pm.ActivityInfo r0 = r0.activityInfo
            java.lang.String r0 = r0.name
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r3)
            java.lang.String r4 = "dict"
            boolean r0 = kotlin.text.StringsKt.contains(r0, r4, r2)
            if (r0 == 0) goto L67
            r1 = r9
        L84:
            r0 = r1
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0
        L87:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.device.CommonBaseDevice.getTranslateInfo(java.util.List):android.content.pm.ResolveInfo");
    }

    @Override // com.onyx.android.sdk.device.IScreen
    public int getWindowTopPadding(@NotNull WindowModeType windowModeType, @NotNull MultiWindowType multiWindowType) {
        Intrinsics.checkNotNullParameter(windowModeType, "windowModeType");
        Intrinsics.checkNotNullParameter(multiWindowType, "multiWindowType");
        return SizeUtils.dp2px(4.0f);
    }

    @Override // com.onyx.android.sdk.device.INotch
    public boolean hasNotch(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return !BuildKt.isApiLevelBelow(26);
    }

    @Override // com.onyx.android.sdk.device.IVibrate
    public void initStylusVibrate(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean isCheckScaleSpanEnable() {
        return IDevice.DefaultImpls.isCheckScaleSpanEnable(this);
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean isDynamicRefreshSupport(float refresh) {
        return refresh <= 121.0f;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean isEraserPressed(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        return motionEvent.getToolType(motionEvent.getActionIndex()) == 4;
    }

    @Override // com.onyx.android.sdk.device.IScreen
    public boolean isFreedomWindowMode() {
        boolean contains$default;
        String configuration = Utils.getApp().getApplicationContext().getResources().getConfiguration().toString();
        Intrinsics.checkNotNullExpressionValue(configuration, "toString(...)");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) configuration, (CharSequence) "mWindowingMode=freeform", false, 2, (Object) null);
        return contains$default;
    }

    @Override // com.onyx.android.sdk.device.IScreen
    public boolean isFullScreen() {
        boolean contains$default;
        String configuration = Utils.getApp().getApplicationContext().getResources().getConfiguration().toString();
        Intrinsics.checkNotNullExpressionValue(configuration, "toString(...)");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) configuration, (CharSequence) "mWindowingMode=fullscreen", false, 2, (Object) null);
        return contains$default;
    }

    /* renamed from: isLongPressActive, reason: from getter */
    public final boolean getIsLongPressActive() {
        return this.isLongPressActive;
    }

    public final boolean isMoreThanTwoFinger(int pointerCount) {
        return pointerCount > 2;
    }

    @Override // com.onyx.android.sdk.device.IScreen
    public boolean isMultiWindowMode() {
        boolean contains$default;
        String configuration = Utils.getApp().getApplicationContext().getResources().getConfiguration().toString();
        Intrinsics.checkNotNullExpressionValue(configuration, "toString(...)");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) configuration, (CharSequence) "mWindowingMode=multi-window", false, 2, (Object) null);
        return contains$default;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean isPressed(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        if (motionEvent.getToolType(motionEvent.getActionIndex()) != 2) {
            return false;
        }
        int action = motionEvent.getAction();
        return action == 0 || action == 2 || action == 5;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean isRefreshModeChangeEnable() {
        return true;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean isRefreshSupport(float refresh) {
        return refresh <= 121.0f;
    }

    @Override // com.onyx.android.sdk.device.IScreen
    public boolean isSmallScreen(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        IScreen screenDevice = DeviceFactory.INSTANCE.getScreenDevice();
        ScreenInfo screenInfo = screenDevice.getScreenInfo();
        MultiWindowType multiWindowType = screenDevice.getMultiWindowType(activity, screenInfo.getWindowModeType());
        return (screenInfo.getWindowModeType() == WindowModeType.FREEDOM_MODE && screenInfo.getAppScreenDp() < 360.0f) || screenInfo.getScreenDisplayType() == ScreenDisplayType.PHONE || multiWindowType == MultiWindowType.MULTI_WINDOW_H_1_3 || multiWindowType == MultiWindowType.MULTI_WINDOW_H_1_2;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean isStylusLongPressInterrupt(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        return motionEvent.getAction() == 0 && (motionEvent.getButtonState() == 32 || motionEvent.getButtonState() == 64);
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean isStylusLongPressRelease(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        return motionEvent.getAction() == 1 && (motionEvent.getButtonState() == 32 || motionEvent.getButtonState() == 64);
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean isStylusLongPressed(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        int action = motionEvent.getAction();
        if (action == 0 || action == 2) {
            this.isStylusPress = motionEvent.getButtonState() == 32 || motionEvent.getButtonState() == 64;
        }
        return this.isStylusPress;
    }

    /* renamed from: isStylusPress, reason: from getter */
    public final boolean getIsStylusPress() {
        return this.isStylusPress;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public int normalizeTouchAction(@NotNull MotionEvent motionEvent) {
        return IDevice.DefaultImpls.normalizeTouchAction(this, motionEvent);
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public void registerStylusEngine(@NotNull Context context, @NotNull Function1<? super String, Boolean> callBack) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callBack, "callBack");
    }

    public final void requestHighRefreshRate(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (BuildKt.isApiLevelAbove(35)) {
            Context context = view.getContext();
            if (context instanceof Activity) {
                view.setRequestedFrameRate(m32986c((Activity) context).getRefreshRate());
            }
        }
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public void requestRefreshConfigOfView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @Override // com.onyx.android.sdk.device.INotch
    public void setDisplayInNotch(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.layoutInDisplayCutoutMode = 1;
        window.setAttributes(attributes);
        View decorView = window.getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        decorView.setSystemUiVisibility(1280);
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public void setHighRefresh(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (isRefreshModeChangeEnable()) {
            Display.Mode m32986c = m32986c(activity);
            activity.getWindow().getAttributes().preferredDisplayModeId = m32986c.getModeId();
        }
    }

    public final void setLongPressActive(boolean z) {
        this.isLongPressActive = z;
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public void setStylusLongPressActive(boolean isActive) {
        this.isLongPressActive = isActive;
    }

    public final void setStylusPress(boolean z) {
        this.isStylusPress = z;
    }

    @Override // com.onyx.android.sdk.device.IVibrate
    public void startVibrate(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public boolean supportNativeRenderNode() {
        if (BuildKt.isApiLevelBelow(29)) {
            return false;
        }
        return IDevice.DefaultImpls.supportNativeRenderNode(this);
    }

    @Override // com.onyx.android.sdk.device.IDevice
    public void unRegisterStylusEngine(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
