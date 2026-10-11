package com.onyx.galaxy.note.category.event;

import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\u0019\u0010\u0006\u001a\u00020\u00002\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/event/OnDeleteNoteEvent;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "component1", "nodes", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getNodes", "()Ljava/util/List;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class OnDeleteNoteEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<SyncNoteModel> nodes;

    public OnDeleteNoteEvent(@NotNull List<SyncNoteModel> nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        this.nodes = nodes;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OnDeleteNoteEvent copy$default(OnDeleteNoteEvent onDeleteNoteEvent, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = onDeleteNoteEvent.nodes;
        }
        return onDeleteNoteEvent.copy(list);
    }

    @NotNull
    public final List<SyncNoteModel> component1() {
        return this.nodes;
    }

    @NotNull
    public final OnDeleteNoteEvent copy(@NotNull List<SyncNoteModel> nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        return new OnDeleteNoteEvent(nodes);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof OnDeleteNoteEvent) && Intrinsics.areEqual(this.nodes, ((OnDeleteNoteEvent) other).nodes);
    }

    @NotNull
    public final List<SyncNoteModel> getNodes() {
        return this.nodes;
    }

    public int hashCode() {
        return this.nodes.hashCode();
    }

    @NotNull
    public String toString() {
        return "OnDeleteNoteEvent(nodes=" + this.nodes + ')';
    }
}
