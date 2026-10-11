package com.onyx.android.sdk.universal.editor.handler.finger;

import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.onyx.android.sdk.rxgesture.RxGestureContext;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0006H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bH\u0016J \u0010\r\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0016J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0016J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0016\u001a\u00020\u0006H\u0016J\b\u0010\u0017\u001a\u00020\u0006H\u0016J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\bH\u0016J\u0018\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/finger/DummyHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "onDoubleTap", "", "motionEvent", "Landroid/view/MotionEvent;", "onExitLongPress", "onExitSingleMove", "gestureContext", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "onFling", "downMotionEvent", "currentEvent", "onLongPress", "onMoving", "onScale", "detector", "Landroid/view/ScaleGestureDetector;", "onScaleBegin", "onScaleDisabled", "onScaleEnd", "onSingleTapUp", "onStylusLongPressActive", "onStylusLongPressRelease", "onThreeFingerClicked", "onTouchCancel", "onTouchDown", "onTouchUp", "onTwoFingerClicked", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DummyHandler extends BaseHandler {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DummyHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onDoubleTap(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onExitLongPress() {
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onExitSingleMove(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onFling(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent downMotionEvent, @NotNull MotionEvent currentEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(downMotionEvent, "downMotionEvent");
        Intrinsics.checkNotNullParameter(currentEvent, "currentEvent");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onLongPress(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onMoving(@NotNull MotionEvent downMotionEvent, @NotNull MotionEvent currentEvent) {
        Intrinsics.checkNotNullParameter(downMotionEvent, "downMotionEvent");
        Intrinsics.checkNotNullParameter(currentEvent, "currentEvent");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onScale(@NotNull ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onScaleBegin(@NotNull ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onScaleDisabled() {
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onScaleEnd() {
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onSingleTapUp(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onStylusLongPressActive(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onStylusLongPressRelease(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onThreeFingerClicked(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onTouchCancel(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onTouchDown(@NotNull MotionEvent currentEvent) {
        Intrinsics.checkNotNullParameter(currentEvent, "currentEvent");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onTouchUp(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.finger.BaseHandler
    public void onTwoFingerClicked(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
    }
}
