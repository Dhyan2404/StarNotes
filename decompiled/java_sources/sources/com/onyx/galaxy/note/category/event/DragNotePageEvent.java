package com.onyx.galaxy.note.category.event;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001a\u0010\u001bJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u0005HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\u0017\u0010\t\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/event/DragNotePageEvent;", "", "", "component1", "component2", "", "component3", "originId", "targetId", "dragState", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getOriginId", "()Ljava/lang/String;", "b", "getTargetId", "c", "I", "getDragState", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class DragNotePageEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String originId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String targetId;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final int dragState;

    public DragNotePageEvent(@NotNull String originId, @NotNull String targetId, int i) {
        Intrinsics.checkNotNullParameter(originId, "originId");
        Intrinsics.checkNotNullParameter(targetId, "targetId");
        this.originId = originId;
        this.targetId = targetId;
        this.dragState = i;
    }

    public static /* synthetic */ DragNotePageEvent copy$default(DragNotePageEvent dragNotePageEvent, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = dragNotePageEvent.originId;
        }
        if ((i2 & 2) != 0) {
            str2 = dragNotePageEvent.targetId;
        }
        if ((i2 & 4) != 0) {
            i = dragNotePageEvent.dragState;
        }
        return dragNotePageEvent.copy(str, str2, i);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getOriginId() {
        return this.originId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getTargetId() {
        return this.targetId;
    }

    /* renamed from: component3, reason: from getter */
    public final int getDragState() {
        return this.dragState;
    }

    @NotNull
    public final DragNotePageEvent copy(@NotNull String originId, @NotNull String targetId, int dragState) {
        Intrinsics.checkNotNullParameter(originId, "originId");
        Intrinsics.checkNotNullParameter(targetId, "targetId");
        return new DragNotePageEvent(originId, targetId, dragState);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DragNotePageEvent)) {
            return false;
        }
        DragNotePageEvent dragNotePageEvent = (DragNotePageEvent) other;
        return Intrinsics.areEqual(this.originId, dragNotePageEvent.originId) && Intrinsics.areEqual(this.targetId, dragNotePageEvent.targetId) && this.dragState == dragNotePageEvent.dragState;
    }

    public final int getDragState() {
        return this.dragState;
    }

    @NotNull
    public final String getOriginId() {
        return this.originId;
    }

    @NotNull
    public final String getTargetId() {
        return this.targetId;
    }

    public int hashCode() {
        return (((this.originId.hashCode() * 31) + this.targetId.hashCode()) * 31) + Integer.hashCode(this.dragState);
    }

    @NotNull
    public String toString() {
        return "DragNotePageEvent(originId=" + this.originId + ", targetId=" + this.targetId + ", dragState=" + this.dragState + ')';
    }
}
