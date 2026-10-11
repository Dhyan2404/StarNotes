package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.core.C4ReplicatorStatus;
import com.couchbase.lite.internal.replicator.ReplicationStatusChange;

/* loaded from: classes4.dex */
public class MessageEndpointListenerChange extends ReplicationStatusChange {
    private final MessageEndpointConnection connection;

    public MessageEndpointListenerChange(@NonNull MessageEndpointConnection messageEndpointConnection, @NonNull C4ReplicatorStatus c4ReplicatorStatus) {
        super(new ReplicatorStatus(c4ReplicatorStatus));
        this.connection = messageEndpointConnection;
    }

    @NonNull
    public MessageEndpointConnection getConnection() {
        return this.connection;
    }

    @NonNull
    public String toString() {
        return "MessageEndpointListenerChange{" + this.connection + ", " + this.status + "}";
    }
}
