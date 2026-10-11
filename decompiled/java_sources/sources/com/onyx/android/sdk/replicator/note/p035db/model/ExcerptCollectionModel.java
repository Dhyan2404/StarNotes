package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001c\u001a\u00020\u0000H\u0016J\u0006\u0010\u001d\u001a\u00020\u001eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "", "()V", CouchFieldKey.KEY_QUOTE_DOC_ID, "", "getQuoteDocId", "()Ljava/lang/String;", "setQuoteDocId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_QUOTE_SHAPE_ID, "getQuoteShapeId", "setQuoteShapeId", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", CouchFieldKey.KEY_SOURCE_DOC_ID, "getSourceDocId", "setSourceDocId", CouchFieldKey.KEY_SOURCE_SHAPE_ID, "getSourceShapeId", "setSourceShapeId", "status", "", "getStatus", "()I", "setStatus", "(I)V", "clone", "resetRevisionId", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ExcerptCollectionModel extends BaseReplicatorModel implements Cloneable {
    private int status;

    @NotNull
    private String sourceDocId = "";

    @NotNull
    private String sourceShapeId = "";

    @NotNull
    private String quoteDocId = "";

    @NotNull
    private String quoteShapeId = "";

    @NotNull
    private String revisionId = "";

    @NotNull
    public final String getQuoteDocId() {
        return this.quoteDocId;
    }

    @NotNull
    public final String getQuoteShapeId() {
        return this.quoteShapeId;
    }

    @NotNull
    public final String getRevisionId() {
        return this.revisionId;
    }

    @NotNull
    public final String getSourceDocId() {
        return this.sourceDocId;
    }

    @NotNull
    public final String getSourceShapeId() {
        return this.sourceShapeId;
    }

    public final int getStatus() {
        return this.status;
    }

    public final void resetRevisionId() {
        this.revisionId = "";
    }

    public final void setQuoteDocId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.quoteDocId = str;
    }

    public final void setQuoteShapeId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.quoteShapeId = str;
    }

    public final void setRevisionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.revisionId = str;
    }

    public final void setSourceDocId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sourceDocId = str;
    }

    public final void setSourceShapeId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sourceShapeId = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ExcerptCollectionModel m72377clone() {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.db.model.ExcerptCollectionModel");
        return (ExcerptCollectionModel) clone;
    }
}
