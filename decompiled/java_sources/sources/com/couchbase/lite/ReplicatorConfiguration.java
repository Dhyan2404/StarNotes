package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.ImmutableReplicatorConfiguration;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Map;

/* loaded from: classes4.dex */
public final class ReplicatorConfiguration extends AbstractReplicatorConfiguration {
    private boolean selfSignedOnly;

    @Deprecated
    public ReplicatorConfiguration(@NonNull Database database, @NonNull Endpoint endpoint) {
        super((Database) Preconditions.assertNotNull(database, "database"), AbstractReplicatorConfiguration.configureDefaultCollection(database), endpoint);
        this.selfSignedOnly = false;
    }

    @Override // com.couchbase.lite.AbstractReplicatorConfiguration
    @NonNull
    public ReplicatorConfiguration getReplicatorConfiguration() {
        return this;
    }

    public boolean isAcceptOnlySelfSignedServerCertificate() {
        return this.selfSignedOnly;
    }

    @NonNull
    public ReplicatorConfiguration setAcceptOnlySelfSignedServerCertificate(boolean z) {
        this.selfSignedOnly = z;
        return getReplicatorConfiguration();
    }

    public ReplicatorConfiguration(@NonNull Endpoint endpoint) {
        super(null, null, endpoint);
        this.selfSignedOnly = false;
    }

    public ReplicatorConfiguration(@NonNull ReplicatorConfiguration replicatorConfiguration) {
        super(replicatorConfiguration);
        this.selfSignedOnly = false;
        this.selfSignedOnly = replicatorConfiguration.isAcceptOnlySelfSignedServerCertificate();
    }

    public ReplicatorConfiguration(@NonNull ImmutableReplicatorConfiguration immutableReplicatorConfiguration) {
        super(immutableReplicatorConfiguration);
        this.selfSignedOnly = false;
        this.selfSignedOnly = immutableReplicatorConfiguration.isAcceptOnlySelfSignedServerCertificate();
    }

    public ReplicatorConfiguration(@NonNull Endpoint endpoint, @Nullable Map<Collection, CollectionConfiguration> map) {
        super(map == null ? null : AbstractDatabase.getDbForCollections(map.keySet()), map, endpoint);
        this.selfSignedOnly = false;
    }
}
