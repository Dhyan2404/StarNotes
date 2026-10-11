package com.onyx.galaxy.note.category.event;

import com.onyx.android.sdk.data.NoteCreateFrom;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;", "", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "a", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "getNoteCreateInfo", "()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "noteCreateInfo", "Lcom/onyx/android/sdk/data/NoteCreateFrom;", "b", "Lcom/onyx/android/sdk/data/NoteCreateFrom;", "getNoteCreateFrom", "()Lcom/onyx/android/sdk/data/NoteCreateFrom;", "noteCreateFrom", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lcom/onyx/android/sdk/data/NoteCreateFrom;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NCreateScribbleNoteEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NoteCreateInfo noteCreateInfo;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final NoteCreateFrom noteCreateFrom;

    public NCreateScribbleNoteEvent(@NotNull NoteCreateInfo noteCreateInfo, @NotNull NoteCreateFrom noteCreateFrom) {
        Intrinsics.checkNotNullParameter(noteCreateInfo, "noteCreateInfo");
        Intrinsics.checkNotNullParameter(noteCreateFrom, "noteCreateFrom");
        this.noteCreateInfo = noteCreateInfo;
        this.noteCreateFrom = noteCreateFrom;
    }

    @NotNull
    public final NoteCreateFrom getNoteCreateFrom() {
        return this.noteCreateFrom;
    }

    @NotNull
    public final NoteCreateInfo getNoteCreateInfo() {
        return this.noteCreateInfo;
    }
}
