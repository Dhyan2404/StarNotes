package com.onyx.android.sdk.rxgesture;

import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\u0003H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxGestureListener;", "", "onDoubleTap", "", "gestureContext", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "motionEvent", "Landroid/view/MotionEvent;", "onExitLongPress", "onExitSingleMove", "onFling", "onLongPress", "onMoving", "onNoGestures", "onPalm", "onScaleBegin", "detector", "Landroid/view/ScaleGestureDetector;", "onScaleEnd", "onScaling", "onSingleTap", "onSingleTapConfirmed", "onThreeFingerClicked", "onTouchCancel", "onTouchDown", "onTouchUp", "onTwoFingerClicked", "onTwoFingerMoving", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface RxGestureListener {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static void onDoubleTap(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }

        public static void onExitLongPress(@NotNull RxGestureListener rxGestureListener) {
        }

        public static void onFling(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }

        public static void onLongPress(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }

        public static void onMoving(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }

        public static void onNoGestures(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }

        public static void onPalm(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }

        public static void onScaleBegin(@NotNull RxGestureListener rxGestureListener, @NotNull ScaleGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
        }

        public static void onScaleEnd(@NotNull RxGestureListener rxGestureListener, @NotNull ScaleGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
        }

        public static void onScaling(@NotNull RxGestureListener rxGestureListener, @NotNull ScaleGestureDetector detector) {
            Intrinsics.checkNotNullParameter(detector, "detector");
        }

        public static void onSingleTap(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }

        public static void onSingleTapConfirmed(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }

        public static void onThreeFingerClicked(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }

        public static void onTouchCancel(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }

        public static void onTouchDown(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }

        public static void onTouchUp(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }

        public static void onTwoFingerClicked(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }

        public static void onTwoFingerMoving(@NotNull RxGestureListener rxGestureListener, @NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
            Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        }
    }

    void onDoubleTap(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onExitLongPress();

    void onExitSingleMove(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onFling(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onLongPress(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onMoving(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onNoGestures(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onPalm(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onScaleBegin(@NotNull ScaleGestureDetector detector);

    void onScaleEnd(@NotNull ScaleGestureDetector detector);

    void onScaling(@NotNull ScaleGestureDetector detector);

    void onSingleTap(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onSingleTapConfirmed(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onThreeFingerClicked(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onTouchCancel(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onTouchDown(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onTouchUp(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onTwoFingerClicked(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    void onTwoFingerMoving(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);
}
