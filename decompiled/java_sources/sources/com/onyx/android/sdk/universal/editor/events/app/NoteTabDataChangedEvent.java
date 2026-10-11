package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u001f\u0010 J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "component1", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "component2", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "component3", "editorBundle", "syncNoteModel", "noteTabData", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "b", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getSyncNoteModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "c", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "getNoteTabData", "()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class NoteTabDataChangedEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final SyncNoteModel syncNoteModel;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final NoteTabData noteTabData;

    public NoteTabDataChangedEvent(@NotNull EditorBundle editorBundle, @NotNull SyncNoteModel syncNoteModel, @NotNull NoteTabData noteTabData) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(syncNoteModel, "syncNoteModel");
        Intrinsics.checkNotNullParameter(noteTabData, "noteTabData");
        this.editorBundle = editorBundle;
        this.syncNoteModel = syncNoteModel;
        this.noteTabData = noteTabData;
    }

    public static /* synthetic */ NoteTabDataChangedEvent copy$default(NoteTabDataChangedEvent noteTabDataChangedEvent, EditorBundle editorBundle, SyncNoteModel syncNoteModel, NoteTabData noteTabData, int i, Object obj) {
        if ((i & 1) != 0) {
            editorBundle = noteTabDataChangedEvent.editorBundle;
        }
        if ((i & 2) != 0) {
            syncNoteModel = noteTabDataChangedEvent.syncNoteModel;
        }
        if ((i & 4) != 0) {
            noteTabData = noteTabDataChangedEvent.noteTabData;
        }
        return noteTabDataChangedEvent.copy(editorBundle, syncNoteModel, noteTabData);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final SyncNoteModel getSyncNoteModel() {
        return this.syncNoteModel;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final NoteTabData getNoteTabData() {
        return this.noteTabData;
    }

    @NotNull
    public final NoteTabDataChangedEvent copy(@NotNull EditorBundle editorBundle, @NotNull SyncNoteModel syncNoteModel, @NotNull NoteTabData noteTabData) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(syncNoteModel, "syncNoteModel");
        Intrinsics.checkNotNullParameter(noteTabData, "noteTabData");
        return new NoteTabDataChangedEvent(editorBundle, syncNoteModel, noteTabData);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NoteTabDataChangedEvent)) {
            return false;
        }
        NoteTabDataChangedEvent noteTabDataChangedEvent = (NoteTabDataChangedEvent) other;
        return Intrinsics.areEqual(this.editorBundle, noteTabDataChangedEvent.editorBundle) && Intrinsics.areEqual(this.syncNoteModel, noteTabDataChangedEvent.syncNoteModel) && Intrinsics.areEqual(this.noteTabData, noteTabDataChangedEvent.noteTabData);
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final NoteTabData getNoteTabData() {
        return this.noteTabData;
    }

    @NotNull
    public final SyncNoteModel getSyncNoteModel() {
        return this.syncNoteModel;
    }

    public int hashCode() {
        return (((this.editorBundle.hashCode() * 31) + this.syncNoteModel.hashCode()) * 31) + this.noteTabData.hashCode();
    }

    @NotNull
    public String toString() {
        return "NoteTabDataChangedEvent(editorBundle=" + this.editorBundle + ", syncNoteModel=" + this.syncNoteModel + ", noteTabData=" + this.noteTabData + ')';
    }
}
