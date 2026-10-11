package com.couchbase.lite.internal.connectivity;

import android.net.ConnectivityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.logging.Log;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class ConnectivityWatcher {

    @NonNull
    private final WeakReference<AndroidConnectivityManager> mgr;

    @NonNull
    protected final String name;

    public ConnectivityWatcher(@NonNull String str, @NonNull AndroidConnectivityManager androidConnectivityManager) {
        this.name = str;
        this.mgr = new WeakReference<>(androidConnectivityManager);
    }

    @Nullable
    public final AndroidConnectivityManager getCblMgr() {
        return this.mgr.get();
    }

    @Nullable
    public final ConnectivityManager getSysMgr() {
        return (ConnectivityManager) CouchbaseLiteInternal.getContext().getSystemService("connectivity");
    }

    public abstract boolean isConnected();

    public final void logStart() {
        Log.m9899d(LogDomain.NETWORK, "Started %s network listener for %s: %s", this.name, getCblMgr(), this);
    }

    public final void onConnectivityChange(boolean z) {
        AndroidConnectivityManager cblMgr = getCblMgr();
        if (cblMgr == null) {
            stop();
        } else {
            Log.m9899d(LogDomain.NETWORK, "Changed %s connectivity to %s for %s: %s", this.name, Boolean.valueOf(z), getCblMgr(), this);
            cblMgr.connectivityChanged(z);
        }
    }

    public abstract void start();

    public final void startFailed(RuntimeException runtimeException) {
        Log.m9910w(LogDomain.NETWORK, "Failed starting %s network listener for %s: %s", runtimeException, this.name, getCblMgr(), this);
    }

    public abstract void stop();
}
