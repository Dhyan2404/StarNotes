package com.onyx.android.sdk.universal.editor.handler.shape;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.handler.LaserShapeDrawingHandlerAction;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.app.ActivityStopEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollBeginEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000fH\u0016J\b\u0010\u0011\u001a\u00020\u0007H\u0002R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/LaserShapeDrawingHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;", "", "onActivate", "onDeactivate", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "", "onSingleTapUp", "cancelAction", "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;", NotificationCompat.CATEGORY_EVENT, "onScrollBeginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;", "onScaleBeginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ActivityStopEvent;", "onActivityStopEvent", "a", "Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;", "d", "Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;", "handlerAction", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LaserShapeDrawingHandler extends BaseShapeHandler {

    /* renamed from: d, reason: from kotlin metadata */
    public LaserShapeDrawingHandlerAction handlerAction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LaserShapeDrawingHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    /* renamed from: a */
    public final boolean m41031a() {
        return EditorBundleKt.handlerManager(getEditorBundle()).isSupportFingerTouchEdit();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void cancelAction() {
        LaserShapeDrawingHandlerAction laserShapeDrawingHandlerAction = this.handlerAction;
        if (laserShapeDrawingHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            laserShapeDrawingHandlerAction = null;
        }
        laserShapeDrawingHandlerAction.cancelCurrentPath();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onActivate() {
        super.onActivate();
        LaserShapeDrawingHandlerAction laserShapeDrawingHandlerAction = new LaserShapeDrawingHandlerAction(getEditorBundle(), getTouchReader());
        this.handlerAction = laserShapeDrawingHandlerAction;
        addAndExecuteAction(laserShapeDrawingHandlerAction);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onActivityStopEvent(@NotNull ActivityStopEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        super.onActivityStopEvent(event);
        LaserShapeDrawingHandlerAction laserShapeDrawingHandlerAction = this.handlerAction;
        if (laserShapeDrawingHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            laserShapeDrawingHandlerAction = null;
        }
        laserShapeDrawingHandlerAction.stopRendering();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onDeactivate() {
        EditorBundleKt.renderManager(getEditorBundle()).removeRenderSilent(RenderManager.RENDER_KEY_LASER);
        super.onDeactivate();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScaleBeginEvent(@NotNull ScaleBeginEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m41031a()) {
            LaserShapeDrawingHandlerAction laserShapeDrawingHandlerAction = this.handlerAction;
            if (laserShapeDrawingHandlerAction == null) {
                Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
                laserShapeDrawingHandlerAction = null;
            }
            laserShapeDrawingHandlerAction.startDismissTimerIf();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScrollBeginEvent(@NotNull ScrollBeginEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m41031a()) {
            LaserShapeDrawingHandlerAction laserShapeDrawingHandlerAction = this.handlerAction;
            if (laserShapeDrawingHandlerAction == null) {
                Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
                laserShapeDrawingHandlerAction = null;
            }
            laserShapeDrawingHandlerAction.startDismissTimerIf();
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public boolean onSingleTapUp(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        return m41031a();
    }
}
