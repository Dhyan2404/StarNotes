package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4Index;
import com.couchbase.lite.internal.core.C4IndexUpdater;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public class QueryIndex {

    @NonNull
    private final C4Index c4QueryIndex;

    @NonNull
    private final Collection collection;

    @NonNull
    private final String name;

    public QueryIndex(@NonNull Collection collection, @NonNull String str, @NonNull C4Index c4Index) {
        this.collection = collection;
        this.name = str;
        this.c4QueryIndex = c4Index;
    }

    @Nullable
    public IndexUpdater beginUpdate(int i) throws CouchbaseLiteException {
        C4IndexUpdater beginUpdate;
        Preconditions.assertPositive(i, "limit");
        try {
            synchronized (this.collection.getDbLock()) {
                beginUpdate = this.c4QueryIndex.beginUpdate(i);
            }
            if (beginUpdate == null) {
                return null;
            }
            return new IndexUpdaterImpl(beginUpdate, this.collection.getDatabase());
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Failed starting an index update");
        }
    }

    @NonNull
    public Collection getCollection() {
        return this.collection;
    }

    @NonNull
    public String getName() {
        return this.name;
    }
}
