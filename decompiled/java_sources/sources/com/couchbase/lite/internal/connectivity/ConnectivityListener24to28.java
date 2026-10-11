package com.couchbase.lite.internal.connectivity;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(api = 24)
/* loaded from: classes4.dex */
public final class ConnectivityListener24to28 extends CallbackConnectivityWatcher {
    public ConnectivityListener24to28(@NonNull AndroidConnectivityManager androidConnectivityManager) {
        super("24-28", androidConnectivityManager);
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
            sysMgr.registerDefaultNetworkCallback(this.connectivityCallback);
            logStart();
        } catch (RuntimeException e) {
            startFailed(e);
        }
    }
}
