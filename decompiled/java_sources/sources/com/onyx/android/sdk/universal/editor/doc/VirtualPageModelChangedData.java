package com.onyx.android.sdk.universal.editor.doc;

import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007HÆ\u0003J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007HÆ\u0003J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007HÆ\u0003J9\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007HÆ\u0001J\t\u0010\u000f\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018R\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u0018¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageModelChangedData;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "getAllList", "", "getDebugString", "", "component1", "component2", "component3", "newList", "updateList", "removedList", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getNewList", "()Ljava/util/List;", "b", "getUpdateList", "c", "getRemovedList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class VirtualPageModelChangedData {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<VirtualPageModel> newList;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<VirtualPageModel> updateList;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<VirtualPageModel> removedList;

    public VirtualPageModelChangedData(@NotNull List<VirtualPageModel> newList, @NotNull List<VirtualPageModel> updateList, @NotNull List<VirtualPageModel> removedList) {
        Intrinsics.checkNotNullParameter(newList, "newList");
        Intrinsics.checkNotNullParameter(updateList, "updateList");
        Intrinsics.checkNotNullParameter(removedList, "removedList");
        this.newList = newList;
        this.updateList = updateList;
        this.removedList = removedList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VirtualPageModelChangedData copy$default(VirtualPageModelChangedData virtualPageModelChangedData, List list, List list2, List list3, int i, Object obj) {
        if ((i & 1) != 0) {
            list = virtualPageModelChangedData.newList;
        }
        if ((i & 2) != 0) {
            list2 = virtualPageModelChangedData.updateList;
        }
        if ((i & 4) != 0) {
            list3 = virtualPageModelChangedData.removedList;
        }
        return virtualPageModelChangedData.copy(list, list2, list3);
    }

    @NotNull
    public final List<VirtualPageModel> component1() {
        return this.newList;
    }

    @NotNull
    public final List<VirtualPageModel> component2() {
        return this.updateList;
    }

    @NotNull
    public final List<VirtualPageModel> component3() {
        return this.removedList;
    }

    @NotNull
    public final VirtualPageModelChangedData copy(@NotNull List<VirtualPageModel> newList, @NotNull List<VirtualPageModel> updateList, @NotNull List<VirtualPageModel> removedList) {
        Intrinsics.checkNotNullParameter(newList, "newList");
        Intrinsics.checkNotNullParameter(updateList, "updateList");
        Intrinsics.checkNotNullParameter(removedList, "removedList");
        return new VirtualPageModelChangedData(newList, updateList, removedList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VirtualPageModelChangedData)) {
            return false;
        }
        VirtualPageModelChangedData virtualPageModelChangedData = (VirtualPageModelChangedData) other;
        return Intrinsics.areEqual(this.newList, virtualPageModelChangedData.newList) && Intrinsics.areEqual(this.updateList, virtualPageModelChangedData.updateList) && Intrinsics.areEqual(this.removedList, virtualPageModelChangedData.removedList);
    }

    @NotNull
    public final List<VirtualPageModel> getAllList() {
        List<VirtualPageModel> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.updateList);
        mutableList.addAll(this.removedList);
        mutableList.addAll(this.newList);
        return mutableList;
    }

    @NotNull
    public final String getDebugString() {
        return "virtualPageModel, update count = " + this.updateList.size() + ", remove count = " + this.removedList.size() + ", new count = " + this.newList.size();
    }

    @NotNull
    public final List<VirtualPageModel> getNewList() {
        return this.newList;
    }

    @NotNull
    public final List<VirtualPageModel> getRemovedList() {
        return this.removedList;
    }

    @NotNull
    public final List<VirtualPageModel> getUpdateList() {
        return this.updateList;
    }

    public int hashCode() {
        return (((this.newList.hashCode() * 31) + this.updateList.hashCode()) * 31) + this.removedList.hashCode();
    }

    @NotNull
    public String toString() {
        return "VirtualPageModelChangedData(newList=" + this.newList + ", updateList=" + this.updateList + ", removedList=" + this.removedList + ')';
    }
}
