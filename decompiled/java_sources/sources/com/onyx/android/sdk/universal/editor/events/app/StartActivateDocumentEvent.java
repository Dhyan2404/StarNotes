package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u001e\b\u0086\b\u0018\u0000 .2\u00020\u0001:\u0001.B9\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0005¢\u0006\u0004\b,\u0010-J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\t\u001a\u00020\u0005HÆ\u0003J=\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u000e\u001a\u00020\u0005HÆ\u0001J\t\u0010\u0010\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0011HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\"\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018\"\u0004\b\u001b\u0010\u001cR\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R$\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\u001e\u001a\u0004\b*\u0010 \"\u0004\b+\u0010\"¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;", "", "", "component1", "component2", "", "component3", "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "component4", "component5", EditorConstants.ARGS_DOC_ID, CouchFieldKey.KEY_TOC_PAGE_ID, "updateTab", "openDocArgs", "saveBeforeActivate", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getDocId", "()Ljava/lang/String;", "b", "getPageId", "setPageId", "(Ljava/lang/String;)V", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getUpdateTab", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setUpdateTab", "(Z)V", "d", "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "getOpenDocArgs", "()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "setOpenDocArgs", "(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V", "e", "getSaveBeforeActivate", "setSaveBeforeActivate", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;ZLcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;Z)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class StartActivateDocumentEvent {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String docId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public String pageId;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public boolean updateTab;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @Nullable
    public OpenDocArgs openDocArgs;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public boolean saveBeforeActivate;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent$Companion;", "", "()V", "createFrom", "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;", "noteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "updateTab", "", "openDocArgs", "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ StartActivateDocumentEvent createFrom$default(Companion companion, SyncNoteModel syncNoteModel, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return companion.createFrom(syncNoteModel, z);
        }

        @NotNull
        public final StartActivateDocumentEvent createFrom(@NotNull SyncNoteModel noteModel, boolean updateTab) {
            Intrinsics.checkNotNullParameter(noteModel, "noteModel");
            return createFrom(OpenDocArgs.INSTANCE.createFrom(noteModel), updateTab);
        }

        public Companion() {
        }

        public static /* synthetic */ StartActivateDocumentEvent createFrom$default(Companion companion, OpenDocArgs openDocArgs, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return companion.createFrom(openDocArgs, z);
        }

        @NotNull
        public final StartActivateDocumentEvent createFrom(@NotNull OpenDocArgs openDocArgs, boolean updateTab) {
            Intrinsics.checkNotNullParameter(openDocArgs, "openDocArgs");
            return new StartActivateDocumentEvent(openDocArgs.getDocumentId(), openDocArgs.getPageId(), updateTab, openDocArgs, false, 16, null);
        }
    }

    public StartActivateDocumentEvent(@NotNull String docId, @NotNull String pageId, boolean z, @Nullable OpenDocArgs openDocArgs, boolean z2) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        this.docId = docId;
        this.pageId = pageId;
        this.updateTab = z;
        this.openDocArgs = openDocArgs;
        this.saveBeforeActivate = z2;
    }

    public static /* synthetic */ StartActivateDocumentEvent copy$default(StartActivateDocumentEvent startActivateDocumentEvent, String str, String str2, boolean z, OpenDocArgs openDocArgs, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = startActivateDocumentEvent.docId;
        }
        if ((i & 2) != 0) {
            str2 = startActivateDocumentEvent.pageId;
        }
        String str3 = str2;
        if ((i & 4) != 0) {
            z = startActivateDocumentEvent.updateTab;
        }
        boolean z3 = z;
        if ((i & 8) != 0) {
            openDocArgs = startActivateDocumentEvent.openDocArgs;
        }
        OpenDocArgs openDocArgs2 = openDocArgs;
        if ((i & 16) != 0) {
            z2 = startActivateDocumentEvent.saveBeforeActivate;
        }
        return startActivateDocumentEvent.copy(str, str3, z3, openDocArgs2, z2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getDocId() {
        return this.docId;
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

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final OpenDocArgs getOpenDocArgs() {
        return this.openDocArgs;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getSaveBeforeActivate() {
        return this.saveBeforeActivate;
    }

    @NotNull
    public final StartActivateDocumentEvent copy(@NotNull String docId, @NotNull String pageId, boolean updateTab, @Nullable OpenDocArgs openDocArgs, boolean saveBeforeActivate) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return new StartActivateDocumentEvent(docId, pageId, updateTab, openDocArgs, saveBeforeActivate);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StartActivateDocumentEvent)) {
            return false;
        }
        StartActivateDocumentEvent startActivateDocumentEvent = (StartActivateDocumentEvent) other;
        return Intrinsics.areEqual(this.docId, startActivateDocumentEvent.docId) && Intrinsics.areEqual(this.pageId, startActivateDocumentEvent.pageId) && this.updateTab == startActivateDocumentEvent.updateTab && Intrinsics.areEqual(this.openDocArgs, startActivateDocumentEvent.openDocArgs) && this.saveBeforeActivate == startActivateDocumentEvent.saveBeforeActivate;
    }

    @NotNull
    public final String getDocId() {
        return this.docId;
    }

    @Nullable
    public final OpenDocArgs getOpenDocArgs() {
        return this.openDocArgs;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    public final boolean getSaveBeforeActivate() {
        return this.saveBeforeActivate;
    }

    public final boolean getUpdateTab() {
        return this.updateTab;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.docId.hashCode() * 31) + this.pageId.hashCode()) * 31;
        boolean z = this.updateTab;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        OpenDocArgs openDocArgs = this.openDocArgs;
        int hashCode2 = (i2 + (openDocArgs == null ? 0 : openDocArgs.hashCode())) * 31;
        boolean z2 = this.saveBeforeActivate;
        return hashCode2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public final void setOpenDocArgs(@Nullable OpenDocArgs openDocArgs) {
        this.openDocArgs = openDocArgs;
    }

    public final void setPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageId = str;
    }

    public final void setSaveBeforeActivate(boolean z) {
        this.saveBeforeActivate = z;
    }

    public final void setUpdateTab(boolean z) {
        this.updateTab = z;
    }

    @NotNull
    public String toString() {
        return "StartActivateDocumentEvent(docId=" + this.docId + ", pageId=" + this.pageId + ", updateTab=" + this.updateTab + ", openDocArgs=" + this.openDocArgs + ", saveBeforeActivate=" + this.saveBeforeActivate + ')';
    }

    public /* synthetic */ StartActivateDocumentEvent(String str, String str2, boolean z, OpenDocArgs openDocArgs, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? true : z, (i & 8) != 0 ? null : openDocArgs, (i & 16) != 0 ? true : z2);
    }
}
