package com.couchbase.lite.internal.replicator;

import androidx.annotation.NonNull;
import com.couchbase.lite.ReplicatorStatus;

/* loaded from: classes4.dex */
public class ReplicationStatusChange {

    @NonNull
    protected final ReplicatorStatus status;

    public ReplicationStatusChange(@NonNull ReplicatorStatus replicatorStatus) {
        this.status = replicatorStatus;
    }

    @NonNull
    public ReplicatorStatus getStatus() {
        return this.status;
    }
}
