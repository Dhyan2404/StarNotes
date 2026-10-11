package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u0006¢\u0006\u0004\b%\u0010&J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0006HÆ\u0003J=\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00042\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u0006HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0012HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u00068\u0006¢\u0006\f\n\u0004\b#\u0010 \u001a\u0004\b$\u0010\"¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "component1", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "component2", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "component3", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "component4", "virtualBoxInfo", "shape", "excerptCollectionList", "noteModelList", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "b", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "c", "Ljava/util/List;", "getExcerptCollectionList", "()Ljava/util/List;", "d", "getNoteModelList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/util/List;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class StartExcerptEditArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final Shape shape;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<ExcerptCollectionModel> excerptCollectionList;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<SyncNoteModel> noteModelList;

    public StartExcerptEditArgs(@NotNull BoxInfo virtualBoxInfo, @NotNull Shape shape, @NotNull List<ExcerptCollectionModel> excerptCollectionList, @NotNull List<SyncNoteModel> noteModelList) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(excerptCollectionList, "excerptCollectionList");
        Intrinsics.checkNotNullParameter(noteModelList, "noteModelList");
        this.virtualBoxInfo = virtualBoxInfo;
        this.shape = shape;
        this.excerptCollectionList = excerptCollectionList;
        this.noteModelList = noteModelList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StartExcerptEditArgs copy$default(StartExcerptEditArgs startExcerptEditArgs, BoxInfo boxInfo, Shape shape, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            boxInfo = startExcerptEditArgs.virtualBoxInfo;
        }
        if ((i & 2) != 0) {
            shape = startExcerptEditArgs.shape;
        }
        if ((i & 4) != 0) {
            list = startExcerptEditArgs.excerptCollectionList;
        }
        if ((i & 8) != 0) {
            list2 = startExcerptEditArgs.noteModelList;
        }
        return startExcerptEditArgs.copy(boxInfo, shape, list, list2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final Shape getShape() {
        return this.shape;
    }

    @NotNull
    public final List<ExcerptCollectionModel> component3() {
        return this.excerptCollectionList;
    }

    @NotNull
    public final List<SyncNoteModel> component4() {
        return this.noteModelList;
    }

    @NotNull
    public final StartExcerptEditArgs copy(@NotNull BoxInfo virtualBoxInfo, @NotNull Shape shape, @NotNull List<ExcerptCollectionModel> excerptCollectionList, @NotNull List<SyncNoteModel> noteModelList) {
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(excerptCollectionList, "excerptCollectionList");
        Intrinsics.checkNotNullParameter(noteModelList, "noteModelList");
        return new StartExcerptEditArgs(virtualBoxInfo, shape, excerptCollectionList, noteModelList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StartExcerptEditArgs)) {
            return false;
        }
        StartExcerptEditArgs startExcerptEditArgs = (StartExcerptEditArgs) other;
        return Intrinsics.areEqual(this.virtualBoxInfo, startExcerptEditArgs.virtualBoxInfo) && Intrinsics.areEqual(this.shape, startExcerptEditArgs.shape) && Intrinsics.areEqual(this.excerptCollectionList, startExcerptEditArgs.excerptCollectionList) && Intrinsics.areEqual(this.noteModelList, startExcerptEditArgs.noteModelList);
    }

    @NotNull
    public final List<ExcerptCollectionModel> getExcerptCollectionList() {
        return this.excerptCollectionList;
    }

    @NotNull
    public final List<SyncNoteModel> getNoteModelList() {
        return this.noteModelList;
    }

    @NotNull
    public final Shape getShape() {
        return this.shape;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    public int hashCode() {
        return (((((this.virtualBoxInfo.hashCode() * 31) + this.shape.hashCode()) * 31) + this.excerptCollectionList.hashCode()) * 31) + this.noteModelList.hashCode();
    }

    @NotNull
    public String toString() {
        return "StartExcerptEditArgs(virtualBoxInfo=" + this.virtualBoxInfo + ", shape=" + this.shape + ", excerptCollectionList=" + this.excerptCollectionList + ", noteModelList=" + this.noteModelList + ')';
    }
}
