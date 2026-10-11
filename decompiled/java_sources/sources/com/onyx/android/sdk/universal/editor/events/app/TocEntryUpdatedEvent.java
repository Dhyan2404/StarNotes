package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J#\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryUpdatedEvent;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "component1", "", "component2", "entryList", "pageIndexChanged", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Ljava/util/List;", "getEntryList", "()Ljava/util/List;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getPageIndexChanged", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class TocEntryUpdatedEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<VirtualTocModel> entryList;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final boolean pageIndexChanged;

    public TocEntryUpdatedEvent(@NotNull List<VirtualTocModel> entryList, boolean z) {
        Intrinsics.checkNotNullParameter(entryList, "entryList");
        this.entryList = entryList;
        this.pageIndexChanged = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TocEntryUpdatedEvent copy$default(TocEntryUpdatedEvent tocEntryUpdatedEvent, List list, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            list = tocEntryUpdatedEvent.entryList;
        }
        if ((i & 2) != 0) {
            z = tocEntryUpdatedEvent.pageIndexChanged;
        }
        return tocEntryUpdatedEvent.copy(list, z);
    }

    @NotNull
    public final List<VirtualTocModel> component1() {
        return this.entryList;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getPageIndexChanged() {
        return this.pageIndexChanged;
    }

    @NotNull
    public final TocEntryUpdatedEvent copy(@NotNull List<VirtualTocModel> entryList, boolean pageIndexChanged) {
        Intrinsics.checkNotNullParameter(entryList, "entryList");
        return new TocEntryUpdatedEvent(entryList, pageIndexChanged);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TocEntryUpdatedEvent)) {
            return false;
        }
        TocEntryUpdatedEvent tocEntryUpdatedEvent = (TocEntryUpdatedEvent) other;
        return Intrinsics.areEqual(this.entryList, tocEntryUpdatedEvent.entryList) && this.pageIndexChanged == tocEntryUpdatedEvent.pageIndexChanged;
    }

    @NotNull
    public final List<VirtualTocModel> getEntryList() {
        return this.entryList;
    }

    public final boolean getPageIndexChanged() {
        return this.pageIndexChanged;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.entryList.hashCode() * 31;
        boolean z = this.pageIndexChanged;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "TocEntryUpdatedEvent(entryList=" + this.entryList + ", pageIndexChanged=" + this.pageIndexChanged + ')';
    }

    public /* synthetic */ TocEntryUpdatedEvent(List list, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? false : z);
    }
}
