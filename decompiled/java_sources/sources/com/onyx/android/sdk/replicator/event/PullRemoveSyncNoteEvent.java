package com.onyx.android.sdk.replicator.event;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\u0019\u0010\u0006\u001a\u00020\u00002\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0003HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R(\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/event/PullRemoveSyncNoteEvent;", "", "", "", "component1", "list", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class PullRemoveSyncNoteEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public List<String> list;

    public PullRemoveSyncNoteEvent(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PullRemoveSyncNoteEvent copy$default(PullRemoveSyncNoteEvent pullRemoveSyncNoteEvent, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = pullRemoveSyncNoteEvent.list;
        }
        return pullRemoveSyncNoteEvent.copy(list);
    }

    @NotNull
    public final List<String> component1() {
        return this.list;
    }

    @NotNull
    public final PullRemoveSyncNoteEvent copy(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return new PullRemoveSyncNoteEvent(list);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PullRemoveSyncNoteEvent) && Intrinsics.areEqual(this.list, ((PullRemoveSyncNoteEvent) other).list);
    }

    @NotNull
    public final List<String> getList() {
        return this.list;
    }

    public int hashCode() {
        return this.list.hashCode();
    }

    public final void setList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.list = list;
    }

    @NotNull
    public String toString() {
        return "PullRemoveSyncNoteEvent(list=" + this.list + ')';
    }
}
