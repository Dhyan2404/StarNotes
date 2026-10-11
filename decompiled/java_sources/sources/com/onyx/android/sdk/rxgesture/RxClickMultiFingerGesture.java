package com.onyx.android.sdk.rxgesture;

import android.graphics.PointF;
import android.view.MotionEvent;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.device.IDevice;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxClickMultiFingerGesture;", "Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "gestureContext", "", "filterByCancel", "filterByMultiTouch", "filterByUpToDownDistance", "filterByUpToDownTime", "filterByTouchUp", "", "getUpToDownTime", "onMultiFingerClicked", "filterByPalm", "Lcom/onyx/android/sdk/device/IDevice;", C6999h.f39688c, "Lcom/onyx/android/sdk/device/IDevice;", "multiClickFilter", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/device/IDevice;)V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RxClickMultiFingerGesture extends RxBaseClickMultiFingerGesture {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public IDevice multiClickFilter;

    public RxClickMultiFingerGesture(@NotNull IDevice multiClickFilter) {
        Intrinsics.checkNotNullParameter(multiClickFilter, "multiClickFilter");
        this.multiClickFilter = multiClickFilter;
    }

    @Override // com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture
    public boolean filterByCancel(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        return this.multiClickFilter.filterByCancel(gestureContext.getCurMotionEvent(), gestureContext.getPointerCount());
    }

    @Override // com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture
    public boolean filterByMultiTouch(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        boolean isHasMultiplePoint = gestureContext.getIsHasMultiplePoint();
        if (!isHasMultiplePoint) {
            RxGestureLog.INSTANCE.m35974v(RxClickMultiFingerGesture.class, "filter by multi touch");
        }
        return isHasMultiplePoint;
    }

    @Override // com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture
    public boolean filterByPalm(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        return !gestureContext.getIsBigPalmPressed();
    }

    @Override // com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture
    public boolean filterByTouchUp(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        return this.multiClickFilter.filterByTouchUp(gestureContext.getCurMotionEvent());
    }

    @Override // com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture
    public boolean filterByUpToDownDistance(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        IDevice iDevice = this.multiClickFilter;
        MotionEvent curMotionEvent = gestureContext.getCurMotionEvent();
        TouchPoint downPoint = gestureContext.getDownPoint();
        PointF pointF = downPoint != null ? TouchPointKt.toPointF(downPoint) : null;
        TouchPoint activeUpPoint = gestureContext.getActiveUpPoint();
        return iDevice.filterByUpToDownDistance(curMotionEvent, pointF, activeUpPoint != null ? TouchPointKt.toPointF(activeUpPoint) : null, gestureContext.getPointerCount(), gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getSingleMoveDistanceThresholdShort());
    }

    @Override // com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture
    public boolean filterByUpToDownTime(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        IDevice iDevice = this.multiClickFilter;
        TouchPoint downPoint = gestureContext.getDownPoint();
        long timestamp = downPoint != null ? downPoint.getTimestamp() : -1L;
        TouchPoint upPoint = gestureContext.getUpPoint();
        return iDevice.filterByUpToDownTime(timestamp, upPoint != null ? upPoint.getTimestamp() : -1L, gestureContext.getPointerCount(), gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getSingleTapTimeMsMin(), gestureContext.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getSingleTapTimeMsMax());
    }

    @Override // com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture
    public long getUpToDownTime(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        return gestureContext.upToDownTime();
    }

    @Override // com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture
    @NotNull
    public RxGestureContext onMultiFingerClicked(@NotNull RxGestureContext gestureContext) {
        RxGestureListener listener;
        RxGestureListener listener2;
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        MotionEvent curMotionEvent = gestureContext.getCurMotionEvent();
        if (curMotionEvent != null) {
            if (gestureContext.isTwoFingerTouch() && (listener2 = getListener()) != null) {
                listener2.onTwoFingerClicked(gestureContext, curMotionEvent);
            }
            if (gestureContext.isThreeFingerTouch() && (listener = getListener()) != null) {
                listener.onThreeFingerClicked(gestureContext, curMotionEvent);
            }
        }
        return gestureContext;
    }
}
