package com.couchbase.lite.internal.connectivity;

import android.net.ConnectivityManager;
import android.net.Network;
import androidx.annotation.NonNull;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.logging.Log;

/* loaded from: classes4.dex */
abstract class CallbackConnectivityWatcher extends ConnectivityWatcher {

    @NonNull
    protected final ConnectivityManager.NetworkCallback connectivityCallback;

    public CallbackConnectivityWatcher(@NonNull String str, @NonNull AndroidConnectivityManager androidConnectivityManager) {
        super(str, androidConnectivityManager);
        this.connectivityCallback = new ConnectivityManager.NetworkCallback() { // from class: com.couchbase.lite.internal.connectivity.CallbackConnectivityWatcher.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(@NonNull Network network) {
                CallbackConnectivityWatcher callbackConnectivityWatcher = CallbackConnectivityWatcher.this;
                callbackConnectivityWatcher.onConnectivityChange(callbackConnectivityWatcher.isConnected());
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(@NonNull Network network) {
                CallbackConnectivityWatcher callbackConnectivityWatcher = CallbackConnectivityWatcher.this;
                callbackConnectivityWatcher.onConnectivityChange(callbackConnectivityWatcher.isConnected());
            }
        };
    }

    @Override // com.couchbase.lite.internal.connectivity.ConnectivityWatcher
    public final void stop() {
        ConnectivityManager sysMgr = getSysMgr();
        if (sysMgr == null) {
            return;
        }
        String str = this.name + " network listener for " + getCblMgr() + ": " + this;
        try {
            sysMgr.unregisterNetworkCallback(this.connectivityCallback);
            Log.m9899d(LogDomain.NETWORK, "Stopped: %s", str);
        } catch (RuntimeException e) {
            Log.m9909w(LogDomain.NETWORK, "Failed stopping " + str, e);
        }
    }
}
