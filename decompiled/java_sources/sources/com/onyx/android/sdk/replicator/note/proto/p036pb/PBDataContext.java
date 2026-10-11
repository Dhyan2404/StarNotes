package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteArgs;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b.\u0010/J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0004HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R$\u0010\u001e\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010-\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "component1", "", "component2", "noteProviderHolder", "documentId", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "getNoteProviderHolder", "()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getDocumentId", "()Ljava/lang/String;", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;", "c", "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;", "getExportNoteArgs", "()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;", "setExportNoteArgs", "(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;)V", "exportNoteArgs", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;", "d", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;", "getCopyNoteArgs", "()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;", "setCopyNoteArgs", "(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V", "copyNoteArgs", "e", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getPrintLogToFile", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setPrintLogToFile", "(Z)V", "printLogToFile", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class PBDataContext {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final NoteProviderHolder noteProviderHolder;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String documentId;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public ExportNoteArgs exportNoteArgs;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public CopyNoteArgs copyNoteArgs;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean printLogToFile;

    public PBDataContext(@NotNull NoteProviderHolder noteProviderHolder, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(noteProviderHolder, "noteProviderHolder");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.noteProviderHolder = noteProviderHolder;
        this.documentId = documentId;
    }

    public static /* synthetic */ PBDataContext copy$default(PBDataContext pBDataContext, NoteProviderHolder noteProviderHolder, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            noteProviderHolder = pBDataContext.noteProviderHolder;
        }
        if ((i & 2) != 0) {
            str = pBDataContext.documentId;
        }
        return pBDataContext.copy(noteProviderHolder, str);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final NoteProviderHolder getNoteProviderHolder() {
        return this.noteProviderHolder;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getDocumentId() {
        return this.documentId;
    }

    @NotNull
    public final PBDataContext copy(@NotNull NoteProviderHolder noteProviderHolder, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(noteProviderHolder, "noteProviderHolder");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return new PBDataContext(noteProviderHolder, documentId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PBDataContext)) {
            return false;
        }
        PBDataContext pBDataContext = (PBDataContext) other;
        return Intrinsics.areEqual(this.noteProviderHolder, pBDataContext.noteProviderHolder) && Intrinsics.areEqual(this.documentId, pBDataContext.documentId);
    }

    @Nullable
    public final CopyNoteArgs getCopyNoteArgs() {
        return this.copyNoteArgs;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final ExportNoteArgs getExportNoteArgs() {
        return this.exportNoteArgs;
    }

    @NotNull
    public final NoteProviderHolder getNoteProviderHolder() {
        return this.noteProviderHolder;
    }

    public final boolean getPrintLogToFile() {
        return this.printLogToFile;
    }

    public int hashCode() {
        return (this.noteProviderHolder.hashCode() * 31) + this.documentId.hashCode();
    }

    public final void setCopyNoteArgs(@Nullable CopyNoteArgs copyNoteArgs) {
        this.copyNoteArgs = copyNoteArgs;
    }

    public final void setExportNoteArgs(@Nullable ExportNoteArgs exportNoteArgs) {
        this.exportNoteArgs = exportNoteArgs;
    }

    public final void setPrintLogToFile(boolean z) {
        this.printLogToFile = z;
    }

    @NotNull
    public String toString() {
        return "PBDataContext(noteProviderHolder=" + this.noteProviderHolder + ", documentId=" + this.documentId + ')';
    }
}
