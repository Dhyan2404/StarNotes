package com.onyx.android.sdk.replicator.note.bean;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0002\u0010\u0004J\u000e\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\b\"\u0004\b\u0013\u0010\nR\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;", "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", "()V", "bean", "(Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;)V", "docCreateAt", "", "getDocCreateAt", "()J", "setDocCreateAt", "(J)V", "docName", "", "getDocName", "()Ljava/lang/String;", "setDocName", "(Ljava/lang/String;)V", "docUpdatedAt", "getDocUpdatedAt", "setDocUpdatedAt", "hasEncryption", "", "getHasEncryption", Constants.BOOLEAN_VALUE_SIG, "setHasEncryption", "(Z)V", CouchFieldKey.KEY_ORDER_INDEX, "", "getOrderIndex", "()F", "setOrderIndex", "(F)V", "scene", "", "getScene", "()I", "setScene", "(I)V", "updateModelField", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PageModelBean extends PageTagModel {
    private long docCreateAt;

    @NotNull
    private String docName;
    private long docUpdatedAt;
    private boolean hasEncryption;
    private float orderIndex;
    private int scene;

    public PageModelBean() {
        this.docName = "";
        this.orderIndex = -1.0f;
        this.scene = -1;
    }

    public final long getDocCreateAt() {
        return this.docCreateAt;
    }

    @NotNull
    public final String getDocName() {
        return this.docName;
    }

    public final long getDocUpdatedAt() {
        return this.docUpdatedAt;
    }

    public final boolean getHasEncryption() {
        return this.hasEncryption;
    }

    public final float getOrderIndex() {
        return this.orderIndex;
    }

    public final int getScene() {
        return this.scene;
    }

    public final void setDocCreateAt(long j) {
        this.docCreateAt = j;
    }

    public final void setDocName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.docName = str;
    }

    public final void setDocUpdatedAt(long j) {
        this.docUpdatedAt = j;
    }

    public final void setHasEncryption(boolean z) {
        this.hasEncryption = z;
    }

    public final void setOrderIndex(float f) {
        this.orderIndex = f;
    }

    public final void setScene(int i) {
        this.scene = i;
    }

    public final void updateModelField(@NotNull PageTagModel other) {
        Intrinsics.checkNotNullParameter(other, "other");
        setUniqueId(other.getUniqueId());
        setUser(other.getUser());
        setDbId(other.getDbId());
        setCreatedAt(other.getCreatedAt());
        setUpdatedAt(other.getUpdatedAt());
        setDocumentId(other.getDocumentId());
        setPageUniqueId(other.getPageUniqueId());
        setPageIndex(other.getPageIndex());
        setTagId(other.getTagId());
        setDocTitle(other.getDocTitle());
        setRevisionId(other.getRevisionId());
        setStatus(other.getStatus());
        setPageAllTagIdList(other.getPageAllTagIdList());
        setOrientation(other.getOrientation());
    }

    public PageModelBean(@NotNull PageTagModel bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        this.docName = "";
        this.orderIndex = -1.0f;
        this.scene = -1;
        updateModelField(bean);
    }
}
