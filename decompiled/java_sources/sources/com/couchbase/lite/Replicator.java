package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.Replicator;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.replicator.AndroidConnectivityObserver;
import com.couchbase.lite.internal.replicator.NetworkConnectivityManager;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;

/* loaded from: classes4.dex */
public final class Replicator extends AbstractReplicator {

    @Nullable
    private final AndroidConnectivityObserver connectivityObserver;

    public Replicator(@NonNull ReplicatorConfiguration replicatorConfiguration) {
        this(CouchbaseLiteInternal.getNetworkConnectivityManager(), replicatorConfiguration);
    }

    @Override // com.couchbase.lite.AbstractReplicator
    @NonNull
    public C4Replicator createReplicatorForTarget(@NonNull Endpoint endpoint) throws LiteCoreException {
        if (endpoint instanceof URLEndpoint) {
            return getRemoteC4Replicator(((URLEndpoint) endpoint).getURL());
        }
        if (endpoint instanceof DatabaseEndpoint) {
            return getLocalC4Replicator(((DatabaseEndpoint) endpoint).getDatabase());
        }
        if (endpoint instanceof MessageEndpoint) {
            return getMessageC4Replicator(((MessageEndpoint) endpoint).getMessageFraming());
        }
        throw new CouchbaseLiteError("unrecognized endpoint type: " + endpoint);
    }

    @Override // com.couchbase.lite.AbstractReplicator
    public void handleOffline(@NonNull ReplicatorActivityLevel replicatorActivityLevel, boolean z) {
        if (this.connectivityObserver == null) {
            return;
        }
        com.couchbase.lite.internal.logging.Log.m9899d(LogDomain.NETWORK, "%s: offline state change for %s: %s -> %b", getId(), this.connectivityObserver, replicatorActivityLevel, Boolean.valueOf(z));
        this.connectivityObserver.handleOffline(replicatorActivityLevel, z);
    }

    @VisibleForTesting
    public Replicator(@Nullable NetworkConnectivityManager networkConnectivityManager, @NonNull ReplicatorConfiguration replicatorConfiguration) {
        super(replicatorConfiguration);
        this.connectivityObserver = (!replicatorConfiguration.isContinuous() || networkConnectivityManager == null) ? null : new AndroidConnectivityObserver(networkConnectivityManager, new InterfaceC2217Fn.Provider() { // from class: com.sunia.HTREnginev2.pkl
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Provider
            public final Object get() {
                C4Replicator c4Replicator;
                c4Replicator = Replicator.this.getC4Replicator();
                return c4Replicator;
            }
        });
    }
}
