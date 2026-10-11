package com.onyx.android.sdk.replicator.note.p035db.model;

import com.alibaba.fastjson2.annotation.JSONCreator;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0019\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0017¢\u0006\u0002\u0010\u0002B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010)\u001a\u00020*H\u0016J\u0006\u0010+\u001a\u00020*J\u0006\u0010,\u001a\u00020*R\u001e\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0017\"\u0004\b \u0010\u0019R\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0017\"\u0004\b#\u0010\u0019R\u001a\u0010$\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001b\"\u0004\b&\u0010\u001dR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0017\"\u0004\b(\u0010\u0019¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "title", "", "pageIndex", "", "(Ljava/lang/String;I)V", "expandState", "", "getExpandState", "()Ljava/lang/Boolean;", "setExpandState", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", CouchFieldKey.KEY_ORDER_INDEX, "", "getOrderIndex", "()F", "setOrderIndex", "(F)V", CouchFieldKey.KEY_TOC_PAGE_ID, "getPageId", "()Ljava/lang/String;", "setPageId", "(Ljava/lang/String;)V", "getPageIndex", "()I", "setPageIndex", "(I)V", CouchFieldKey.KEY_PARENT_ID, "getParentId", "setParentId", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", "status", "getStatus", "setStatus", "getTitle", "setTitle", "beforeSave", "", "resetOrderIndex", "resetRevisionId", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class VirtualTocModel extends BaseReplicatorModel {

    @Nullable
    private Boolean expandState;
    private float orderIndex;

    @NotNull
    private String pageId;
    private int pageIndex;

    @Nullable
    private String parentId;

    @NotNull
    private String revisionId;
    private int status;

    @NotNull
    private String title;

    @JSONCreator
    public VirtualTocModel() {
        this.title = "";
        this.pageId = "";
        this.orderIndex = -1.0f;
        this.revisionId = "";
    }

    @Override // com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel
    public void beforeSave() {
        super.beforeSave();
        ensureUniqueIdExist();
    }

    @Nullable
    public final Boolean getExpandState() {
        return this.expandState;
    }

    public final float getOrderIndex() {
        return this.orderIndex;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @Nullable
    public final String getParentId() {
        return this.parentId;
    }

    @NotNull
    public final String getRevisionId() {
        return this.revisionId;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void resetOrderIndex() {
        this.orderIndex = -1.0f;
    }

    public final void resetRevisionId() {
        this.revisionId = "";
    }

    public final void setExpandState(@Nullable Boolean bool) {
        this.expandState = bool;
    }

    public final void setOrderIndex(float f) {
        this.orderIndex = f;
    }

    public final void setPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageId = str;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setParentId(@Nullable String str) {
        this.parentId = str;
    }

    public final void setRevisionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.revisionId = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public VirtualTocModel(@NotNull String title, int i) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.pageId = "";
        this.orderIndex = -1.0f;
        this.revisionId = "";
        this.title = title;
        this.pageIndex = i;
    }
}
