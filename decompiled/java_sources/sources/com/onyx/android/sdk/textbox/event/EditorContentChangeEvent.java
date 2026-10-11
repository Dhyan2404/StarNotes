package com.onyx.android.sdk.textbox.event;

import com.onyx.android.sdk.textbox.data.EditorContent;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/event/EditorContentChangeEvent;", "", "Lcom/onyx/android/sdk/textbox/data/EditorContent;", "component1", "editorContent", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/textbox/data/EditorContent;", "getEditorContent", "()Lcom/onyx/android/sdk/textbox/data/EditorContent;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/data/EditorContent;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class EditorContentChangeEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final EditorContent editorContent;

    public EditorContentChangeEvent(@NotNull EditorContent editorContent) {
        Intrinsics.checkNotNullParameter(editorContent, "editorContent");
        this.editorContent = editorContent;
    }

    public static /* synthetic */ EditorContentChangeEvent copy$default(EditorContentChangeEvent editorContentChangeEvent, EditorContent editorContent, int i, Object obj) {
        if ((i & 1) != 0) {
            editorContent = editorContentChangeEvent.editorContent;
        }
        return editorContentChangeEvent.copy(editorContent);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final EditorContent getEditorContent() {
        return this.editorContent;
    }

    @NotNull
    public final EditorContentChangeEvent copy(@NotNull EditorContent editorContent) {
        Intrinsics.checkNotNullParameter(editorContent, "editorContent");
        return new EditorContentChangeEvent(editorContent);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof EditorContentChangeEvent) && Intrinsics.areEqual(this.editorContent, ((EditorContentChangeEvent) other).editorContent);
    }

    @NotNull
    public final EditorContent getEditorContent() {
        return this.editorContent;
    }

    public int hashCode() {
        return this.editorContent.hashCode();
    }

    @NotNull
    public String toString() {
        return "EditorContentChangeEvent(editorContent=" + this.editorContent + ')';
    }
}
