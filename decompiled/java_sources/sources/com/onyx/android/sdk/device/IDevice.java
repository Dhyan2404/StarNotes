package com.onyx.android.sdk.device;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ResolveInfo;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001a\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u000b\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u0005H&J6\u0010\r\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\bH&J0\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0014H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\bH&J\u0010\u0010\u001a\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001cH&J\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0 H&J\b\u0010!\u001a\u00020\u0003H\u0016J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$H&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005H&J\u0010\u0010'\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005H&J\b\u0010(\u001a\u00020\u0003H&J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$H&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005H&J\u0010\u0010+\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005H&J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005H&J\u0010\u0010-\u001a\u00020\b2\u0006\u0010&\u001a\u00020\u0005H\u0016J$\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0012\u00102\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u000303H&J\u0010\u00105\u001a\u00020/2\u0006\u00106\u001a\u000207H&J\u0010\u00108\u001a\u00020/2\u0006\u0010\u001b\u001a\u000209H&J\u0010\u0010:\u001a\u00020/2\u0006\u0010;\u001a\u00020\u0003H&J\b\u0010<\u001a\u00020\u0003H\u0016J\u0010\u0010=\u001a\u00020/2\u0006\u00100\u001a\u000201H&¨\u0006>"}, m61528d2 = {"Lcom/onyx/android/sdk/device/IDevice;", "", "filterByActionDown", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "filterByCancel", "pointerCount", "", "filterByDispatchPointerDown", "filterByDispatchTouchEvent", "filterByTouchUp", "currentEvent", "filterByUpToDownDistance", "downPointF", "Landroid/graphics/PointF;", "upPointF", "distanceThreshold", "filterByUpToDownTime", "downTimeMillisecond", "", "upTimeMillisecond", "upDownTimeMin", "upDownTimeMax", "filterDuplicateKeyboardOpenEvent", "keyboardHeight", "getNavBarHeight", ActivityChooserModel.f1429r, "Landroidx/appcompat/app/AppCompatActivity;", "getTranslateInfo", "Landroid/content/pm/ResolveInfo;", "list", "", "isCheckScaleSpanEnable", "isDynamicRefreshSupport", "refresh", "", "isEraserPressed", "motionEvent", "isPressed", "isRefreshModeChangeEnable", "isRefreshSupport", "isStylusLongPressInterrupt", "isStylusLongPressRelease", "isStylusLongPressed", "normalizeTouchAction", "registerStylusEngine", "", "context", "Landroid/content/Context;", "callBack", "Lkotlin/Function1;", "", "requestRefreshConfigOfView", "view", "Landroid/view/View;", "setHighRefresh", "Landroid/app/Activity;", "setStylusLongPressActive", "isActive", "supportNativeRenderNode", "unRegisterStylusEngine", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IDevice {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static boolean isCheckScaleSpanEnable(@NotNull IDevice iDevice) {
            return false;
        }

        public static int normalizeTouchAction(@NotNull IDevice iDevice, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
            return motionEvent.getAction();
        }

        public static boolean supportNativeRenderNode(@NotNull IDevice iDevice) {
            return true;
        }
    }

    boolean filterByActionDown(@NotNull MotionEvent event);

    boolean filterByCancel(@Nullable MotionEvent event, int pointerCount);

    boolean filterByDispatchPointerDown(@NotNull MotionEvent event);

    boolean filterByDispatchTouchEvent(@NotNull MotionEvent event);

    boolean filterByTouchUp(@Nullable MotionEvent currentEvent);

    boolean filterByUpToDownDistance(@Nullable MotionEvent currentEvent, @Nullable PointF downPointF, @Nullable PointF upPointF, int pointerCount, int distanceThreshold);

    boolean filterByUpToDownTime(long downTimeMillisecond, long upTimeMillisecond, int pointerCount, long upDownTimeMin, long upDownTimeMax);

    boolean filterDuplicateKeyboardOpenEvent(int keyboardHeight);

    int getNavBarHeight(@NotNull AppCompatActivity activity);

    @Nullable
    ResolveInfo getTranslateInfo(@NotNull List<? extends ResolveInfo> list);

    boolean isCheckScaleSpanEnable();

    boolean isDynamicRefreshSupport(float refresh);

    boolean isEraserPressed(@NotNull MotionEvent motionEvent);

    boolean isPressed(@NotNull MotionEvent motionEvent);

    boolean isRefreshModeChangeEnable();

    boolean isRefreshSupport(float refresh);

    boolean isStylusLongPressInterrupt(@NotNull MotionEvent motionEvent);

    boolean isStylusLongPressRelease(@NotNull MotionEvent motionEvent);

    boolean isStylusLongPressed(@NotNull MotionEvent motionEvent);

    int normalizeTouchAction(@NotNull MotionEvent motionEvent);

    void registerStylusEngine(@NotNull Context context, @NotNull Function1<? super String, Boolean> callBack);

    void requestRefreshConfigOfView(@NotNull View view);

    void setHighRefresh(@NotNull Activity activity);

    void setStylusLongPressActive(boolean isActive);

    boolean supportNativeRenderNode();

    void unRegisterStylusEngine(@NotNull Context context);
}
