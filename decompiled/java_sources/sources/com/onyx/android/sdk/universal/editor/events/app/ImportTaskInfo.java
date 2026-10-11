package com.onyx.android.sdk.universal.editor.events.app;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;", "", "", "component1", "component2", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;", "component3", "docPath", "originalFileName", "state", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getDocPath", "()Ljava/lang/String;", "b", "getOriginalFileName", "c", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;", "getState", "()Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ImportTaskInfo {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String docPath;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String originalFileName;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final ImportDocumentState state;

    public ImportTaskInfo(@NotNull String docPath, @NotNull String originalFileName, @NotNull ImportDocumentState state) {
        Intrinsics.checkNotNullParameter(docPath, "docPath");
        Intrinsics.checkNotNullParameter(originalFileName, "originalFileName");
        Intrinsics.checkNotNullParameter(state, "state");
        this.docPath = docPath;
        this.originalFileName = originalFileName;
        this.state = state;
    }

    public static /* synthetic */ ImportTaskInfo copy$default(ImportTaskInfo importTaskInfo, String str, String str2, ImportDocumentState importDocumentState, int i, Object obj) {
        if ((i & 1) != 0) {
            str = importTaskInfo.docPath;
        }
        if ((i & 2) != 0) {
            str2 = importTaskInfo.originalFileName;
        }
        if ((i & 4) != 0) {
            importDocumentState = importTaskInfo.state;
        }
        return importTaskInfo.copy(str, str2, importDocumentState);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getDocPath() {
        return this.docPath;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getOriginalFileName() {
        return this.originalFileName;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final ImportDocumentState getState() {
        return this.state;
    }

    @NotNull
    public final ImportTaskInfo copy(@NotNull String docPath, @NotNull String originalFileName, @NotNull ImportDocumentState state) {
        Intrinsics.checkNotNullParameter(docPath, "docPath");
        Intrinsics.checkNotNullParameter(originalFileName, "originalFileName");
        Intrinsics.checkNotNullParameter(state, "state");
        return new ImportTaskInfo(docPath, originalFileName, state);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ImportTaskInfo)) {
            return false;
        }
        ImportTaskInfo importTaskInfo = (ImportTaskInfo) other;
        return Intrinsics.areEqual(this.docPath, importTaskInfo.docPath) && Intrinsics.areEqual(this.originalFileName, importTaskInfo.originalFileName) && this.state == importTaskInfo.state;
    }

    @NotNull
    public final String getDocPath() {
        return this.docPath;
    }

    @NotNull
    public final String getOriginalFileName() {
        return this.originalFileName;
    }

    @NotNull
    public final ImportDocumentState getState() {
        return this.state;
    }

    public int hashCode() {
        return (((this.docPath.hashCode() * 31) + this.originalFileName.hashCode()) * 31) + this.state.hashCode();
    }

    @NotNull
    public String toString() {
        return "ImportTaskInfo(docPath=" + this.docPath + ", originalFileName=" + this.originalFileName + ", state=" + this.state + ')';
    }
}
