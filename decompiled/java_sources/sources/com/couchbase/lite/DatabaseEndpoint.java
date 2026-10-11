package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public final class DatabaseEndpoint implements Endpoint {

    @NonNull
    private final Database database;

    public DatabaseEndpoint(@NonNull Database database) {
        this.database = (Database) Preconditions.assertNotNull(database, "database");
    }

    @NonNull
    public Database getDatabase() {
        return this.database;
    }

    @NonNull
    public String toString() {
        return "DatabaseEndpoint{database=" + this.database + '}';
    }
}
