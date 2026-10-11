package com.onyx.android.sdk.universal.editor.events.app;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\u000b\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "component1", "", "component2", "entry", FirebaseAnalytics.Param.INDEX, "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "getEntry", "()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "b", "I", "getIndex", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class TocEntryInsertedEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final VirtualTocModel entry;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final int index;

    public TocEntryInsertedEvent(@NotNull VirtualTocModel entry, int i) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        this.entry = entry;
        this.index = i;
    }

    public static /* synthetic */ TocEntryInsertedEvent copy$default(TocEntryInsertedEvent tocEntryInsertedEvent, VirtualTocModel virtualTocModel, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            virtualTocModel = tocEntryInsertedEvent.entry;
        }
        if ((i2 & 2) != 0) {
            i = tocEntryInsertedEvent.index;
        }
        return tocEntryInsertedEvent.copy(virtualTocModel, i);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final VirtualTocModel getEntry() {
        return this.entry;
    }

    /* renamed from: component2, reason: from getter */
    public final int getIndex() {
        return this.index;
    }

    @NotNull
    public final TocEntryInsertedEvent copy(@NotNull VirtualTocModel entry, int index) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        return new TocEntryInsertedEvent(entry, index);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TocEntryInsertedEvent)) {
            return false;
        }
        TocEntryInsertedEvent tocEntryInsertedEvent = (TocEntryInsertedEvent) other;
        return Intrinsics.areEqual(this.entry, tocEntryInsertedEvent.entry) && this.index == tocEntryInsertedEvent.index;
    }

    @NotNull
    public final VirtualTocModel getEntry() {
        return this.entry;
    }

    public final int getIndex() {
        return this.index;
    }

    public int hashCode() {
        return (this.entry.hashCode() * 31) + Integer.hashCode(this.index);
    }

    @NotNull
    public String toString() {
        return "TocEntryInsertedEvent(entry=" + this.entry + ", index=" + this.index + ')';
    }
}
