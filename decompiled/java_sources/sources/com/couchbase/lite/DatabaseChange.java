package com.couchbase.lite;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.List;

@Deprecated
/* loaded from: classes4.dex */
public class DatabaseChange {

    @NonNull
    private final Collection collection;

    @NonNull
    private final List<String> documentIDs;

    public DatabaseChange(@NonNull Collection collection, @NonNull List<String> list) {
        this.collection = collection;
        this.documentIDs = Collections.unmodifiableList(list);
    }

    @NonNull
    private static Collection getDefaultCollection(@NonNull Database database) {
        try {
            return database.getDefaultCollection();
        } catch (CouchbaseLiteException e) {
            throw new CouchbaseLiteError("Failed retrieving default collection for database: " + database.getName(), e);
        }
    }

    @NonNull
    public Collection getCollection() {
        return this.collection;
    }

    @NonNull
    public Database getDatabase() {
        return this.collection.getDatabase();
    }

    @NonNull
    public List<String> getDocumentIDs() {
        return this.documentIDs;
    }

    @NonNull
    public String toString() {
        return "DatabaseChange{" + getDatabase() + ", " + this.documentIDs + '}';
    }

    @Deprecated
    public DatabaseChange(@NonNull Database database, @NonNull List<String> list) {
        this(getDefaultCollection(database), list);
    }
}
