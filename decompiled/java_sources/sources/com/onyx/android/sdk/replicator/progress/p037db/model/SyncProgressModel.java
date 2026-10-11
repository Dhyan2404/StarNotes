package com.onyx.android.sdk.replicator.progress.p037db.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.progress.bean.SyncDocProgress;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "docProgress", "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;", "getDocProgress", "()Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;", "setDocProgress", "(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V", "scope", "", "getScope", "()Ljava/lang/String;", "setScope", "(Ljava/lang/String;)V", CouchFieldKey.KEY_SYNC_STATUS, "", "getSyncStatus", "()I", "setSyncStatus", "(I)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SyncProgressModel extends BaseReplicatorModel {

    @Nullable
    private SyncDocProgress docProgress;

    @Nullable
    private String scope;
    private int syncStatus = 4;

    @Nullable
    public final SyncDocProgress getDocProgress() {
        return this.docProgress;
    }

    @Nullable
    public final String getScope() {
        return this.scope;
    }

    public final int getSyncStatus() {
        return this.syncStatus;
    }

    public final void setDocProgress(@Nullable SyncDocProgress syncDocProgress) {
        this.docProgress = syncDocProgress;
    }

    public final void setScope(@Nullable String str) {
        this.scope = str;
    }

    public final void setSyncStatus(int i) {
        this.syncStatus = i;
    }
}
