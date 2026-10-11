package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.replicator.ReplicationStatusChange;

/* loaded from: classes4.dex */
public final class ReplicatorChange extends ReplicationStatusChange {

    @NonNull
    private final Replicator replicator;

    public ReplicatorChange(@NonNull Replicator replicator, @NonNull ReplicatorStatus replicatorStatus) {
        super(replicatorStatus);
        this.replicator = replicator;
    }

    @NonNull
    public Replicator getReplicator() {
        return this.replicator;
    }

    @NonNull
    public String toString() {
        return "ReplicatorChange{" + this.replicator + " => " + this.status + '}';
    }
}
