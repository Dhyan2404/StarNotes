package com.onyx.android.sdk.universal.editor.handler.finger;

import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.rxgesture.RxGestureContext;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010'\u001a\u00020 ¢\u0006\u0004\b(\u0010&J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\u0006\u0010\u0005\u001a\u00020\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0018\u0010\u000e\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0006H&J \u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0006H&J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0006H&J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H&J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H&J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H&J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H&J\b\u0010\u0018\u001a\u00020\u0002H&J\b\u0010\u0019\u001a\u00020\u0002H&J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H&J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H&J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H&J\b\u0010\u001d\u001a\u00020\u0002H&J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H&J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0006H&R\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;", "", "", "onActivate", "onDeactivate", "destroy", "Landroid/view/MotionEvent;", "currentEvent", "onTouchDown", "downMotionEvent", "onMoving", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "gestureContext", "motionEvent", "onExitSingleMove", "onFling", "onTouchUp", "onTouchCancel", "onSingleTapUp", "onLongPress", "Landroid/view/ScaleGestureDetector;", "detector", "onScaleBegin", "onScale", "onScaleDisabled", "onScaleEnd", "onDoubleTap", "onTwoFingerClicked", "onThreeFingerClicked", "onExitLongPress", "onStylusLongPressActive", "onStylusLongPressRelease", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", Constants.CONSTRUCTOR_NAME, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class BaseHandler {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    public BaseHandler(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    public final void destroy() {
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    public void onActivate() {
        Debug.INSTANCE.m32035d(getClass(), "onActivate", new Object[0]);
    }

    public void onDeactivate() {
        EditorBundleKt.touchStateInfo(this.editorBundle).resetState();
        Debug.INSTANCE.m32035d(getClass(), "onDeactivate", new Object[0]);
    }

    public abstract void onDoubleTap(@NotNull MotionEvent motionEvent);

    public abstract void onExitLongPress();

    public abstract void onExitSingleMove(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    public abstract void onFling(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent downMotionEvent, @NotNull MotionEvent currentEvent);

    public abstract void onLongPress(@NotNull MotionEvent motionEvent);

    public abstract void onMoving(@NotNull MotionEvent downMotionEvent, @NotNull MotionEvent currentEvent);

    public abstract void onScale(@NotNull ScaleGestureDetector detector);

    public abstract void onScaleBegin(@NotNull ScaleGestureDetector detector);

    public abstract void onScaleDisabled();

    public abstract void onScaleEnd();

    public abstract void onSingleTapUp(@NotNull MotionEvent motionEvent);

    public abstract void onStylusLongPressActive(@NotNull MotionEvent motionEvent);

    public abstract void onStylusLongPressRelease(@NotNull MotionEvent motionEvent);

    public abstract void onThreeFingerClicked(@NotNull MotionEvent motionEvent);

    public abstract void onTouchCancel(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    public abstract void onTouchDown(@NotNull MotionEvent currentEvent);

    public abstract void onTouchUp(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent);

    public abstract void onTwoFingerClicked(@NotNull MotionEvent motionEvent);

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }
}
