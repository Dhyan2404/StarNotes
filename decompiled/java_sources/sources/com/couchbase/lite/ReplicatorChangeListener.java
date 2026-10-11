package com.couchbase.lite;

import androidx.annotation.NonNull;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface ReplicatorChangeListener extends ChangeListener<ReplicatorChange> {
    @Override // com.couchbase.lite.ChangeListener
    void changed(@NonNull ReplicatorChange replicatorChange);
}
