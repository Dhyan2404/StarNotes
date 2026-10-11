package com.couchbase.lite;

import androidx.annotation.NonNull;
import java.util.List;

/* loaded from: classes4.dex */
public final class CollectionChange extends DatabaseChange {
    public CollectionChange(@NonNull Collection collection, @NonNull List<String> list) {
        super(collection, list);
    }

    @Override // com.couchbase.lite.DatabaseChange
    @NonNull
    public String toString() {
        return "CollectionChange{" + getCollection() + ": " + getDocumentIDs() + '}';
    }
}
