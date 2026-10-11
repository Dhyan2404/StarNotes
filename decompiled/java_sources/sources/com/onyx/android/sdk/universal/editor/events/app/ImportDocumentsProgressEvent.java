package com.onyx.android.sdk.universal.editor.events.app;

import android.net.Uri;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.universal.docmanager.action.ImportDocumentsAction;
import com.onyx.android.sdk.universal.editor.data.NoteImportArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b$\b\u0086\b\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0006\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\b\u0012\u0006\u0010\u0018\u001a\u00020\n\u0012\u0006\u0010\u0019\u001a\u00020\f\u0012\u0006\u0010\u001a\u001a\u00020\f\u0012\u0006\u0010\u001b\u001a\u00020\u000f\u0012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011¢\u0006\u0004\bD\u0010EJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\bHÆ\u0003J\t\u0010\u000b\u001a\u00020\nHÆ\u0003J\t\u0010\r\u001a\u00020\fHÆ\u0003J\t\u0010\u000e\u001a\u00020\fHÆ\u0003J\t\u0010\u0010\u001a\u00020\u000fHÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011HÆ\u0003Jo\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0014\u001a\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\u00062\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\b\b\u0002\u0010\u0018\u001a\u00020\n2\b\b\u0002\u0010\u0019\u001a\u00020\f2\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\u000f2\u000e\b\u0002\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011HÆ\u0001J\t\u0010\u001f\u001a\u00020\u001eHÖ\u0001J\t\u0010 \u001a\u00020\fHÖ\u0001J\u0013\u0010#\u001a\u00020\"2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0014\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0017\u0010\u0015\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0017\u0010\u0016\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\b8\u0006¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0017\u0010\u0018\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R\u0017\u0010\u0019\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\u0017\u0010\u001a\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b<\u00109\u001a\u0004\b=\u0010;R\u0017\u0010\u001b\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010AR\u001d\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118\u0006¢\u0006\f\n\u0004\bB\u00101\u001a\u0004\bC\u00103¨\u0006F"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;", "", "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;", "component1", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;", "component2", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;", "component3", "", "component4", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "component5", "", "component6", "component7", "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "component8", "", "Landroid/net/Uri;", "component9", "action", "currentTaskInfo", "totalState", "taskInfoList", "progressInfo", "currentIndex", "totalImportCount", "importNoteArgs", "originUriList", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;", "getAction", "()Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;", "b", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;", "getCurrentTaskInfo", "()Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;", "c", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;", "getTotalState", "()Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;", "d", "Ljava/util/List;", "getTaskInfoList", "()Ljava/util/List;", "e", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "getProgressInfo", "()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", C6997f.f39671c, "I", "getCurrentIndex", "()I", C6998g.f39679a, "getTotalImportCount", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "getImportNoteArgs", "()Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;", "i", "getOriginUriList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;Ljava/util/List;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;IILcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ImportDocumentsProgressEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final ImportDocumentsAction action;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final ImportTaskInfo currentTaskInfo;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final ImportDocumentState totalState;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<ImportTaskInfo> taskInfoList;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @NotNull
    public final ProgressInfo progressInfo;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    public final int currentIndex;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    public final int totalImportCount;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    @NotNull
    public final NoteImportArgs importNoteArgs;

    /* renamed from: i, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<Uri> originUriList;

    /* JADX WARN: Multi-variable type inference failed */
    public ImportDocumentsProgressEvent(@NotNull ImportDocumentsAction action, @NotNull ImportTaskInfo currentTaskInfo, @NotNull ImportDocumentState totalState, @NotNull List<ImportTaskInfo> taskInfoList, @NotNull ProgressInfo progressInfo, int i, int i2, @NotNull NoteImportArgs importNoteArgs, @NotNull List<? extends Uri> originUriList) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(currentTaskInfo, "currentTaskInfo");
        Intrinsics.checkNotNullParameter(totalState, "totalState");
        Intrinsics.checkNotNullParameter(taskInfoList, "taskInfoList");
        Intrinsics.checkNotNullParameter(progressInfo, "progressInfo");
        Intrinsics.checkNotNullParameter(importNoteArgs, "importNoteArgs");
        Intrinsics.checkNotNullParameter(originUriList, "originUriList");
        this.action = action;
        this.currentTaskInfo = currentTaskInfo;
        this.totalState = totalState;
        this.taskInfoList = taskInfoList;
        this.progressInfo = progressInfo;
        this.currentIndex = i;
        this.totalImportCount = i2;
        this.importNoteArgs = importNoteArgs;
        this.originUriList = originUriList;
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final ImportDocumentsAction getAction() {
        return this.action;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final ImportTaskInfo getCurrentTaskInfo() {
        return this.currentTaskInfo;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final ImportDocumentState getTotalState() {
        return this.totalState;
    }

    @NotNull
    public final List<ImportTaskInfo> component4() {
        return this.taskInfoList;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final ProgressInfo getProgressInfo() {
        return this.progressInfo;
    }

    /* renamed from: component6, reason: from getter */
    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    /* renamed from: component7, reason: from getter */
    public final int getTotalImportCount() {
        return this.totalImportCount;
    }

    @NotNull
    /* renamed from: component8, reason: from getter */
    public final NoteImportArgs getImportNoteArgs() {
        return this.importNoteArgs;
    }

    @NotNull
    public final List<Uri> component9() {
        return this.originUriList;
    }

    @NotNull
    public final ImportDocumentsProgressEvent copy(@NotNull ImportDocumentsAction action, @NotNull ImportTaskInfo currentTaskInfo, @NotNull ImportDocumentState totalState, @NotNull List<ImportTaskInfo> taskInfoList, @NotNull ProgressInfo progressInfo, int currentIndex, int totalImportCount, @NotNull NoteImportArgs importNoteArgs, @NotNull List<? extends Uri> originUriList) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(currentTaskInfo, "currentTaskInfo");
        Intrinsics.checkNotNullParameter(totalState, "totalState");
        Intrinsics.checkNotNullParameter(taskInfoList, "taskInfoList");
        Intrinsics.checkNotNullParameter(progressInfo, "progressInfo");
        Intrinsics.checkNotNullParameter(importNoteArgs, "importNoteArgs");
        Intrinsics.checkNotNullParameter(originUriList, "originUriList");
        return new ImportDocumentsProgressEvent(action, currentTaskInfo, totalState, taskInfoList, progressInfo, currentIndex, totalImportCount, importNoteArgs, originUriList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ImportDocumentsProgressEvent)) {
            return false;
        }
        ImportDocumentsProgressEvent importDocumentsProgressEvent = (ImportDocumentsProgressEvent) other;
        return Intrinsics.areEqual(this.action, importDocumentsProgressEvent.action) && Intrinsics.areEqual(this.currentTaskInfo, importDocumentsProgressEvent.currentTaskInfo) && this.totalState == importDocumentsProgressEvent.totalState && Intrinsics.areEqual(this.taskInfoList, importDocumentsProgressEvent.taskInfoList) && Intrinsics.areEqual(this.progressInfo, importDocumentsProgressEvent.progressInfo) && this.currentIndex == importDocumentsProgressEvent.currentIndex && this.totalImportCount == importDocumentsProgressEvent.totalImportCount && Intrinsics.areEqual(this.importNoteArgs, importDocumentsProgressEvent.importNoteArgs) && Intrinsics.areEqual(this.originUriList, importDocumentsProgressEvent.originUriList);
    }

    @NotNull
    public final ImportDocumentsAction getAction() {
        return this.action;
    }

    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    @NotNull
    public final ImportTaskInfo getCurrentTaskInfo() {
        return this.currentTaskInfo;
    }

    @NotNull
    public final NoteImportArgs getImportNoteArgs() {
        return this.importNoteArgs;
    }

    @NotNull
    public final List<Uri> getOriginUriList() {
        return this.originUriList;
    }

    @NotNull
    public final ProgressInfo getProgressInfo() {
        return this.progressInfo;
    }

    @NotNull
    public final List<ImportTaskInfo> getTaskInfoList() {
        return this.taskInfoList;
    }

    public final int getTotalImportCount() {
        return this.totalImportCount;
    }

    @NotNull
    public final ImportDocumentState getTotalState() {
        return this.totalState;
    }

    public int hashCode() {
        return (((((((((((((((this.action.hashCode() * 31) + this.currentTaskInfo.hashCode()) * 31) + this.totalState.hashCode()) * 31) + this.taskInfoList.hashCode()) * 31) + this.progressInfo.hashCode()) * 31) + Integer.hashCode(this.currentIndex)) * 31) + Integer.hashCode(this.totalImportCount)) * 31) + this.importNoteArgs.hashCode()) * 31) + this.originUriList.hashCode();
    }

    @NotNull
    public String toString() {
        return "ImportDocumentsProgressEvent(action=" + this.action + ", currentTaskInfo=" + this.currentTaskInfo + ", totalState=" + this.totalState + ", taskInfoList=" + this.taskInfoList + ", progressInfo=" + this.progressInfo + ", currentIndex=" + this.currentIndex + ", totalImportCount=" + this.totalImportCount + ", importNoteArgs=" + this.importNoteArgs + ", originUriList=" + this.originUriList + ')';
    }

    public /* synthetic */ ImportDocumentsProgressEvent(ImportDocumentsAction importDocumentsAction, ImportTaskInfo importTaskInfo, ImportDocumentState importDocumentState, List list, ProgressInfo progressInfo, int i, int i2, NoteImportArgs noteImportArgs, List list2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(importDocumentsAction, importTaskInfo, (i3 & 4) != 0 ? ImportDocumentState.IMPORTING : importDocumentState, list, progressInfo, i, i2, noteImportArgs, list2);
    }
}
