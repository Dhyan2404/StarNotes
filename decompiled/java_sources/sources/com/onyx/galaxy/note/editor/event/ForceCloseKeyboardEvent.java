package com.onyx.galaxy.note.editor.event;

import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/ForceCloseKeyboardEvent;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ForceCloseKeyboardEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public final EditorBundle editorBundle;

    /* JADX WARN: Multi-variable type inference failed */
    public ForceCloseKeyboardEvent() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Nullable
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    public ForceCloseKeyboardEvent(@Nullable EditorBundle editorBundle) {
        this.editorBundle = editorBundle;
    }

    public /* synthetic */ ForceCloseKeyboardEvent(EditorBundle editorBundle, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : editorBundle);
    }
}
