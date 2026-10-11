package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/FocusedEditorDocSwitchEvent;", "", EditorConstants.ARGS_DOC_ID, "", "editorId", "(Ljava/lang/String;Ljava/lang/String;)V", "getDocId", "()Ljava/lang/String;", "getEditorId", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class FocusedEditorDocSwitchEvent {

    @NotNull
    private final String docId;

    @NotNull
    private final String editorId;

    public FocusedEditorDocSwitchEvent(@NotNull String docId, @NotNull String editorId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(editorId, "editorId");
        this.docId = docId;
        this.editorId = editorId;
    }

    public static /* synthetic */ FocusedEditorDocSwitchEvent copy$default(FocusedEditorDocSwitchEvent focusedEditorDocSwitchEvent, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = focusedEditorDocSwitchEvent.docId;
        }
        if ((i & 2) != 0) {
            str2 = focusedEditorDocSwitchEvent.editorId;
        }
        return focusedEditorDocSwitchEvent.copy(str, str2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getDocId() {
        return this.docId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getEditorId() {
        return this.editorId;
    }

    @NotNull
    public final FocusedEditorDocSwitchEvent copy(@NotNull String docId, @NotNull String editorId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(editorId, "editorId");
        return new FocusedEditorDocSwitchEvent(docId, editorId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FocusedEditorDocSwitchEvent)) {
            return false;
        }
        FocusedEditorDocSwitchEvent focusedEditorDocSwitchEvent = (FocusedEditorDocSwitchEvent) other;
        return Intrinsics.areEqual(this.docId, focusedEditorDocSwitchEvent.docId) && Intrinsics.areEqual(this.editorId, focusedEditorDocSwitchEvent.editorId);
    }

    @NotNull
    public final String getDocId() {
        return this.docId;
    }

    @NotNull
    public final String getEditorId() {
        return this.editorId;
    }

    public int hashCode() {
        return (this.docId.hashCode() * 31) + this.editorId.hashCode();
    }

    @NotNull
    public String toString() {
        return "FocusedEditorDocSwitchEvent(docId=" + this.docId + ", editorId=" + this.editorId + ')';
    }
}
