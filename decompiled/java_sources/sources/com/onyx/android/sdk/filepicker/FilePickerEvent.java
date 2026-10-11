package com.onyx.android.sdk.filepicker;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003J#\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\t\u0010\f\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/filepicker/FilePickerEvent;", "", "", "component1", "", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "component2", "requestCode", "documentBeanList", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getRequestCode", "()I", "b", "Ljava/util/List;", "getDocumentBeanList", "()Ljava/util/List;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILjava/util/List;)V", "sdk-imagepicker_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class FilePickerEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final int requestCode;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<DocumentBean> documentBeanList;

    public FilePickerEvent(int i, @NotNull List<DocumentBean> documentBeanList) {
        Intrinsics.checkNotNullParameter(documentBeanList, "documentBeanList");
        this.requestCode = i;
        this.documentBeanList = documentBeanList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FilePickerEvent copy$default(FilePickerEvent filePickerEvent, int i, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = filePickerEvent.requestCode;
        }
        if ((i2 & 2) != 0) {
            list = filePickerEvent.documentBeanList;
        }
        return filePickerEvent.copy(i, list);
    }

    /* renamed from: component1, reason: from getter */
    public final int getRequestCode() {
        return this.requestCode;
    }

    @NotNull
    public final List<DocumentBean> component2() {
        return this.documentBeanList;
    }

    @NotNull
    public final FilePickerEvent copy(int requestCode, @NotNull List<DocumentBean> documentBeanList) {
        Intrinsics.checkNotNullParameter(documentBeanList, "documentBeanList");
        return new FilePickerEvent(requestCode, documentBeanList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FilePickerEvent)) {
            return false;
        }
        FilePickerEvent filePickerEvent = (FilePickerEvent) other;
        return this.requestCode == filePickerEvent.requestCode && Intrinsics.areEqual(this.documentBeanList, filePickerEvent.documentBeanList);
    }

    @NotNull
    public final List<DocumentBean> getDocumentBeanList() {
        return this.documentBeanList;
    }

    public final int getRequestCode() {
        return this.requestCode;
    }

    public int hashCode() {
        return (Integer.hashCode(this.requestCode) * 31) + this.documentBeanList.hashCode();
    }

    @NotNull
    public String toString() {
        return "FilePickerEvent(requestCode=" + this.requestCode + ", documentBeanList=" + this.documentBeanList + ')';
    }
}
