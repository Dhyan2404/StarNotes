package com.onyx.android.sdk.note.request;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocSave;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/SaveNoteModelRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "getDirty", Constants.BOOLEAN_VALUE_SIG, "setDirty", "(Z)V", "dirty", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getNoteModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "setNoteModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveNoteModelRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    public boolean dirty;
    public SyncNoteModel noteModel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveNoteModelRequest(@NotNull NoteBundle noteBundle) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        NoteDocSave.INSTANCE.saveNoteModel(noteBundle.getNoteDoc());
        setNoteModel(noteBundle.getNoteDoc().getNoteModel());
        this.dirty = noteBundle.getNoteDoc().getIsDirty();
    }

    public final boolean getDirty() {
        return this.dirty;
    }

    @NotNull
    public final SyncNoteModel getNoteModel() {
        SyncNoteModel syncNoteModel = this.noteModel;
        if (syncNoteModel != null) {
            return syncNoteModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("noteModel");
        return null;
    }

    public final void setDirty(boolean z) {
        this.dirty = z;
    }

    public final void setNoteModel(@NotNull SyncNoteModel syncNoteModel) {
        Intrinsics.checkNotNullParameter(syncNoteModel, "<set-?>");
        this.noteModel = syncNoteModel;
    }
}
