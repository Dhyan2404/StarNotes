package com.onyx.android.sdk.universal.editor.gesture;

import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.rxgesture.RxGesture;
import com.onyx.android.sdk.rxgesture.RxGestureConfig;
import com.onyx.android.sdk.rxgesture.RxGestureContext;
import com.onyx.android.sdk.rxgesture.RxGestureListener;
import com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0007¢\u0006\u0004\b \u0010!J\u0006\u0010\u0002\u001a\u00020\u0000J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\tJ\u0006\u0010\f\u001a\u00020\tJ\u0016\u0010\r\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u0000J\u0006\u0010\u000f\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0013\u001a\u00020\u0007H\u0002R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0017\u0010\u001f\u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;", "", "subscribe", "Landroid/view/View;", "view", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "", "dispatchTouchEvent", "onPause", "onResume", "onHover", "dispose", "isMultiFingersMoved", "isSingleFingerMoved", "isLongPress", "getCurMoveMotionEvent", "a", "Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;", "handlerManager", "Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;", "getHandlerManager", "()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;", "setHandlerManager", "(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)V", "Lcom/onyx/android/sdk/rxgesture/RxGesture;", "Lcom/onyx/android/sdk/rxgesture/RxGesture;", "getRxGesture", "()Lcom/onyx/android/sdk/rxgesture/RxGesture;", "rxGesture", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderGestureDistributor {
    public static final long DOUBLE_TAP_TIME_MS_THRESHOLD = 300;
    public static final float NORMAL_MODEL_FLING_DISTANCE = 0.05f;
    public static final long SINGLE_TAP_CONFIRMED_TIME_MS_THRESHOLD = 300;
    public static final int SINGLE_TAP_POINT_COUNT_THRESHOLD = 15;
    public static final long SINGLE_TAP_TIME_MS_THRESHOLD = 300;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RxGesture rxGesture = new RxGesture();
    public HandlerManager handlerManager;

    /* renamed from: a */
    public final boolean m40928a() {
        return getHandlerManager().getTouchStateInfo().getIsPinchZooming();
    }

    public final void dispatchTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.rxGesture.dispatchTouchEvent(event);
    }

    @NotNull
    public final ReaderGestureDistributor dispose() {
        this.rxGesture.dispose();
        return this;
    }

    @Nullable
    public final MotionEvent getCurMoveMotionEvent() {
        return isMultiFingersMoved() ? this.rxGesture.getGestureContext().getPointerCurMotionEvent() : this.rxGesture.getGestureContext().getCurMotionEvent();
    }

    @NotNull
    public final HandlerManager getHandlerManager() {
        HandlerManager handlerManager = this.handlerManager;
        if (handlerManager != null) {
            return handlerManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("handlerManager");
        return null;
    }

    @NotNull
    public final RxGesture getRxGesture() {
        return this.rxGesture;
    }

    public final boolean isLongPress() {
        return this.rxGesture.getGestureContext().getIsLongPress();
    }

    public final boolean isMultiFingersMoved() {
        return this.rxGesture.getGestureContext().getIsHasMultipleMove();
    }

    public final boolean isSingleFingerMoved() {
        return this.rxGesture.getGestureContext().hasSingleMoved();
    }

    public final boolean onHover(@NotNull View view, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(event, "event");
        return this.rxGesture.onHover(view, event);
    }

    public final void onPause() {
        this.rxGesture.onPause();
    }

    public final void onResume() {
        this.rxGesture.onResume();
    }

    public final boolean onTouchEvent(@NotNull View view, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(event, "event");
        return this.rxGesture.onTouchEvent(view, event);
    }

    public final void setHandlerManager(@NotNull HandlerManager handlerManager) {
        Intrinsics.checkNotNullParameter(handlerManager, "<set-?>");
        this.handlerManager = handlerManager;
    }

    @NotNull
    public final ReaderGestureDistributor subscribe() {
        RxGestureConfig rxGestureConfig = new RxGestureConfig();
        rxGestureConfig.setEnableMoveGesture(true);
        rxGestureConfig.setEnableFlingGesture(true);
        rxGestureConfig.setEnableCommonGesture(true);
        rxGestureConfig.setEnableDoubleGesture(false);
        rxGestureConfig.setEnableLongPressGesture(true);
        rxGestureConfig.setEnabledPenTouch(true);
        rxGestureConfig.setEnabledPalmReject(false);
        rxGestureConfig.setEnableScaleGesture(false);
        rxGestureConfig.setScaleIntervalTimeMs(0L);
        rxGestureConfig.setScaleFactorIntervalThreshold(0.0f);
        rxGestureConfig.setMoveIntervalTimeMs(0L);
        rxGestureConfig.setMoveDistanceThreshold(1);
        this.rxGesture.subscribe(rxGestureConfig, new RxGestureListener() { // from class: com.onyx.android.sdk.universal.editor.gesture.ReaderGestureDistributor$subscribe$1
            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onDoubleTap(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                if (ReaderGestureDistributor.this.getHandlerManager().getIsEnabledDoubleTap()) {
                    ReaderGestureDistributor.this.getHandlerManager().onDoubleTap(motionEvent);
                }
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onExitLongPress() {
                ReaderGestureDistributor.this.getHandlerManager().onExitLongPress();
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onExitSingleMove(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                ReaderGestureDistributor.this.getHandlerManager().onExitSingleMove(gestureContext, motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onFling(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                MotionEvent downMotionEvent = gestureContext.getDownMotionEvent();
                if (downMotionEvent != null) {
                    ReaderGestureDistributor.this.getHandlerManager().onFling(gestureContext, downMotionEvent, motionEvent);
                }
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onLongPress(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                ReaderGestureDistributor.this.getHandlerManager().onLongPress(motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onMoving(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                MotionEvent activeMoveMotionEvent = gestureContext.getActiveMoveMotionEvent();
                if (activeMoveMotionEvent != null) {
                    ReaderGestureDistributor.this.getHandlerManager().onMoving(gestureContext, activeMoveMotionEvent, motionEvent);
                }
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onNoGestures(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                ReaderGestureDistributor.this.getHandlerManager().onNoGestures(motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onPalm(@NotNull RxGestureContext rxGestureContext, @NotNull MotionEvent motionEvent) {
                RxGestureListener.DefaultImpls.onPalm(this, rxGestureContext, motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onScaleBegin(@NotNull ScaleGestureDetector detector) {
                boolean m40928a;
                Intrinsics.checkNotNullParameter(detector, "detector");
                m40928a = ReaderGestureDistributor.this.m40928a();
                if (m40928a) {
                    ReaderGestureDistributor.this.getHandlerManager().onScale(detector);
                } else {
                    ReaderGestureDistributor.this.getHandlerManager().onScaleBegin(detector);
                }
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onScaleEnd(@NotNull ScaleGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onScaling(@NotNull ScaleGestureDetector detector) {
                Intrinsics.checkNotNullParameter(detector, "detector");
                ReaderGestureDistributor.this.getHandlerManager().onScale(detector);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onSingleTap(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                if (ReaderGestureDistributor.this.getHandlerManager().getIsEnabledDoubleTap()) {
                    return;
                }
                ReaderGestureDistributor.this.getHandlerManager().onSingleTapUp(motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onSingleTapConfirmed(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                if (ReaderGestureDistributor.this.getHandlerManager().getIsEnabledDoubleTap()) {
                    ReaderGestureDistributor.this.getHandlerManager().onSingleTapUp(motionEvent);
                }
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onThreeFingerClicked(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                ReaderGestureDistributor.this.getHandlerManager().onThreeFingerClicked(motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onTouchCancel(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                boolean m40928a;
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                m40928a = ReaderGestureDistributor.this.m40928a();
                ReaderGestureDistributor.this.getHandlerManager().onTouchCancel(gestureContext, motionEvent);
                if (gestureContext.getIsScale()) {
                    ReaderGestureDistributor.this.getHandlerManager().onScaleEnd(m40928a);
                }
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onTouchDown(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                ReaderGestureDistributor.this.getHandlerManager().onTouchDown(motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onTouchUp(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                boolean m40928a;
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                m40928a = ReaderGestureDistributor.this.m40928a();
                ReaderGestureDistributor.this.getHandlerManager().onTouchUp(gestureContext, motionEvent);
                if (gestureContext.getIsScale()) {
                    ReaderGestureDistributor.this.getHandlerManager().onScaleEnd(m40928a);
                }
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onTwoFingerClicked(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                ReaderGestureDistributor.this.getHandlerManager().onTwoFingerClicked(motionEvent);
            }

            @Override // com.onyx.android.sdk.rxgesture.RxGestureListener
            public void onTwoFingerMoving(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
                Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                MotionEvent activeMultiMoveMotionEvent = gestureContext.getActiveMultiMoveMotionEvent();
                if (activeMultiMoveMotionEvent != null) {
                    ReaderGestureDistributor.this.getHandlerManager().onTwoFingerMoving(gestureContext, activeMultiMoveMotionEvent, motionEvent);
                }
            }
        });
        return this;
    }
}
