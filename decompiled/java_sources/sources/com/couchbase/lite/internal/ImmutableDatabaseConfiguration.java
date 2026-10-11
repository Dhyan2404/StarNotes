package com.couchbase.lite.internal;

import androidx.annotation.Nullable;
import com.couchbase.lite.DatabaseConfiguration;
import com.couchbase.lite.EncryptionKey;

/* loaded from: classes4.dex */
public class ImmutableDatabaseConfiguration extends BaseImmutableDatabaseConfiguration {

    @Nullable
    private final EncryptionKey encryptionKey;

    public ImmutableDatabaseConfiguration(@Nullable DatabaseConfiguration databaseConfiguration) {
        super(databaseConfiguration);
        this.encryptionKey = databaseConfiguration == null ? null : databaseConfiguration.getEncryptionKey();
    }

    @Nullable
    public EncryptionKey getEncryptionKey() {
        return this.encryptionKey;
    }
}
