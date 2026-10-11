package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0002HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewStartActivateDocumentEvent;", "", "", "component1", EditorConstants.ARGS_DOC_ID, "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getDocId", "()Ljava/lang/String;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class NoteOverviewStartActivateDocumentEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String docId;

    public NoteOverviewStartActivateDocumentEvent(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        this.docId = docId;
    }

    public static /* synthetic */ NoteOverviewStartActivateDocumentEvent copy$default(NoteOverviewStartActivateDocumentEvent noteOverviewStartActivateDocumentEvent, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = noteOverviewStartActivateDocumentEvent.docId;
        }
        return noteOverviewStartActivateDocumentEvent.copy(str);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getDocId() {
        return this.docId;
    }

    @NotNull
    public final NoteOverviewStartActivateDocumentEvent copy(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        return new NoteOverviewStartActivateDocumentEvent(docId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof NoteOverviewStartActivateDocumentEvent) && Intrinsics.areEqual(this.docId, ((NoteOverviewStartActivateDocumentEvent) other).docId);
    }

    @NotNull
    public final String getDocId() {
        return this.docId;
    }

    public int hashCode() {
        return this.docId.hashCode();
    }

    @NotNull
    public String toString() {
        return "NoteOverviewStartActivateDocumentEvent(docId=" + this.docId + ')';
    }
}
