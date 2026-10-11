package com.onyx.android.sdk.universal.editor.events.app;

import android.net.Uri;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.universal.editor.data.ImportSelectedContext;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b#\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b;\u0010<J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003JW\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0001J\t\u0010\u0017\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010\u0010\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010#\u001a\u0004\b)\u0010%\"\u0004\b*\u0010'R\"\u0010\u0011\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010#\u001a\u0004\b,\u0010%\"\u0004\b-\u0010'R\"\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010#\u001a\u0004\b/\u0010%\"\u0004\b0\u0010'R$\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:¨\u0006="}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;", "", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;", "component1", "", "component2", "component3", "component4", "component5", "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "component6", "", "Landroid/net/Uri;", "component7", "importImageState", "progress", "currentIndex", "totalImportCount", "importSuccessSize", "importSelectedContext", "uriList", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;", "getImportImageState", "()Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;", "setImportImageState", "(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;)V", "b", "I", "getProgress", "()I", "setProgress", "(I)V", "c", "getCurrentIndex", "setCurrentIndex", "d", "getTotalImportCount", "setTotalImportCount", "e", "getImportSuccessSize", "setImportSuccessSize", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "getImportSelectedContext", "()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;", "setImportSelectedContext", "(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V", C6998g.f39679a, "Ljava/util/List;", "getUriList", "()Ljava/util/List;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;IIIILcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class ImportImageProgressEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public ImportImageState importImageState;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public int progress;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public int currentIndex;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public int totalImportCount;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public int importSuccessSize;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @Nullable
    public ImportSelectedContext importSelectedContext;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<Uri> uriList;

    /* JADX WARN: Multi-variable type inference failed */
    public ImportImageProgressEvent(@NotNull ImportImageState importImageState, int i, int i2, int i3, int i4, @Nullable ImportSelectedContext importSelectedContext, @NotNull List<? extends Uri> uriList) {
        Intrinsics.checkNotNullParameter(importImageState, "importImageState");
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        this.importImageState = importImageState;
        this.progress = i;
        this.currentIndex = i2;
        this.totalImportCount = i3;
        this.importSuccessSize = i4;
        this.importSelectedContext = importSelectedContext;
        this.uriList = uriList;
    }

    public static /* synthetic */ ImportImageProgressEvent copy$default(ImportImageProgressEvent importImageProgressEvent, ImportImageState importImageState, int i, int i2, int i3, int i4, ImportSelectedContext importSelectedContext, List list, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            importImageState = importImageProgressEvent.importImageState;
        }
        if ((i5 & 2) != 0) {
            i = importImageProgressEvent.progress;
        }
        int i6 = i;
        if ((i5 & 4) != 0) {
            i2 = importImageProgressEvent.currentIndex;
        }
        int i7 = i2;
        if ((i5 & 8) != 0) {
            i3 = importImageProgressEvent.totalImportCount;
        }
        int i8 = i3;
        if ((i5 & 16) != 0) {
            i4 = importImageProgressEvent.importSuccessSize;
        }
        int i9 = i4;
        if ((i5 & 32) != 0) {
            importSelectedContext = importImageProgressEvent.importSelectedContext;
        }
        ImportSelectedContext importSelectedContext2 = importSelectedContext;
        if ((i5 & 64) != 0) {
            list = importImageProgressEvent.uriList;
        }
        return importImageProgressEvent.copy(importImageState, i6, i7, i8, i9, importSelectedContext2, list);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final ImportImageState getImportImageState() {
        return this.importImageState;
    }

    /* renamed from: component2, reason: from getter */
    public final int getProgress() {
        return this.progress;
    }

    /* renamed from: component3, reason: from getter */
    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    /* renamed from: component4, reason: from getter */
    public final int getTotalImportCount() {
        return this.totalImportCount;
    }

    /* renamed from: component5, reason: from getter */
    public final int getImportSuccessSize() {
        return this.importSuccessSize;
    }

    @Nullable
    /* renamed from: component6, reason: from getter */
    public final ImportSelectedContext getImportSelectedContext() {
        return this.importSelectedContext;
    }

    @NotNull
    public final List<Uri> component7() {
        return this.uriList;
    }

    @NotNull
    public final ImportImageProgressEvent copy(@NotNull ImportImageState importImageState, int progress, int currentIndex, int totalImportCount, int importSuccessSize, @Nullable ImportSelectedContext importSelectedContext, @NotNull List<? extends Uri> uriList) {
        Intrinsics.checkNotNullParameter(importImageState, "importImageState");
        Intrinsics.checkNotNullParameter(uriList, "uriList");
        return new ImportImageProgressEvent(importImageState, progress, currentIndex, totalImportCount, importSuccessSize, importSelectedContext, uriList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ImportImageProgressEvent)) {
            return false;
        }
        ImportImageProgressEvent importImageProgressEvent = (ImportImageProgressEvent) other;
        return this.importImageState == importImageProgressEvent.importImageState && this.progress == importImageProgressEvent.progress && this.currentIndex == importImageProgressEvent.currentIndex && this.totalImportCount == importImageProgressEvent.totalImportCount && this.importSuccessSize == importImageProgressEvent.importSuccessSize && Intrinsics.areEqual(this.importSelectedContext, importImageProgressEvent.importSelectedContext) && Intrinsics.areEqual(this.uriList, importImageProgressEvent.uriList);
    }

    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    @NotNull
    public final ImportImageState getImportImageState() {
        return this.importImageState;
    }

    @Nullable
    public final ImportSelectedContext getImportSelectedContext() {
        return this.importSelectedContext;
    }

    public final int getImportSuccessSize() {
        return this.importSuccessSize;
    }

    public final int getProgress() {
        return this.progress;
    }

    public final int getTotalImportCount() {
        return this.totalImportCount;
    }

    @NotNull
    public final List<Uri> getUriList() {
        return this.uriList;
    }

    public int hashCode() {
        int hashCode = ((((((((this.importImageState.hashCode() * 31) + Integer.hashCode(this.progress)) * 31) + Integer.hashCode(this.currentIndex)) * 31) + Integer.hashCode(this.totalImportCount)) * 31) + Integer.hashCode(this.importSuccessSize)) * 31;
        ImportSelectedContext importSelectedContext = this.importSelectedContext;
        return ((hashCode + (importSelectedContext == null ? 0 : importSelectedContext.hashCode())) * 31) + this.uriList.hashCode();
    }

    public final void setCurrentIndex(int i) {
        this.currentIndex = i;
    }

    public final void setImportImageState(@NotNull ImportImageState importImageState) {
        Intrinsics.checkNotNullParameter(importImageState, "<set-?>");
        this.importImageState = importImageState;
    }

    public final void setImportSelectedContext(@Nullable ImportSelectedContext importSelectedContext) {
        this.importSelectedContext = importSelectedContext;
    }

    public final void setImportSuccessSize(int i) {
        this.importSuccessSize = i;
    }

    public final void setProgress(int i) {
        this.progress = i;
    }

    public final void setTotalImportCount(int i) {
        this.totalImportCount = i;
    }

    @NotNull
    public String toString() {
        return "ImportImageProgressEvent(importImageState=" + this.importImageState + ", progress=" + this.progress + ", currentIndex=" + this.currentIndex + ", totalImportCount=" + this.totalImportCount + ", importSuccessSize=" + this.importSuccessSize + ", importSelectedContext=" + this.importSelectedContext + ", uriList=" + this.uriList + ')';
    }

    public /* synthetic */ ImportImageProgressEvent(ImportImageState importImageState, int i, int i2, int i3, int i4, ImportSelectedContext importSelectedContext, List list, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(importImageState, i, i2, i3, (i5 & 16) != 0 ? 0 : i4, (i5 & 32) != 0 ? null : importSelectedContext, list);
    }
}
