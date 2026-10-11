package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0016\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b!\u0010\"J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\f\u001a\u00020\u0004HÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\n\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "component1", "", "component2", "", "component3", "syncNoteModel", CouchFieldKey.KEY_TOC_PAGE_ID, "updateTab", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getSyncNoteModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getPageId", "()Ljava/lang/String;", "setPageId", "(Ljava/lang/String;)V", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getUpdateTab", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setUpdateTab", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ActivateDocumentEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final SyncNoteModel syncNoteModel;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String pageId;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public boolean updateTab;

    public ActivateDocumentEvent(@NotNull SyncNoteModel syncNoteModel, @NotNull String pageId, boolean z) {
        Intrinsics.checkNotNullParameter(syncNoteModel, "syncNoteModel");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        this.syncNoteModel = syncNoteModel;
        this.pageId = pageId;
        this.updateTab = z;
    }

    public static /* synthetic */ ActivateDocumentEvent copy$default(ActivateDocumentEvent activateDocumentEvent, SyncNoteModel syncNoteModel, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            syncNoteModel = activateDocumentEvent.syncNoteModel;
        }
        if ((i & 2) != 0) {
            str = activateDocumentEvent.pageId;
        }
        if ((i & 4) != 0) {
            z = activateDocumentEvent.updateTab;
        }
        return activateDocumentEvent.copy(syncNoteModel, str, z);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final SyncNoteModel getSyncNoteModel() {
        return this.syncNoteModel;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getPageId() {
        return this.pageId;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getUpdateTab() {
        return this.updateTab;
    }

    @NotNull
    public final ActivateDocumentEvent copy(@NotNull SyncNoteModel syncNoteModel, @NotNull String pageId, boolean updateTab) {
        Intrinsics.checkNotNullParameter(syncNoteModel, "syncNoteModel");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return new ActivateDocumentEvent(syncNoteModel, pageId, updateTab);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ActivateDocumentEvent)) {
            return false;
        }
        ActivateDocumentEvent activateDocumentEvent = (ActivateDocumentEvent) other;
        return Intrinsics.areEqual(this.syncNoteModel, activateDocumentEvent.syncNoteModel) && Intrinsics.areEqual(this.pageId, activateDocumentEvent.pageId) && this.updateTab == activateDocumentEvent.updateTab;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    @NotNull
    public final SyncNoteModel getSyncNoteModel() {
        return this.syncNoteModel;
    }

    public final boolean getUpdateTab() {
        return this.updateTab;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.syncNoteModel.hashCode() * 31) + this.pageId.hashCode()) * 31;
        boolean z = this.updateTab;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final void setPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageId = str;
    }

    public final void setUpdateTab(boolean z) {
        this.updateTab = z;
    }

    @NotNull
    public String toString() {
        return "ActivateDocumentEvent(syncNoteModel=" + this.syncNoteModel + ", pageId=" + this.pageId + ", updateTab=" + this.updateTab + ')';
    }

    public /* synthetic */ ActivateDocumentEvent(SyncNoteModel syncNoteModel, String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(syncNoteModel, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? true : z);
    }
}
