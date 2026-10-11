package com.onyx.android.sdk.device;

import android.app.Activity;
import android.graphics.Rect;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.widget.ActivityChooserModel;
import com.blankj.utilcode.util.Utils;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.device.bean.NotchType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.C14063lv;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.BooleanCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u000b\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016JJ\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u000228\u0010\r\u001a4\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0005\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00060\bH\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0014\u001a\u00020\u0013H\u0016J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0017\u001a\u00020\u0006H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010\u0019\u001a\u00020\u0013H\u0002R\u0016\u0010\u001c\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/device/HuaWeiDevice;", "Lcom/onyx/android/sdk/device/CommonBaseDevice;", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "", "hasNotch", "", "setDisplayInNotch", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "Lcom/onyx/android/sdk/device/bean/NotchType;", "notchType", "callback", "getNotchRect", "isFreedomWindowMode", "isMultiWindowMode", "", "getPalmSizeFactor", "", "getDeviceSystem", "", "i", C6998g.f39679a, "j", C6999h.f39688c, "c", Constants.STRING_SIG, "system", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HuaWeiDevice extends CommonBaseDevice {
    public static final int FLAG_NOTCH_SUPPORT = 65536;
    public static final float HUAWEI_PALM_SIZE_FACTOR = 2.0f;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String system;

    public HuaWeiDevice() {
        m32989g();
        this.system = "unknown";
    }

    /* renamed from: g */
    public final void m32989g() {
        C14063lv.m55522f(GlobalScope.INSTANCE, Dispatchers.getIO(), null, new HuaWeiDevice$ensureDeviceSystem$1(this, null), 2, null);
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice
    @NotNull
    /* renamed from: getDeviceSystem, reason: from getter */
    public String getSystem() {
        return this.system;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.INotch
    public void getNotchRect(@NotNull Activity activity, @NotNull Function2<? super Boolean, ? super NotchType, Unit> callback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!hasNotch(activity)) {
            callback.invoke(Boolean.FALSE, null);
            return;
        }
        try {
            int[] m32991i = m32991i(activity);
            if (m32991i == null) {
                callback.invoke(Boolean.FALSE, null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            Rect calculateNotchRect = calculateNotchRect(activity, m32991i[0], m32991i[1]);
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
        } catch (Throwable unused) {
            callback.invoke(Boolean.FALSE, null);
        }
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IPalmSize
    public float getPalmSizeFactor() {
        return 2.0f;
    }

    /* renamed from: h */
    public final String m32990h() {
        try {
            String successMsg = ShellUtils.INSTANCE.execCmd("getprop", false).getSuccessMsg();
            if (successMsg == null) {
                successMsg = "";
            }
            String lowerCase = successMsg.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            return lowerCase;
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.INotch
    public boolean hasNotch(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Class<?> loadClass = activity.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
        ReflectUtils reflectUtils = ReflectUtils.INSTANCE;
        Object invokeMethodSafely = reflectUtils.invokeMethodSafely(reflectUtils.getMethodSafely(loadClass, "hasNotchInScreen", new Class[0]), loadClass, new Object[0]);
        if (invokeMethodSafely == null) {
            invokeMethodSafely = BooleanCompanionObject.INSTANCE;
        }
        Intrinsics.checkNotNull(invokeMethodSafely, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) invokeMethodSafely).booleanValue();
    }

    /* renamed from: i */
    public final int[] m32991i(Activity activity) {
        Class<?> loadClass = activity.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
        ReflectUtils reflectUtils = ReflectUtils.INSTANCE;
        return (int[]) reflectUtils.invokeMethodSafely(reflectUtils.getMethodSafely(loadClass, "getNotchSize", new Class[0]), loadClass, new Object[0]);
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IScreen
    public boolean isFreedomWindowMode() {
        boolean contains$default;
        String configuration = Utils.getApp().getResources().getConfiguration().toString();
        Intrinsics.checkNotNullExpressionValue(configuration, "toString(...)");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) configuration, (CharSequence) "mWindowingMode=hwMultiwindow-freeform", false, 2, (Object) null);
        return contains$default;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IScreen
    public boolean isMultiWindowMode() {
        boolean contains$default;
        String configuration = Utils.getApp().getResources().getConfiguration().toString();
        Intrinsics.checkNotNullExpressionValue(configuration, "toString(...)");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) configuration, (CharSequence) "mWindowingMode=hwMultiwindow-primary", false, 2, (Object) null);
        return contains$default;
    }

    /* renamed from: j */
    public final boolean m32992j() {
        boolean contains$default;
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) m32990h(), (CharSequence) CommonBaseDevice.HARMONYOS_ANCO_FLAG, false, 2, (Object) null);
        return contains$default;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.INotch
    public void setDisplayInNotch(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        Class<?> cls = Class.forName("com.huawei.android.view.LayoutParamsEx");
        ReflectUtils reflectUtils = ReflectUtils.INSTANCE;
        reflectUtils.invokeMethodSafely(reflectUtils.getMethodSafely(cls, "addHwFlags", Integer.TYPE), reflectUtils.newInstance(reflectUtils.getDeclaredConstructorSafely(cls, new Class[0]), attributes), 65536);
        window.getWindowManager().updateViewLayout(window.getDecorView(), window.getDecorView().getLayoutParams());
    }
}
