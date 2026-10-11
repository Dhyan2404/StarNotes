package com.onyx.android.sdk.universal.editor.events.app;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0007¢\u0006\u0004\b6\u00107J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\t\u001a\u00020\u0007HÆ\u0003J;\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\u0007HÆ\u0001J\t\u0010\u0010\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u0015\u001a\u0004\b!\u0010\u0017\"\u0004\b\"\u0010\u0019R\u0017\u0010\r\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010\u000e\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b'\u0010$\u001a\u0004\b(\u0010&R$\u00100\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00105\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010$\u001a\u0004\b2\u0010&\"\u0004\b3\u00104¨\u00068"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;", "", "", "component1", "", "component2", "component3", "", "component4", "component5", "path", FirebaseAnalytics.Param.SUCCESS, "originalFileName", "currentIndex", "total", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getSuccess", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setSuccess", "(Z)V", "c", "getOriginalFileName", "setOriginalFileName", "d", "I", "getCurrentIndex", "()I", "e", "getTotal", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getNoteModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "setNoteModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", "noteModel", C6998g.f39679a, "getImportNoteCount", "setImportNoteCount", "(I)V", "importNoteCount", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;ZLjava/lang/String;II)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ImportDocumentsResultEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public String path;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public boolean success;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public String originalFileName;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public final int currentIndex;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public final int total;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public SyncNoteModel noteModel;

    /* renamed from: g, reason: from kotlin metadata */
    public int importNoteCount;

    public ImportDocumentsResultEvent(@NotNull String path, boolean z, @NotNull String originalFileName, int i, int i2) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(originalFileName, "originalFileName");
        this.path = path;
        this.success = z;
        this.originalFileName = originalFileName;
        this.currentIndex = i;
        this.total = i2;
    }

    public static /* synthetic */ ImportDocumentsResultEvent copy$default(ImportDocumentsResultEvent importDocumentsResultEvent, String str, boolean z, String str2, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = importDocumentsResultEvent.path;
        }
        if ((i3 & 2) != 0) {
            z = importDocumentsResultEvent.success;
        }
        boolean z2 = z;
        if ((i3 & 4) != 0) {
            str2 = importDocumentsResultEvent.originalFileName;
        }
        String str3 = str2;
        if ((i3 & 8) != 0) {
            i = importDocumentsResultEvent.currentIndex;
        }
        int i4 = i;
        if ((i3 & 16) != 0) {
            i2 = importDocumentsResultEvent.total;
        }
        return importDocumentsResultEvent.copy(str, z2, str3, i4, i2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getSuccess() {
        return this.success;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getOriginalFileName() {
        return this.originalFileName;
    }

    /* renamed from: component4, reason: from getter */
    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    /* renamed from: component5, reason: from getter */
    public final int getTotal() {
        return this.total;
    }

    @NotNull
    public final ImportDocumentsResultEvent copy(@NotNull String path, boolean success, @NotNull String originalFileName, int currentIndex, int total) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(originalFileName, "originalFileName");
        return new ImportDocumentsResultEvent(path, success, originalFileName, currentIndex, total);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ImportDocumentsResultEvent)) {
            return false;
        }
        ImportDocumentsResultEvent importDocumentsResultEvent = (ImportDocumentsResultEvent) other;
        return Intrinsics.areEqual(this.path, importDocumentsResultEvent.path) && this.success == importDocumentsResultEvent.success && Intrinsics.areEqual(this.originalFileName, importDocumentsResultEvent.originalFileName) && this.currentIndex == importDocumentsResultEvent.currentIndex && this.total == importDocumentsResultEvent.total;
    }

    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    public final int getImportNoteCount() {
        return this.importNoteCount;
    }

    @Nullable
    public final SyncNoteModel getNoteModel() {
        return this.noteModel;
    }

    @NotNull
    public final String getOriginalFileName() {
        return this.originalFileName;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public final int getTotal() {
        return this.total;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.path.hashCode() * 31;
        boolean z = this.success;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((((hashCode + i) * 31) + this.originalFileName.hashCode()) * 31) + Integer.hashCode(this.currentIndex)) * 31) + Integer.hashCode(this.total);
    }

    public final void setImportNoteCount(int i) {
        this.importNoteCount = i;
    }

    public final void setNoteModel(@Nullable SyncNoteModel syncNoteModel) {
        this.noteModel = syncNoteModel;
    }

    public final void setOriginalFileName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.originalFileName = str;
    }

    public final void setPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.path = str;
    }

    public final void setSuccess(boolean z) {
        this.success = z;
    }

    @NotNull
    public String toString() {
        return "ImportDocumentsResultEvent(path=" + this.path + ", success=" + this.success + ", originalFileName=" + this.originalFileName + ", currentIndex=" + this.currentIndex + ", total=" + this.total + ')';
    }
}
