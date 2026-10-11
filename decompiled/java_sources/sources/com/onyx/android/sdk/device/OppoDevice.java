package com.onyx.android.sdk.device;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ScreenUtils;
import com.onyx.android.sdk.device.OppoDevice;
import com.onyx.android.sdk.device.bean.NotchType;
import com.oplus.ocs.base.common.ConnectionResult;
import com.oplus.ocs.base.common.api.OnConnectionFailedListener;
import com.oplus.ocs.base.common.api.OnConnectionSucceedListener;
import com.oplus.ocs.ipemanager.sdk.PencilManager;
import com.oplus.ocs.ipemanager.sdk.PencilManagerUnit;
import com.oplus.ocs.ipemanager.sdk.PencilManagerUnitClient;
import com.oplus.ocs.ipemanager.sdk.Vibration;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.C14063lv;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0007*\u00016\b\u0016\u0018\u0000 ;2\u00020\u0001:\u0001;B\u0007¢\u0006\u0004\b9\u0010:J\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J6\u0010\r\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004H\u0016J0\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eH\u0016J\u0012\u0010\u0014\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016JJ\u0010 \u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u001628\u0010\u001f\u001a4\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u0018\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u001e0\u0019H\u0016J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020!H\u0016J\u0010\u0010$\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020!H\u0016J\u0018\u0010&\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020!2\u0006\u0010%\u001a\u00020\u0006H\u0016J\u0010\u0010'\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020!H\u0016J\u0010\u0010*\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(H\u0016J\u0010\u0010+\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\b\u0010-\u001a\u00020,H\u0003R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u0010\u001f\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/device/OppoDevice;", "Lcom/onyx/android/sdk/device/CommonBaseDevice;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "pointerCount", "", "filterByCancel", "currentEvent", "Landroid/graphics/PointF;", "downPointF", "upPointF", "distanceThreshold", "filterByUpToDownDistance", "", "downTimeMillisecond", "upTimeMillisecond", "upDownTimeMin", "upDownTimeMax", "filterByUpToDownTime", "filterByTouchUp", "filterByDispatchTouchEvent", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "hasNotch", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "Lcom/onyx/android/sdk/device/bean/NotchType;", "notchType", "", "callback", "getNotchRect", "Landroid/content/Context;", "context", "initStylusVibrate", "destroyStylusVibrate", "isEnable", "enableVibrate", "startVibrate", "", "refresh", "isDynamicRefreshSupport", "setHighRefresh", "", "i", "Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;", "c", "Lcom/oplus/ocs/ipemanager/sdk/PencilManagerUnitClient;", "pencilManagerUnitClient", "Lcom/oplus/ocs/ipemanager/sdk/PencilManager;", "d", "Lcom/oplus/ocs/ipemanager/sdk/PencilManager;", "pencilManager", "com/onyx/android/sdk/device/OppoDevice$callback$1", "e", "Lcom/onyx/android/sdk/device/OppoDevice$callback$1;", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOppoDevice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OppoDevice.kt\ncom/onyx/android/sdk/device/OppoDevice\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,232:1\n731#2,9:233\n731#2,9:244\n731#2,9:255\n37#3,2:242\n37#3,2:253\n37#3,2:264\n*S KotlinDebug\n*F\n+ 1 OppoDevice.kt\ncom/onyx/android/sdk/device/OppoDevice\n*L\n112#1:233,9\n115#1:244,9\n119#1:255,9\n113#1:242,2\n116#1:253,2\n120#1:264,2\n*E\n"})
/* loaded from: classes7.dex */
public class OppoDevice extends CommonBaseDevice {
    public static final float OPPO_MAX_DYNAMIC_SUPPORT_REFRESH_VALUE = 91.0f;
    public static final float OPPO_PREFERRED_REFRESH_RATE = 120.0f;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public PencilManagerUnitClient pencilManagerUnitClient;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public PencilManager pencilManager;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final OppoDevice$callback$1 callback = new PencilManager.Callback() { // from class: com.onyx.android.sdk.device.OppoDevice$callback$1
        @Override // com.oplus.ocs.ipemanager.sdk.PencilManager.Callback
        public void onConnectionChanged(int p0) {
        }

        @Override // com.oplus.ocs.ipemanager.sdk.PencilManager.Callback
        public void onDemoModeEnableChange(boolean enable) {
        }

        @Override // com.oplus.ocs.ipemanager.sdk.PencilManager.Callback
        public void onFunctionFeedbackStateChange(boolean enable) {
        }

        @Override // com.oplus.ocs.ipemanager.sdk.PencilManager.Callback
        public void onReleased(int p0) {
            PencilManagerUnitClient pencilManagerUnitClient;
            if (p0 == -1) {
                pencilManagerUnitClient = OppoDevice.this.pencilManagerUnitClient;
                if (pencilManagerUnitClient != null) {
                    pencilManagerUnitClient.release();
                }
                OppoDevice.this.pencilManagerUnitClient = null;
            }
        }

        @Override // com.oplus.ocs.ipemanager.sdk.PencilManager.Callback
        public void onVibrationSwitchStateChange(boolean p0) {
        }
    };

