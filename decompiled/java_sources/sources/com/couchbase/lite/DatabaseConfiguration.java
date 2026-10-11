package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.ImmutableDatabaseConfiguration;

/* loaded from: classes4.dex */
public final class DatabaseConfiguration extends AbstractDatabaseConfiguration {

    @Nullable
    private EncryptionKey encryptionKey;

    public DatabaseConfiguration() {
    }

    @Override // com.couchbase.lite.AbstractDatabaseConfiguration
    @NonNull
    public DatabaseConfiguration getDatabaseConfiguration() {
        return this;
    }

    @Override // com.couchbase.lite.AbstractDatabaseConfiguration
    @NonNull
    public /* bridge */ /* synthetic */ String getDirectory() {
        return super.getDirectory();
    }

    @Nullable
    public EncryptionKey getEncryptionKey() {
        return this.encryptionKey;
    }

    @Override // com.couchbase.lite.AbstractDatabaseConfiguration
    public /* bridge */ /* synthetic */ boolean isFullSync() {
        return super.isFullSync();
    }

    @Override // com.couchbase.lite.AbstractDatabaseConfiguration
    public /* bridge */ /* synthetic */ boolean isMMapEnabled() {
        return super.isMMapEnabled();
    }

    @Override // com.couchbase.lite.AbstractDatabaseConfiguration
    @NonNull
    public /* bridge */ /* synthetic */ DatabaseConfiguration setDirectory(@NonNull String str) {
        return super.setDirectory(str);
    }

    @NonNull
    public DatabaseConfiguration setEncryptionKey(@Nullable EncryptionKey encryptionKey) {
        this.encryptionKey = encryptionKey;
        return this;
    }

    @Override // com.couchbase.lite.AbstractDatabaseConfiguration
    @NonNull
    public /* bridge */ /* synthetic */ DatabaseConfiguration setFullSync(boolean z) {
        return super.setFullSync(z);
    }

    @Override // com.couchbase.lite.AbstractDatabaseConfiguration
    @NonNull
    public /* bridge */ /* synthetic */ DatabaseConfiguration setMMapEnabled(boolean z) {
        return super.setMMapEnabled(z);
    }

    public DatabaseConfiguration(@Nullable DatabaseConfiguration databaseConfiguration) {
        super(databaseConfiguration);
        this.encryptionKey = databaseConfiguration == null ? null : databaseConfiguration.encryptionKey;
    }

    public DatabaseConfiguration(@NonNull ImmutableDatabaseConfiguration immutableDatabaseConfiguration) {
        super(immutableDatabaseConfiguration);
        this.encryptionKey = immutableDatabaseConfiguration == null ? null : immutableDatabaseConfiguration.getEncryptionKey();
    }
}
