package com.onyx.android.sdk.universal.editor.handler.shape;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.universal.common.events.ThemeChangedEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.handler.AnnotationSelectionDrawingHandlerAction;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.events.note.AnnotationSelectionInfo;
import com.onyx.android.sdk.universal.editor.events.note.QuitAnnotationSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowAnnotationSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartAnnotationSelectionArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0007J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u000bH\u0007J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016R\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/AnnotationSelectionHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;", "", "onActivate", "onDeactivate", "Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;", "args", "startAnnotationSelection", "Lcom/onyx/android/sdk/universal/editor/events/note/QuitAnnotationSelectionEvent;", NotificationCompat.CATEGORY_EVENT, "onQuitAnnotationSelectionEvent", "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;", "onThemeChangedEvent", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "touchMode", "updateTouchMode", "Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;", "d", "Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;", "handlerAction", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AnnotationSelectionHandler extends BaseShapeHandler {

    /* renamed from: d, reason: from kotlin metadata */
    public AnnotationSelectionDrawingHandlerAction handlerAction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnnotationSelectionHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onActivate() {
        super.onActivate();
        GlobalBundle.INSTANCE.register(this);
        updateTouchMode(EditorTouchMode.FINGER_SCRIBBLE);
        AnnotationSelectionDrawingHandlerAction annotationSelectionDrawingHandlerAction = new AnnotationSelectionDrawingHandlerAction(getEditorBundle(), getTouchReader());
        this.handlerAction = annotationSelectionDrawingHandlerAction;
        addAndExecuteAction(annotationSelectionDrawingHandlerAction);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onDeactivate() {
        super.onDeactivate();
        GlobalBundle.INSTANCE.unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onQuitAnnotationSelectionEvent(@NotNull QuitAnnotationSelectionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        AnnotationSelectionDrawingHandlerAction annotationSelectionDrawingHandlerAction = this.handlerAction;
        if (annotationSelectionDrawingHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            annotationSelectionDrawingHandlerAction = null;
        }
        annotationSelectionDrawingHandlerAction.quitAnnotationSelection();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onThemeChangedEvent(@NotNull ThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        AnnotationSelectionDrawingHandlerAction annotationSelectionDrawingHandlerAction = this.handlerAction;
        if (annotationSelectionDrawingHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            annotationSelectionDrawingHandlerAction = null;
        }
        annotationSelectionDrawingHandlerAction.quitAnnotationSelection();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void startAnnotationSelection(@NotNull StartAnnotationSelectionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        AnnotationSelectionDrawingHandlerAction annotationSelectionDrawingHandlerAction = this.handlerAction;
        if (annotationSelectionDrawingHandlerAction == null) {
            Intrinsics.throwUninitializedPropertyAccessException("handlerAction");
            annotationSelectionDrawingHandlerAction = null;
        }
        annotationSelectionDrawingHandlerAction.startAnnotationSelection(args);
        AnnotationSelectionInfo annotationSelectionInfo = new AnnotationSelectionInfo(args.getAnnotation(), args.getVirtualBoxInfo());
        annotationSelectionInfo.setStyle(args.getStyle());
        annotationSelectionInfo.setColor(args.getColor());
        EditorBundleKt.postEvent(getEditorBundle(), new ShowAnnotationSelectionMenuEvent(annotationSelectionInfo));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void updateTouchMode(@NotNull EditorTouchMode touchMode) {
        Intrinsics.checkNotNullParameter(touchMode, "touchMode");
        super.updateTouchMode(EditorTouchMode.FINGER_SCRIBBLE);
    }
}
