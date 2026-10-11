package com.couchbase.lite.internal;

import androidx.annotation.NonNull;
import com.couchbase.lite.ReplicatorConfiguration;
import com.couchbase.lite.internal.core.C4Replicator;
import java.util.Map;

/* loaded from: classes4.dex */
public class ImmutableReplicatorConfiguration extends BaseImmutableReplicatorConfiguration {
    private final boolean acceptOnlySelfSignedServerCertificate;

    public ImmutableReplicatorConfiguration(@NonNull ReplicatorConfiguration replicatorConfiguration) {
        super(replicatorConfiguration);
        this.acceptOnlySelfSignedServerCertificate = replicatorConfiguration.isAcceptOnlySelfSignedServerCertificate();
    }

    @Override // com.couchbase.lite.internal.BaseImmutableReplicatorConfiguration
    @NonNull
    public Map<String, Object> getConnectionOptions() {
        Map<String, Object> connectionOptions = super.getConnectionOptions();
        connectionOptions.put(C4Replicator.REPLICATOR_OPTION_SELF_SIGNED_SERVER_CERT, Boolean.valueOf(this.acceptOnlySelfSignedServerCertificate));
        return connectionOptions;
    }

    public final boolean isAcceptOnlySelfSignedServerCertificate() {
        return this.acceptOnlySelfSignedServerCertificate;
    }
}
