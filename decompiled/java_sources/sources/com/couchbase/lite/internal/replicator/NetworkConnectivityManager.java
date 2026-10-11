package com.couchbase.lite.internal.replicator;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public interface NetworkConnectivityManager {

    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface Observer {
        void onConnectivityChanged(boolean z);
    }

    boolean isConnected();

    void registerObserver(@NonNull Observer observer);

    void unregisterObserver(@NonNull Observer observer);
}
