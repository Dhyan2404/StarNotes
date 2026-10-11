package com.onyx.android.sdk.cloudstorage.model;

import com.onyx.android.sdk.cloudstorage.model.common.FileReplacePolicy;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001c\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b.\u0010/J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\tHÆ\u0003J7\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\tHÆ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0011HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003R(\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;", "", "", "", "component1", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "component2", "Lcom/onyx/android/sdk/cloudstorage/model/common/FileReplacePolicy;", "component3", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "component4", "filePaths", "targetFolderBean", "fileReplacePolicy", "conflictDelOperation", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getFilePaths", "()Ljava/util/List;", "setFilePaths", "(Ljava/util/List;)V", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "getTargetFolderBean", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "setTargetFolderBean", "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "c", "Lcom/onyx/android/sdk/cloudstorage/model/common/FileReplacePolicy;", "getFileReplacePolicy", "()Lcom/onyx/android/sdk/cloudstorage/model/common/FileReplacePolicy;", "setFileReplacePolicy", "(Lcom/onyx/android/sdk/cloudstorage/model/common/FileReplacePolicy;)V", "d", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "getConflictDelOperation", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "setConflictDelOperation", "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Lcom/onyx/android/sdk/cloudstorage/model/common/FileReplacePolicy;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class PasteLocalFileOperation {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public List<String> filePaths;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public CloudFileBean targetFolderBean;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public FileReplacePolicy fileReplacePolicy;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public CloudFileOperation conflictDelOperation;

    public PasteLocalFileOperation(@NotNull List<String> filePaths, @NotNull CloudFileBean targetFolderBean, @NotNull FileReplacePolicy fileReplacePolicy, @NotNull CloudFileOperation conflictDelOperation) {
        Intrinsics.checkNotNullParameter(filePaths, "filePaths");
        Intrinsics.checkNotNullParameter(targetFolderBean, "targetFolderBean");
        Intrinsics.checkNotNullParameter(fileReplacePolicy, "fileReplacePolicy");
        Intrinsics.checkNotNullParameter(conflictDelOperation, "conflictDelOperation");
        this.filePaths = filePaths;
        this.targetFolderBean = targetFolderBean;
        this.fileReplacePolicy = fileReplacePolicy;
        this.conflictDelOperation = conflictDelOperation;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PasteLocalFileOperation copy$default(PasteLocalFileOperation pasteLocalFileOperation, List list, CloudFileBean cloudFileBean, FileReplacePolicy fileReplacePolicy, CloudFileOperation cloudFileOperation, int i, Object obj) {
        if ((i & 1) != 0) {
            list = pasteLocalFileOperation.filePaths;
        }
        if ((i & 2) != 0) {
            cloudFileBean = pasteLocalFileOperation.targetFolderBean;
        }
        if ((i & 4) != 0) {
            fileReplacePolicy = pasteLocalFileOperation.fileReplacePolicy;
        }
        if ((i & 8) != 0) {
            cloudFileOperation = pasteLocalFileOperation.conflictDelOperation;
        }
        return pasteLocalFileOperation.copy(list, cloudFileBean, fileReplacePolicy, cloudFileOperation);
    }

    @NotNull
    public final List<String> component1() {
        return this.filePaths;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final CloudFileBean getTargetFolderBean() {
        return this.targetFolderBean;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final FileReplacePolicy getFileReplacePolicy() {
        return this.fileReplacePolicy;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final CloudFileOperation getConflictDelOperation() {
        return this.conflictDelOperation;
    }

    @NotNull
    public final PasteLocalFileOperation copy(@NotNull List<String> filePaths, @NotNull CloudFileBean targetFolderBean, @NotNull FileReplacePolicy fileReplacePolicy, @NotNull CloudFileOperation conflictDelOperation) {
        Intrinsics.checkNotNullParameter(filePaths, "filePaths");
        Intrinsics.checkNotNullParameter(targetFolderBean, "targetFolderBean");
        Intrinsics.checkNotNullParameter(fileReplacePolicy, "fileReplacePolicy");
        Intrinsics.checkNotNullParameter(conflictDelOperation, "conflictDelOperation");
        return new PasteLocalFileOperation(filePaths, targetFolderBean, fileReplacePolicy, conflictDelOperation);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PasteLocalFileOperation)) {
            return false;
        }
        PasteLocalFileOperation pasteLocalFileOperation = (PasteLocalFileOperation) other;
        return Intrinsics.areEqual(this.filePaths, pasteLocalFileOperation.filePaths) && Intrinsics.areEqual(this.targetFolderBean, pasteLocalFileOperation.targetFolderBean) && this.fileReplacePolicy == pasteLocalFileOperation.fileReplacePolicy && Intrinsics.areEqual(this.conflictDelOperation, pasteLocalFileOperation.conflictDelOperation);
    }

    @NotNull
    public final CloudFileOperation getConflictDelOperation() {
        return this.conflictDelOperation;
    }

    @NotNull
    public final List<String> getFilePaths() {
        return this.filePaths;
    }

    @NotNull
    public final FileReplacePolicy getFileReplacePolicy() {
        return this.fileReplacePolicy;
    }

    @NotNull
    public final CloudFileBean getTargetFolderBean() {
        return this.targetFolderBean;
    }

    public int hashCode() {
        return (((((this.filePaths.hashCode() * 31) + this.targetFolderBean.hashCode()) * 31) + this.fileReplacePolicy.hashCode()) * 31) + this.conflictDelOperation.hashCode();
    }

    public final void setConflictDelOperation(@NotNull CloudFileOperation cloudFileOperation) {
        Intrinsics.checkNotNullParameter(cloudFileOperation, "<set-?>");
        this.conflictDelOperation = cloudFileOperation;
    }

    public final void setFilePaths(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.filePaths = list;
    }

    public final void setFileReplacePolicy(@NotNull FileReplacePolicy fileReplacePolicy) {
        Intrinsics.checkNotNullParameter(fileReplacePolicy, "<set-?>");
        this.fileReplacePolicy = fileReplacePolicy;
    }

    public final void setTargetFolderBean(@NotNull CloudFileBean cloudFileBean) {
        Intrinsics.checkNotNullParameter(cloudFileBean, "<set-?>");
        this.targetFolderBean = cloudFileBean;
    }

    @NotNull
    public String toString() {
        return "PasteLocalFileOperation(filePaths=" + this.filePaths + ", targetFolderBean=" + this.targetFolderBean + ", fileReplacePolicy=" + this.fileReplacePolicy + ", conflictDelOperation=" + this.conflictDelOperation + ')';
    }
}
