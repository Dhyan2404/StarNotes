package com.couchbase.lite;

import androidx.annotation.NonNull;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface DocumentReplicationListener {
    void replication(@NonNull DocumentReplication documentReplication);
}
