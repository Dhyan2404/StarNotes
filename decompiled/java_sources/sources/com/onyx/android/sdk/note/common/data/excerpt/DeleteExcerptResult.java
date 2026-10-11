package com.onyx.android.sdk.note.common.data.excerpt;

import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0019\u0010\u001aJ\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003J%\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;", "", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "component1", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "component2", "excerptInfoBean", "excerptCollectionList", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "getExcerptInfoBean", "()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "b", "Ljava/util/List;", "getExcerptCollectionList", "()Ljava/util/List;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class DeleteExcerptResult {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public final ExcerptInfoBean excerptInfoBean;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<ExcerptCollectionModel> excerptCollectionList;

    public DeleteExcerptResult(@Nullable ExcerptInfoBean excerptInfoBean, @NotNull List<ExcerptCollectionModel> excerptCollectionList) {
        Intrinsics.checkNotNullParameter(excerptCollectionList, "excerptCollectionList");
        this.excerptInfoBean = excerptInfoBean;
        this.excerptCollectionList = excerptCollectionList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DeleteExcerptResult copy$default(DeleteExcerptResult deleteExcerptResult, ExcerptInfoBean excerptInfoBean, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            excerptInfoBean = deleteExcerptResult.excerptInfoBean;
        }
        if ((i & 2) != 0) {
            list = deleteExcerptResult.excerptCollectionList;
        }
        return deleteExcerptResult.copy(excerptInfoBean, list);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final ExcerptInfoBean getExcerptInfoBean() {
        return this.excerptInfoBean;
    }

    @NotNull
    public final List<ExcerptCollectionModel> component2() {
        return this.excerptCollectionList;
    }

    @NotNull
    public final DeleteExcerptResult copy(@Nullable ExcerptInfoBean excerptInfoBean, @NotNull List<ExcerptCollectionModel> excerptCollectionList) {
        Intrinsics.checkNotNullParameter(excerptCollectionList, "excerptCollectionList");
        return new DeleteExcerptResult(excerptInfoBean, excerptCollectionList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DeleteExcerptResult)) {
            return false;
        }
        DeleteExcerptResult deleteExcerptResult = (DeleteExcerptResult) other;
        return Intrinsics.areEqual(this.excerptInfoBean, deleteExcerptResult.excerptInfoBean) && Intrinsics.areEqual(this.excerptCollectionList, deleteExcerptResult.excerptCollectionList);
    }

    @NotNull
    public final List<ExcerptCollectionModel> getExcerptCollectionList() {
        return this.excerptCollectionList;
    }

    @Nullable
    public final ExcerptInfoBean getExcerptInfoBean() {
        return this.excerptInfoBean;
    }

    public int hashCode() {
        ExcerptInfoBean excerptInfoBean = this.excerptInfoBean;
        return ((excerptInfoBean == null ? 0 : excerptInfoBean.hashCode()) * 31) + this.excerptCollectionList.hashCode();
    }

    @NotNull
    public String toString() {
        return "DeleteExcerptResult(excerptInfoBean=" + this.excerptInfoBean + ", excerptCollectionList=" + this.excerptCollectionList + ')';
    }
}