    /* renamed from: j */
    public static final void m32995j(OppoDevice this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PencilManager pencilManager = PencilManager.getInstance();
        this$0.pencilManager = pencilManager;
        if (pencilManager != null) {
            pencilManager.setVibrationType(Vibration.BALLPEN);
        }
    }

    /* renamed from: k */
    public static final void m32996k(OppoDevice this$0, ConnectionResult connectionResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.pencilManager = null;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IVibrate
    public void destroyStylusVibrate(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        PencilManagerUnitClient pencilManagerUnitClient = this.pencilManagerUnitClient;
        if (pencilManagerUnitClient != null) {
            pencilManagerUnitClient.release();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IVibrate
    public void enableVibrate(@NotNull Context context, boolean isEnable) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (context instanceof AppCompatActivity) {
            C14063lv.m55522f(LifecycleOwnerKt.getLifecycleScope((LifecycleOwner) context), Dispatchers.getIO(), null, new OppoDevice$enableVibrate$1(isEnable, this, null), 2, null);
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
            LogUtils.m8164v(getClass(), "filter by up to down time");
        }
        return z;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.INotch
    public void getNotchRect(@NotNull Activity activity, @NotNull Function2<? super Boolean, ? super NotchType, Unit> callback) {
        List emptyList;
        List emptyList2;
        List emptyList3;
        int intValue;
        int intValue2;
        int intValue3;
        int i;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!hasNotch(activity)) {
            callback.invoke(Boolean.FALSE, null);
            return;
        }
        try {
            String m32997i = m32997i();
            if (TextUtils.isEmpty(m32997i)) {
                return;
            }
            List<String> split = new Regex(":").split(m32997i, 0);
            if (!split.isEmpty()) {
                ListIterator<String> listIterator = split.listIterator(split.size());
                while (listIterator.hasPrevious()) {
                    if (!(listIterator.previous().length() == 0)) {
                        emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            String[] strArr = (String[]) emptyList.toArray(new String[0]);
            List<String> split2 = new Regex(",").split(strArr[0], 0);
            if (!split2.isEmpty()) {
                ListIterator<String> listIterator2 = split2.listIterator(split2.size());
                while (listIterator2.hasPrevious()) {
                    if (!(listIterator2.previous().length() == 0)) {
                        emptyList2 = CollectionsKt___CollectionsKt.take(split2, listIterator2.nextIndex() + 1);
                        break;
                    }
                }
            }
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            String[] strArr2 = (String[]) emptyList2.toArray(new String[0]);
            List<String> split3 = new Regex(",").split(strArr[1], 0);
            if (!split3.isEmpty()) {
                ListIterator<String> listIterator3 = split3.listIterator(split3.size());
                while (listIterator3.hasPrevious()) {
                    if (!(listIterator3.previous().length() == 0)) {
                        emptyList3 = CollectionsKt___CollectionsKt.take(split3, listIterator3.nextIndex() + 1);
                        break;
                    }
                }
            }
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            String[] strArr3 = (String[]) emptyList3.toArray(new String[0]);
            if (ScreenUtils.isPortrait()) {
                Integer valueOf = Integer.valueOf(strArr2[0]);
                Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
                intValue = valueOf.intValue();
                Integer valueOf2 = Integer.valueOf(strArr2[1]);
                Intrinsics.checkNotNullExpressionValue(valueOf2, "valueOf(...)");
                intValue2 = valueOf2.intValue();
                Integer valueOf3 = Integer.valueOf(strArr3[0]);
                Intrinsics.checkNotNullExpressionValue(valueOf3, "valueOf(...)");
                i = valueOf3.intValue();
                Integer valueOf4 = Integer.valueOf(strArr3[1]);
                Intrinsics.checkNotNullExpressionValue(valueOf4, "valueOf(...)");
                intValue3 = valueOf4.intValue();
            } else {
                Integer valueOf5 = Integer.valueOf(strArr2[1]);
                Intrinsics.checkNotNullExpressionValue(valueOf5, "valueOf(...)");
                intValue = valueOf5.intValue();
                Integer valueOf6 = Integer.valueOf(strArr2[0]);
                Intrinsics.checkNotNullExpressionValue(valueOf6, "valueOf(...)");
                intValue2 = valueOf6.intValue();
                Integer valueOf7 = Integer.valueOf(strArr3[1]);
                Intrinsics.checkNotNullExpressionValue(valueOf7, "valueOf(...)");
                int intValue4 = valueOf7.intValue();
                Integer valueOf8 = Integer.valueOf(strArr3[0]);
                Intrinsics.checkNotNullExpressionValue(valueOf8, "valueOf(...)");
                intValue3 = valueOf8.intValue();
                i = intValue4;
            }
            Rect rect = new Rect(intValue, intValue2, i, intValue3);
            ArrayList arrayList = new ArrayList();
            arrayList.add(rect);
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

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.INotch
    public boolean hasNotch(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return activity.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: i */
    public final String m32997i() {
        Class<?> cls = Class.forName("android.os.SystemProperties");
        ReflectUtils reflectUtils = ReflectUtils.INSTANCE;
        Object invokeMethodSafely = reflectUtils.invokeMethodSafely(reflectUtils.getMethodSafely(cls, "get", String.class), cls.newInstance(), "ro.oppo.screen.heteromorphism");
        if (invokeMethodSafely == null) {
            invokeMethodSafely = "";
        }
        return (String) invokeMethodSafely;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IVibrate
    public void initStylusVibrate(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        PencilManagerUnitClient pencilManagerClient = PencilManagerUnit.getPencilManagerClient(context.getApplicationContext());
        this.pencilManagerUnitClient = pencilManagerClient;
        if (pencilManagerClient != null) {
            pencilManagerClient.setPencilCallback(this.callback);
        }
        PencilManagerUnitClient pencilManagerUnitClient = this.pencilManagerUnitClient;
        if (pencilManagerUnitClient != null) {
            pencilManagerUnitClient.addOnConnectionSucceedListener(new OnConnectionSucceedListener() { // from class: com.sunia.HTREnginev2.ihk
                @Override // com.oplus.ocs.base.common.api.OnConnectionSucceedListener
                public final void onConnectionSucceed() {
                    OppoDevice.m32995j(OppoDevice.this);
                }
            });
        }
        PencilManagerUnitClient pencilManagerUnitClient2 = this.pencilManagerUnitClient;
        if (pencilManagerUnitClient2 != null) {
            pencilManagerUnitClient2.addOnConnectionFailedListener(new OnConnectionFailedListener() { // from class: com.sunia.HTREnginev2.jhk
                @Override // com.oplus.ocs.base.common.api.OnConnectionFailedListener
                public final void onConnectionFailed(ConnectionResult connectionResult) {
                    OppoDevice.m32996k(OppoDevice.this, connectionResult);
                }
            });
        }
        C14063lv.m55522f(GlobalScope.INSTANCE, Dispatchers.getIO(), null, new OppoDevice$initStylusVibrate$3(this, null), 2, null);
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public boolean isDynamicRefreshSupport(float refresh) {
        return refresh <= 91.0f;
    }

    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IDevice
    public void setHighRefresh(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        activity.getWindow().getAttributes().preferredRefreshRate = 120.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.android.sdk.device.CommonBaseDevice, com.onyx.android.sdk.device.IVibrate
    public void startVibrate(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        PencilManager pencilManager = this.pencilManager;
        boolean z = false;
        if (pencilManager != null && pencilManager.isFunctionFeedbackEnable()) {
            z = true;
        }
        if (z && (context instanceof AppCompatActivity)) {
            C14063lv.m55522f(LifecycleOwnerKt.getLifecycleScope((LifecycleOwner) context), Dispatchers.getIO(), null, new OppoDevice$startVibrate$1(this, null), 2, null);
        }
    }
}
