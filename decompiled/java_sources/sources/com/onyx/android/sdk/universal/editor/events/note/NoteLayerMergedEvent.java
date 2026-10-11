package com.onyx.android.sdk.universal.editor.events.note;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0003HÆ\u0003J#\u0010\b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\u000b\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerMergedEvent;", "", "", "", "component1", "component2", "srcLayerIds", "targetLayerId", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getSrcLayerIds", "()Ljava/util/List;", "b", "I", "getTargetLayerId", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class NoteLayerMergedEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<Integer> srcLayerIds;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final int targetLayerId;

    public NoteLayerMergedEvent(@NotNull List<Integer> srcLayerIds, int i) {
        Intrinsics.checkNotNullParameter(srcLayerIds, "srcLayerIds");
        this.srcLayerIds = srcLayerIds;
        this.targetLayerId = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NoteLayerMergedEvent copy$default(NoteLayerMergedEvent noteLayerMergedEvent, List list, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = noteLayerMergedEvent.srcLayerIds;
        }
        if ((i2 & 2) != 0) {
            i = noteLayerMergedEvent.targetLayerId;
        }
        return noteLayerMergedEvent.copy(list, i);
    }

    @NotNull
    public final List<Integer> component1() {
        return this.srcLayerIds;
    }

    /* renamed from: component2, reason: from getter */
    public final int getTargetLayerId() {
        return this.targetLayerId;
    }

    @NotNull
    public final NoteLayerMergedEvent copy(@NotNull List<Integer> srcLayerIds, int targetLayerId) {
        Intrinsics.checkNotNullParameter(srcLayerIds, "srcLayerIds");
        return new NoteLayerMergedEvent(srcLayerIds, targetLayerId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NoteLayerMergedEvent)) {
            return false;
        }
        NoteLayerMergedEvent noteLayerMergedEvent = (NoteLayerMergedEvent) other;
        return Intrinsics.areEqual(this.srcLayerIds, noteLayerMergedEvent.srcLayerIds) && this.targetLayerId == noteLayerMergedEvent.targetLayerId;
    }

    @NotNull
    public final List<Integer> getSrcLayerIds() {
        return this.srcLayerIds;
    }

    public final int getTargetLayerId() {
        return this.targetLayerId;
    }

    public int hashCode() {
        return (this.srcLayerIds.hashCode() * 31) + Integer.hashCode(this.targetLayerId);
    }

    @NotNull
    public String toString() {
        return "NoteLayerMergedEvent(srcLayerIds=" + this.srcLayerIds + ", targetLayerId=" + this.targetLayerId + ')';
    }
}
