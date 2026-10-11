package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/SavedDocumentEvent;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "a", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getNoteModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "", "b", Constants.HASIDCALL_INDEX_SIG, "isDirty", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SavedDocumentEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final SyncNoteModel noteModel;

    /* renamed from: b, reason: from kotlin metadata */
    public final boolean isDirty;

    public SavedDocumentEvent(@NotNull SyncNoteModel noteModel, boolean z) {
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        this.noteModel = noteModel;
        this.isDirty = z;
    }

    @NotNull
    public final SyncNoteModel getNoteModel() {
        return this.noteModel;
    }

    /* renamed from: isDirty, reason: from getter */
    public final boolean getIsDirty() {
        return this.isDirty;
    }
}
