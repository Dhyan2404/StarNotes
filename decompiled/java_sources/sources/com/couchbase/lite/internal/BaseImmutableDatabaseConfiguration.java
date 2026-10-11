package com.couchbase.lite.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.DatabaseConfiguration;

/* loaded from: classes4.dex */
public class BaseImmutableDatabaseConfiguration {

    @NonNull
    private final String dbDir;
    private final boolean fullSync;
    private final boolean mmapEnabled;

    public BaseImmutableDatabaseConfiguration(@Nullable DatabaseConfiguration databaseConfiguration) {
        String directory = databaseConfiguration == null ? null : databaseConfiguration.getDirectory();
        this.dbDir = directory == null ? CouchbaseLiteInternal.getDefaultDbDirPath() : directory;
        this.fullSync = databaseConfiguration == null ? false : databaseConfiguration.isFullSync();
        this.mmapEnabled = databaseConfiguration == null ? true : databaseConfiguration.isMMapEnabled();
    }

    @NonNull
    public final String getDirectory() {
        return this.dbDir;
    }

    public final boolean isFullSync() {
        return this.fullSync;
    }

    public final boolean isMMapEnabled() {
        return this.mmapEnabled;
    }
}
