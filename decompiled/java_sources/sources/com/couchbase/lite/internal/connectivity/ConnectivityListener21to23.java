package com.couchbase.lite.internal.connectivity;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import androidx.annotation.NonNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class ConnectivityListener21to23 extends CallbackConnectivityWatcher {
    public ConnectivityListener21to23(@NonNull AndroidConnectivityManager androidConnectivityManager) {
        super("21-23", androidConnectivityManager);
    }

    @Override // com.couchbase.lite.internal.connectivity.ConnectivityWatcher
    public boolean isConnected() {
        ConnectivityManager sysMgr = getSysMgr();
        if (sysMgr == null) {
            return true;
        }
        NetworkInfo activeNetworkInfo = sysMgr.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // com.couchbase.lite.internal.connectivity.ConnectivityWatcher
    public void start() {
        ConnectivityManager sysMgr = getSysMgr();
        if (sysMgr == null) {
            return;
        }
        try {
            sysMgr.registerNetworkCallback(new NetworkRequest.Builder().build(), this.connectivityCallback);
            logStart();
        } catch (RuntimeException e) {
            startFailed(e);
        }
    }
}
