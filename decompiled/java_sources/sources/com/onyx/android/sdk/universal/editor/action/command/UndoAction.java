package com.onyx.android.sdk.universal.editor.action.command;

import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/command/UndoAction;", "Lcom/onyx/android/sdk/universal/editor/action/command/UndoRedoAction;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "handle", "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class UndoAction extends UndoRedoAction {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UndoAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
    }

    @Override // com.onyx.android.sdk.universal.editor.action.command.UndoRedoAction
    @NotNull
    public UndoRedoArgs handle() {
        EditorBundleKt.noteBundle(getEditorBundle()).getCommandManager().undo(getUndoRedoArgs());
        return getUndoRedoArgs();
    }
}
