package com.couchbase.lite.internal.connectivity;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(api = 29)
/* loaded from: classes4.dex */
public final class ConnectivityListenerPost28 extends CallbackConnectivityWatcher {
    public ConnectivityListenerPost28(@NonNull AndroidConnectivityManager androidConnectivityManager) {
        super(">=29", androidConnectivityManager);
    }

    @Override // com.couchbase.lite.internal.connectivity.ConnectivityWatcher
    public boolean isConnected() {
        ConnectivityManager sysMgr = getSysMgr();
        if (sysMgr == null) {
            return true;
        }
        NetworkCapabilities networkCapabilities = sysMgr.getNetworkCapabilities(sysMgr.getActiveNetwork());
        return networkCapabilities != null && networkCapabilities.hasCapability(12);
    }

    @Override // com.couchbase.lite.internal.connectivity.ConnectivityWatcher
    public void start() {
        ConnectivityManager sysMgr = getSysMgr();
        if (sysMgr == null) {
            return;
        }
        try {
            sysMgr.registerDefaultNetworkCallback(this.connectivityCallback);
            logStart();
        } catch (RuntimeException e) {
            startFailed(e);
        }
    }
}
