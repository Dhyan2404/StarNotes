package com.onyx.android.sdk.replicator.fts.model;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.MatrixValues;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010%\u001a\u00020\fH\u0016R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u0010R\u001a\u0010\u001a\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u000e\"\u0004\b!\u0010\u0010R\u001a\u0010\"\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u000e\"\u0004\b$\u0010\u0010¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "Ljava/io/Serializable;", "()V", "charRectList", "", "Landroid/graphics/RectF;", "getCharRectList", "()Ljava/util/List;", "setCharRectList", "(Ljava/util/List;)V", "content", "", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "matrixValues", "Lcom/onyx/android/sdk/base/data/MatrixValues;", "getMatrixValues", "()Lcom/onyx/android/sdk/base/data/MatrixValues;", "setMatrixValues", "(Lcom/onyx/android/sdk/base/data/MatrixValues;)V", CouchFieldKey.KEY_PAGE_ID, "getPageUniqueId", "setPageUniqueId", "rect", "getRect", "()Landroid/graphics/RectF;", "setRect", "(Landroid/graphics/RectF;)V", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", "type", "getType", "setType", "toString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class FTSContentModel extends BaseReplicatorModel implements Serializable {

    @NotNull
    private List<? extends RectF> charRectList;

    @Nullable
    private MatrixValues matrixValues;

    @NotNull
    private String revisionId;

    @NotNull
    private String type = "";

    @NotNull
    private String pageUniqueId = "";

    @NotNull
    private String content = "";

    @NotNull
    private RectF rect = new RectF();

    public FTSContentModel() {
        List<? extends RectF> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.charRectList = emptyList;
        this.revisionId = "";
    }

    @NotNull
    public final List<RectF> getCharRectList() {
        return this.charRectList;
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final MatrixValues getMatrixValues() {
        return this.matrixValues;
    }

    @NotNull
    public final String getPageUniqueId() {
        return this.pageUniqueId;
    }

    @NotNull
    public final RectF getRect() {
        return this.rect;
    }

    @NotNull
    public final String getRevisionId() {
        return this.revisionId;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public final void setCharRectList(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.charRectList = list;
    }

    public final void setContent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.content = str;
    }

    public final void setMatrixValues(@Nullable MatrixValues matrixValues) {
        this.matrixValues = matrixValues;
    }

    public final void setPageUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageUniqueId = str;
    }

    public final void setRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.rect = rectF;
    }

    public final void setRevisionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.revisionId = str;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    @NotNull
    public String toString() {
        return this.content;
    }
}
