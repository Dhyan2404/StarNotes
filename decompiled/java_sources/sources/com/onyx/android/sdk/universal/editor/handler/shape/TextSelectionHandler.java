package com.onyx.android.sdk.universal.editor.handler.shape;

import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.universal.common.events.ThemeChangedEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.handler.TextSelectionDrawingHandlerAction;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.events.note.HideTextSelectionMenuIfQuitEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTextSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartTextSelectionArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\rH\u0007J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0012\u0010\u0014\u001a\u00020\u00132\b\u0010\t\u001a\u0004\u0018\u00010\u0012H\u0016R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/TextSelectionHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;", "", "onActivate", "onDeactivate", "Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;", "args", "startTextSelection", "Lcom/onyx/android/sdk/universal/editor/events/note/HideTextSelectionMenuIfQuitEvent;", NotificationCompat.CATEGORY_EVENT, "onHideTextSelectionMenuIfQuitEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitTextSelectionEvent;", "onQuitTextSelectionEvent", "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;", "onThemeChangedEvent", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "touchMode", "updateTouchMode", "Landroid/view/MotionEvent;", "", "isProcessing", "Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;", "d", "Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;", "handlerAction", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextSelectionHandler extends BaseShapeHandler {

    /* renamed from: d, reason: from kotlin metadata */
    public TextSelectionDrawingHandlerAction handlerAction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextSelectionHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public boolean isProcessing(@Nullable MotionEvent event) {
        TextSelectionDrawingHandlerAction textSelectionDrawingHandlerAction = this.handlerAction;
        if (textSelectionDrawingHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            textSelectionDrawingHandlerAction = null;
        }
        return textSelectionDrawingHandlerAction.hasSelection();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onActivate() {
        super.onActivate();
        GlobalBundle.INSTANCE.register(this);
        TextSelectionDrawingHandlerAction textSelectionDrawingHandlerAction = new TextSelectionDrawingHandlerAction(getEditorBundle(), getTouchReader());
        this.handlerAction = textSelectionDrawingHandlerAction;
        addAndExecuteAction(textSelectionDrawingHandlerAction);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onDeactivate() {
        GlobalBundle.INSTANCE.unregister(this);
        EditorBundleKt.renderManager(getEditorBundle()).removeRenderSilent(RenderManager.RENDER_KEY_TEXT_SELECTION);
        super.onDeactivate();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onHideTextSelectionMenuIfQuitEvent(@NotNull HideTextSelectionMenuIfQuitEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TextSelectionDrawingHandlerAction textSelectionDrawingHandlerAction = this.handlerAction;
        if (textSelectionDrawingHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            textSelectionDrawingHandlerAction = null;
        }
        textSelectionDrawingHandlerAction.setHideMenuIfQuit(event.getHide());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitTextSelectionEvent(@NotNull QuitTextSelectionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TextSelectionDrawingHandlerAction textSelectionDrawingHandlerAction = this.handlerAction;
        if (textSelectionDrawingHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            textSelectionDrawingHandlerAction = null;
        }
        textSelectionDrawingHandlerAction.quitTextSelection();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onThemeChangedEvent(@NotNull ThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        TextSelectionDrawingHandlerAction textSelectionDrawingHandlerAction = this.handlerAction;
        TextSelectionDrawingHandlerAction textSelectionDrawingHandlerAction2 = null;
        if (textSelectionDrawingHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            textSelectionDrawingHandlerAction = null;
        }
        textSelectionDrawingHandlerAction.quitTextSelection();
        TextSelectionDrawingHandlerAction textSelectionDrawingHandlerAction3 = this.handlerAction;
        if (textSelectionDrawingHandlerAction3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
        } else {
            textSelectionDrawingHandlerAction2 = textSelectionDrawingHandlerAction3;
        }
        textSelectionDrawingHandlerAction2.onThemeUpdated();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void startTextSelection(@Nullable StartTextSelectionArgs args) {
        if (args == null) {
            return;
        }
        TextSelectionDrawingHandlerAction textSelectionDrawingHandlerAction = this.handlerAction;
        if (textSelectionDrawingHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            textSelectionDrawingHandlerAction = null;
        }
        textSelectionDrawingHandlerAction.startTextSelection(args);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void updateTouchMode(@NotNull EditorTouchMode touchMode) {
        Intrinsics.checkNotNullParameter(touchMode, "touchMode");
        super.updateTouchMode(EditorTouchMode.FINGER_SCRIBBLE);
    }
}
