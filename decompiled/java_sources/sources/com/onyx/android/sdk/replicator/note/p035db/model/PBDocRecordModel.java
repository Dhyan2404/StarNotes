package com.onyx.android.sdk.replicator.note.p035db.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0007J\b\u0010\u001a\u001a\u00020\u0019H\u0007J\b\u0010\u001b\u001a\u00020\u0019H\u0007J\b\u0010\u001c\u001a\u00020\u0019H\u0007R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "documentId", "", "getDocumentId", "()Ljava/lang/String;", "setDocumentId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_TOC_PAGE_ID, "getPageId", "setPageId", "status", "", "getStatus", "()I", "setStatus", "(I)V", "timeStamp", "", "getTimeStamp", "()J", "setTimeStamp", "(J)V", "isEmebbed", "", "isExported", "isImported", "isSynced", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PBDocRecordModel extends BaseReplicatorModel {

    @NotNull
    private String documentId = "";

    @Nullable
    private String pageId;
    private int status;
    private long timeStamp;

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final String getPageId() {
        return this.pageId;
    }

    public final int getStatus() {
        return this.status;
    }

    public final long getTimeStamp() {
        return this.timeStamp;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isEmebbed() {
        return this.status == 3;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isExported() {
        return this.status == 2;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isImported() {
        return this.status == 1;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isSynced() {
        return isImported() || isExported();
    }

    public final void setDocumentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentId = str;
    }

    public final void setPageId(@Nullable String str) {
        this.pageId = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTimeStamp(long j) {
        this.timeStamp = j;
    }
}
