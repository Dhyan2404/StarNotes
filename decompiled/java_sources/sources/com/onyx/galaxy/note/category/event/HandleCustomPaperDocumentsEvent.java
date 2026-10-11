package com.onyx.galaxy.note.category.event;

import android.app.Activity;
import com.onyx.android.sdk.universal.editor.data.DocumentFileEntry;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\u0011\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J+\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001f\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/event/HandleCustomPaperDocumentsEvent;", "", "", "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;", "component1", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "component2", "fileEntries", "activityWeakReference", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getFileEntries", "()Ljava/util/List;", "b", "Ljava/lang/ref/WeakReference;", "getActivityWeakReference", "()Ljava/lang/ref/WeakReference;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Ljava/lang/ref/WeakReference;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class HandleCustomPaperDocumentsEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<DocumentFileEntry> fileEntries;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public final WeakReference<Activity> activityWeakReference;

    public HandleCustomPaperDocumentsEvent(@NotNull List<DocumentFileEntry> fileEntries, @Nullable WeakReference<Activity> weakReference) {
        Intrinsics.checkNotNullParameter(fileEntries, "fileEntries");
        this.fileEntries = fileEntries;
        this.activityWeakReference = weakReference;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HandleCustomPaperDocumentsEvent copy$default(HandleCustomPaperDocumentsEvent handleCustomPaperDocumentsEvent, List list, WeakReference weakReference, int i, Object obj) {
        if ((i & 1) != 0) {
            list = handleCustomPaperDocumentsEvent.fileEntries;
        }
        if ((i & 2) != 0) {
            weakReference = handleCustomPaperDocumentsEvent.activityWeakReference;
        }
        return handleCustomPaperDocumentsEvent.copy(list, weakReference);
    }

    @NotNull
    public final List<DocumentFileEntry> component1() {
        return this.fileEntries;
    }

    @Nullable
    public final WeakReference<Activity> component2() {
        return this.activityWeakReference;
    }

    @NotNull
    public final HandleCustomPaperDocumentsEvent copy(@NotNull List<DocumentFileEntry> fileEntries, @Nullable WeakReference<Activity> activityWeakReference) {
        Intrinsics.checkNotNullParameter(fileEntries, "fileEntries");
        return new HandleCustomPaperDocumentsEvent(fileEntries, activityWeakReference);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HandleCustomPaperDocumentsEvent)) {
            return false;
        }
        HandleCustomPaperDocumentsEvent handleCustomPaperDocumentsEvent = (HandleCustomPaperDocumentsEvent) other;
        return Intrinsics.areEqual(this.fileEntries, handleCustomPaperDocumentsEvent.fileEntries) && Intrinsics.areEqual(this.activityWeakReference, handleCustomPaperDocumentsEvent.activityWeakReference);
    }

    @Nullable
    public final WeakReference<Activity> getActivityWeakReference() {
        return this.activityWeakReference;
    }

    @NotNull
    public final List<DocumentFileEntry> getFileEntries() {
        return this.fileEntries;
    }

    public int hashCode() {
        int hashCode = this.fileEntries.hashCode() * 31;
        WeakReference<Activity> weakReference = this.activityWeakReference;
        return hashCode + (weakReference == null ? 0 : weakReference.hashCode());
    }

    @NotNull
    public String toString() {
        return "HandleCustomPaperDocumentsEvent(fileEntries=" + this.fileEntries + ", activityWeakReference=" + this.activityWeakReference + ')';
    }

    public /* synthetic */ HandleCustomPaperDocumentsEvent(List list, WeakReference weakReference, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? null : weakReference);
    }
}
