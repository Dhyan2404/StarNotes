package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerUpdatedEvent;", "", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "component1", "pageInfo", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "getPageInfo", "()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class NoteLayerUpdatedEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final PageInfo pageInfo;

    public NoteLayerUpdatedEvent(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        this.pageInfo = pageInfo;
    }

    public static /* synthetic */ NoteLayerUpdatedEvent copy$default(NoteLayerUpdatedEvent noteLayerUpdatedEvent, PageInfo pageInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            pageInfo = noteLayerUpdatedEvent.pageInfo;
        }
        return noteLayerUpdatedEvent.copy(pageInfo);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final PageInfo getPageInfo() {
        return this.pageInfo;
    }

    @NotNull
    public final NoteLayerUpdatedEvent copy(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        return new NoteLayerUpdatedEvent(pageInfo);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof NoteLayerUpdatedEvent) && Intrinsics.areEqual(this.pageInfo, ((NoteLayerUpdatedEvent) other).pageInfo);
    }

    @NotNull
    public final PageInfo getPageInfo() {
        return this.pageInfo;
    }

    public int hashCode() {
        return this.pageInfo.hashCode();
    }

    @NotNull
    public String toString() {
        return "NoteLayerUpdatedEvent(pageInfo=" + this.pageInfo + ')';
    }
}
