package com.couchbase.lite.internal.replicator;

import androidx.annotation.NonNull;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.ReplicatorActivityLevel;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.replicator.NetworkConnectivityManager;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;

/* loaded from: classes4.dex */
public class AndroidConnectivityObserver implements NetworkConnectivityManager.Observer {

    @NonNull
    private final NetworkConnectivityManager connectivityManager;

    @NonNull
    private final InterfaceC2217Fn.Provider<C4Replicator> replFactory;

    public AndroidConnectivityObserver(@NonNull NetworkConnectivityManager networkConnectivityManager, @NonNull InterfaceC2217Fn.Provider<C4Replicator> provider) {
        this.connectivityManager = networkConnectivityManager;
        this.replFactory = provider;
    }

    public void handleOffline(@NonNull ReplicatorActivityLevel replicatorActivityLevel, boolean z) {
        if (z) {
            this.connectivityManager.unregisterObserver(this);
        } else {
            if (replicatorActivityLevel.equals(ReplicatorActivityLevel.OFFLINE)) {
                return;
            }
            this.connectivityManager.registerObserver(this);
            onConnectivityChanged(this.connectivityManager.isConnected());
        }
    }

    @Override // com.couchbase.lite.internal.replicator.NetworkConnectivityManager.Observer
    public void onConnectivityChanged(boolean z) {
        C4Replicator c4Replicator = this.replFactory.get();
        if (c4Replicator == null) {
            return;
        }
        Log.m9899d(LogDomain.NETWORK, "Connectivity change for @%s: %s", this, Boolean.valueOf(z));
        c4Replicator.setHostReachable(z);
    }
}
