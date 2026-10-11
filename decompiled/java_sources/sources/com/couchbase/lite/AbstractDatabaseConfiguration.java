package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.BaseImmutableDatabaseConfiguration;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.utils.FileUtils;
import com.couchbase.lite.internal.utils.Preconditions;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class AbstractDatabaseConfiguration {
    private String dbDirectory;
    private boolean fullSync;
    private boolean mmapEnabled;

    public AbstractDatabaseConfiguration() {
        this(null, false, true);
    }

    @NonNull
    public abstract DatabaseConfiguration getDatabaseConfiguration();

    @NonNull
    public String getDirectory() {
        return this.dbDirectory;
    }

    public boolean isFullSync() {
        return this.fullSync;
    }

    public boolean isMMapEnabled() {
        return this.mmapEnabled;
    }

    @NonNull
    public DatabaseConfiguration setDirectory(@NonNull String str) {
        Preconditions.assertNotNull(str, "directory");
        this.dbDirectory = FileUtils.verifyDir(str).getAbsolutePath();
        return getDatabaseConfiguration();
    }

    @NonNull
    public DatabaseConfiguration setFullSync(boolean z) {
        this.fullSync = z;
        return getDatabaseConfiguration();
    }

    @NonNull
    public DatabaseConfiguration setMMapEnabled(boolean z) {
        this.mmapEnabled = z;
        return getDatabaseConfiguration();
    }

    public AbstractDatabaseConfiguration(@Nullable AbstractDatabaseConfiguration abstractDatabaseConfiguration) {
        this(abstractDatabaseConfiguration == null ? null : abstractDatabaseConfiguration.getDirectory(), abstractDatabaseConfiguration == null ? false : abstractDatabaseConfiguration.isFullSync(), abstractDatabaseConfiguration == null ? true : abstractDatabaseConfiguration.isMMapEnabled());
    }

    public AbstractDatabaseConfiguration(@NonNull BaseImmutableDatabaseConfiguration baseImmutableDatabaseConfiguration) {
        this(baseImmutableDatabaseConfiguration.getDirectory(), baseImmutableDatabaseConfiguration.isFullSync(), baseImmutableDatabaseConfiguration.isMMapEnabled());
    }

    private AbstractDatabaseConfiguration(@Nullable String str, boolean z, boolean z2) {
        CouchbaseLiteInternal.requireInit("Cannot create database configuration");
        this.dbDirectory = str == null ? CouchbaseLiteInternal.getDefaultDbDirPath() : str;
        this.fullSync = z;
        this.mmapEnabled = z2;
    }
}
