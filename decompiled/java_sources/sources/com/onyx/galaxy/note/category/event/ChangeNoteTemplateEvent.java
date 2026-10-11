package com.onyx.galaxy.note.category.event;

import com.onyx.android.sdk.replicator.note.bean.ApplyTemplateInfo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/event/ChangeNoteTemplateEvent;", "", "", "component1", "Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;", "component2", "noteId", "applyTemplateInfo", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getNoteId", "()Ljava/lang/String;", "b", "Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;", "getApplyTemplateInfo", "()Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class ChangeNoteTemplateEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String noteId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final ApplyTemplateInfo applyTemplateInfo;

    public ChangeNoteTemplateEvent(@NotNull String noteId, @NotNull ApplyTemplateInfo applyTemplateInfo) {
        Intrinsics.checkNotNullParameter(noteId, "noteId");
        Intrinsics.checkNotNullParameter(applyTemplateInfo, "applyTemplateInfo");
        this.noteId = noteId;
        this.applyTemplateInfo = applyTemplateInfo;
    }

    public static /* synthetic */ ChangeNoteTemplateEvent copy$default(ChangeNoteTemplateEvent changeNoteTemplateEvent, String str, ApplyTemplateInfo applyTemplateInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            str = changeNoteTemplateEvent.noteId;
        }
        if ((i & 2) != 0) {
            applyTemplateInfo = changeNoteTemplateEvent.applyTemplateInfo;
        }
        return changeNoteTemplateEvent.copy(str, applyTemplateInfo);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getNoteId() {
        return this.noteId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final ApplyTemplateInfo getApplyTemplateInfo() {
        return this.applyTemplateInfo;
    }

    @NotNull
    public final ChangeNoteTemplateEvent copy(@NotNull String noteId, @NotNull ApplyTemplateInfo applyTemplateInfo) {
        Intrinsics.checkNotNullParameter(noteId, "noteId");
        Intrinsics.checkNotNullParameter(applyTemplateInfo, "applyTemplateInfo");
        return new ChangeNoteTemplateEvent(noteId, applyTemplateInfo);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ChangeNoteTemplateEvent)) {
            return false;
        }
        ChangeNoteTemplateEvent changeNoteTemplateEvent = (ChangeNoteTemplateEvent) other;
        return Intrinsics.areEqual(this.noteId, changeNoteTemplateEvent.noteId) && Intrinsics.areEqual(this.applyTemplateInfo, changeNoteTemplateEvent.applyTemplateInfo);
    }

    @NotNull
    public final ApplyTemplateInfo getApplyTemplateInfo() {
        return this.applyTemplateInfo;
    }

    @NotNull
    public final String getNoteId() {
        return this.noteId;
    }

    public int hashCode() {
        return (this.noteId.hashCode() * 31) + this.applyTemplateInfo.hashCode();
    }

    @NotNull
    public String toString() {
        return "ChangeNoteTemplateEvent(noteId=" + this.noteId + ", applyTemplateInfo=" + this.applyTemplateInfo + ')';
    }
}
