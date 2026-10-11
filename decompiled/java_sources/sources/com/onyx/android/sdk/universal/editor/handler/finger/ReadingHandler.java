package com.onyx.android.sdk.universal.editor.handler.finger;

import android.graphics.Point;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.extension.MotionEventKt;
import com.onyx.android.sdk.rxgesture.RxGestureContext;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.config.QuicklyFunTypeConst;
import com.onyx.android.sdk.universal.editor.events.app.ExitLongPressEvent;
import com.onyx.android.sdk.universal.editor.events.app.FingerClickEvent;
import com.onyx.android.sdk.universal.editor.events.app.FlingEvent;
import com.onyx.android.sdk.universal.editor.events.app.LongPressEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleDisabledEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleEndEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScalingEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollingEvent;
import com.onyx.android.sdk.universal.editor.events.app.SingleClickEvent;
import com.onyx.android.sdk.universal.editor.events.app.StylusLongPressEvent;
import com.onyx.android.sdk.universal.editor.events.app.TouchCancelEvent;
import com.onyx.android.sdk.universal.editor.events.app.TouchUpEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.AfterStopScrollAction;
import com.onyx.android.sdk.universal.editor.gesture.TouchStateInfo;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J \u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u0004H\u0016J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0002H\u0002J\u0018\u0010!\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u0002H\u0002J\u0018\u0010\"\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u0002H\u0002J\u0018\u0010#\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u0002H\u0002¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/finger/ReadingHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;", "Landroid/view/MotionEvent;", "currentEvent", "", "onTouchDown", "downMotionEvent", "onMoving", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "gestureContext", "motionEvent", "onExitSingleMove", "onFling", "onTouchUp", "onTouchCancel", "onSingleTapUp", "onLongPress", "Landroid/view/ScaleGestureDetector;", "detector", "onScaleBegin", "onScale", "onScaleEnd", "onScaleDisabled", "onDoubleTap", "onTwoFingerClicked", "onThreeFingerClicked", "onExitLongPress", "onStylusLongPressActive", "onStylusLongPressRelease", "e1", "e2", "d", NotificationCompat.CATEGORY_EVENT, "b", "a", "c", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReadingHandler extends BaseHandler {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    /* renamed from: a */
    public final void m41016a(RxGestureContext gestureContext, MotionEvent event) {
        if (EditorBundleKt.touchStateInfo(getEditorBundle()).isScrollFinishedAtReleaseTouch()) {
            if (DocOptionsActionsKt.isEnabledContinuousPage(getEditorBundle())) {
                RxBaseAction.execute$default(new AfterStopScrollAction(getEditorBundle()), null, null, null, 7, null);
            } else {
                m41017b(gestureContext, event);
            }
        }
    }

    /* renamed from: b */
    public final void m41017b(RxGestureContext gestureContext, MotionEvent event) {
        Point startPoint = EditorBundleKt.touchStateInfo(getEditorBundle()).getStartPoint();
        float f = -(event.getX() - startPoint.x);
        float f2 = -(event.getY() - startPoint.y);
        Debug.INSTANCE.m32035d(ReadingHandler.class, "scroll finished, fling, offsetX = " + f + " , offsetY = " + f2, new Object[0]);
        EditorBundleKt.postEvent(getEditorBundle(), new FlingEvent(f, f2, -gestureContext.getVelocityTrackerWrapper().getVelocityX(), -gestureContext.getVelocityTrackerWrapper().getVelocityY(), gestureContext.upToDownTime()));
    }

    /* renamed from: c */
    public final void m41018c(RxGestureContext gestureContext, MotionEvent event) {
        EditorBundleKt.touchStateInfo(getEditorBundle()).resetState();
    }

    /* renamed from: d */
    public final void m41019d(MotionEvent e1, MotionEvent e2) {
        TouchStateInfo touchStateInfo = EditorBundleKt.touchStateInfo(getEditorBundle());
        TouchPoint touchPoint = MotionEventKt.toTouchPoint(e1);
        float f = -(e2.getX() - touchPoint.getX());
        float f2 = -(e2.getY() - touchPoint.getY());
        if (touchStateInfo.getIsScrolling()) {
            EditorBundleKt.postEvent(getEditorBundle(), new ScrollingEvent(f, f2, 0, 4, null));
        } else {
            Debug.INSTANCE.m32035d(ReadingHandler.class, "scroll begin", new Object[0]);
            EditorBundleKt.postEvent(getEditorBundle(), new ScrollBeginEvent(f, f2));
        }
        touchStateInfo.setScrolling(true);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onDoubleTap(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        EditorBundleKt.postEvent(getEditorBundle(), new FingerClickEvent(QuicklyFunTypeConst.SETTINGS_GESTURE_DOUBLE_CLICK));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onExitLongPress() {
        EditorBundle editorBundle = getEditorBundle();
        EditorBundleKt.postEvent(getEditorBundle(), new ExitLongPressEvent());
        EditorBundleKt.postEvent(editorBundle, Unit.INSTANCE);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onExitSingleMove(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        m41016a(gestureContext, motionEvent);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onFling(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent downMotionEvent, @NotNull MotionEvent currentEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(downMotionEvent, "downMotionEvent");
        Intrinsics.checkNotNullParameter(currentEvent, "currentEvent");
        if (EditorBundleKt.touchStateInfo(getEditorBundle()).isScrollFinishedAtReleaseTouch()) {
            m41017b(gestureContext, currentEvent);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onLongPress(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        EditorBundleKt.postEvent(getEditorBundle(), new LongPressEvent(MotionEventKt.toTouchPoint(motionEvent)));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onMoving(@NotNull MotionEvent downMotionEvent, @NotNull MotionEvent currentEvent) {
        Intrinsics.checkNotNullParameter(downMotionEvent, "downMotionEvent");
        Intrinsics.checkNotNullParameter(currentEvent, "currentEvent");
        m41019d(downMotionEvent, currentEvent);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onScale(@NotNull ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        EditorBundleKt.postEvent(getEditorBundle(), new ScalingEvent(detector));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onScaleBegin(@NotNull ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        Debug.INSTANCE.m32035d(ReadingHandler.class, "onScaleBegin", new Object[0]);
        EditorBundleKt.touchStateInfo(getEditorBundle()).setPinchZooming(true);
        EditorBundleKt.postEvent(getEditorBundle(), new ScaleBeginEvent(detector));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onScaleDisabled() {
        EditorBundleKt.postEvent(getEditorBundle(), new ScaleDisabledEvent());
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onScaleEnd() {
        Debug.INSTANCE.m32035d(ReadingHandler.class, "onScaleEnd", new Object[0]);
        EditorBundleKt.touchStateInfo(getEditorBundle()).resetStateAboutScale();
        EditorBundleKt.postEvent(getEditorBundle(), new ScaleEndEvent());
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onSingleTapUp(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        EditorBundleKt.postEvent(getEditorBundle(), new SingleClickEvent(MotionEventKt.toTouchPoint(motionEvent)));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onStylusLongPressActive(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        EditorBundleKt.postEvent(getEditorBundle(), new StylusLongPressEvent(true));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onStylusLongPressRelease(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        EditorBundleKt.postEvent(getEditorBundle(), new StylusLongPressEvent(false));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onThreeFingerClicked(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        EditorBundleKt.postEvent(getEditorBundle(), new FingerClickEvent(QuicklyFunTypeConst.SETTINGS_GESTURE_THREE_FINGER_CLICK));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onTouchCancel(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        m41016a(gestureContext, motionEvent);
        m41018c(gestureContext, motionEvent);
        EditorBundleKt.postEvent(getEditorBundle(), new TouchCancelEvent(MotionEventKt.toTouchPoint(motionEvent)));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onTouchDown(@NotNull MotionEvent currentEvent) {
        Intrinsics.checkNotNullParameter(currentEvent, "currentEvent");
        EditorBundleKt.stopScroll(getEditorBundle());
        EditorBundleKt.touchStateInfo(getEditorBundle()).setStartPoint(new Point((int) currentEvent.getX(), (int) currentEvent.getY()));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onTouchUp(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        m41018c(gestureContext, motionEvent);
        EditorBundleKt.postEvent(getEditorBundle(), new TouchUpEvent(MotionEventKt.toTouchPoint(motionEvent)));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onTwoFingerClicked(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        EditorBundleKt.postEvent(getEditorBundle(), new FingerClickEvent(QuicklyFunTypeConst.SETTINGS_GESTURE_TWO_FINGER_CLICK));
    }
}
