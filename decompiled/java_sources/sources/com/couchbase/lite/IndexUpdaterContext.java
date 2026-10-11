package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.DbContext;

/* loaded from: classes4.dex */
public class IndexUpdaterContext extends DbContext {

    @NonNull
    private final IndexUpdaterImpl updater;

    public IndexUpdaterContext(@Nullable Database database, @NonNull IndexUpdaterImpl indexUpdaterImpl) {
        super(database);
        this.updater = indexUpdaterImpl;
    }

    @NonNull
    public Object getDbLock() {
        BaseDatabase database = getDatabase();
        if (database != null) {
            return database.getDbLock();
        }
        throw new CouchbaseLiteError("Database is null");
    }

    @Override // com.couchbase.lite.internal.fleece.MContext
    public boolean isClosed() {
        return this.updater.isClosed();
    }
}
