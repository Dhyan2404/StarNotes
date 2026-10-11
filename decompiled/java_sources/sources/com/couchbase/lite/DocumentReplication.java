package com.couchbase.lite;

import androidx.annotation.NonNull;
import java.util.List;
import kotlinx.coroutines.CoroutineContextKt;

/* loaded from: classes4.dex */
public final class DocumentReplication {

    @NonNull
    private final List<ReplicatedDocument> documents;
    private final boolean pushing;

    @NonNull
    private final Replicator replicator;

    public DocumentReplication(@NonNull Replicator replicator, boolean z, @NonNull List<ReplicatedDocument> list) {
        this.replicator = replicator;
        this.pushing = z;
        this.documents = list;
    }

    @NonNull
    public List<ReplicatedDocument> getDocuments() {
        return this.documents;
    }

    @NonNull
    public Replicator getReplicator() {
        return this.replicator;
    }

    public boolean isPush() {
        return this.pushing;
    }

    @NonNull
    public String toString() {
        return "DocumentReplication{#" + this.documents.size() + CoroutineContextKt.f98133a + this.replicator + "}";
    }
}
