package com.onyx.android.sdk.universal.editor.handler.shape;

import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.handler.PressureDetectHandlerAction;
import com.onyx.android.sdk.universal.editor.action.handler.SelectionHandlerAction;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0002H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionHandler;", "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;", "", "onActivate", "onDeactivate", "cancelAction", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SelectionHandler extends BaseShapeHandler {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    /* renamed from: a */
    public final void m41032a() {
        EditorBundleKt.renderManager(getEditorBundle()).removeRenderSilent(RenderManager.RENDER_KEY_SELECTION);
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void cancelAction() {
        m41032a();
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onActivate() {
        super.onActivate();
        addAndExecuteAction(new SelectionHandlerAction(getEditorBundle(), getTouchReader()));
        addAndExecuteAction(new PressureDetectHandlerAction(getEditorBundle(), getTouchReader(), PressureDetectHandlerAction.Args.INSTANCE.selectionArgs()));
    }

    @Override // com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler
    public void onDeactivate() {
        m41032a();
        super.onDeactivate();
    }
}
