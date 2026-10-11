package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* loaded from: classes5.dex */
public final class zak implements Handler.Callback {

    /* renamed from: e */
    @NotOnlyInitialized
    public final zaj f29391e;

    /* renamed from: l */
    public final Handler f29398l;

    /* renamed from: f */
    public final ArrayList f29392f = new ArrayList();

    /* renamed from: g */
    @VisibleForTesting
    public final ArrayList f29393g = new ArrayList();

    /* renamed from: h */
    public final ArrayList f29394h = new ArrayList();

    /* renamed from: i */
    public volatile boolean f29395i = false;

    /* renamed from: j */
    public final AtomicInteger f29396j = new AtomicInteger(0);

    /* renamed from: k */
    public boolean f29397k = false;

    /* renamed from: m */
    public final Object f29399m = new Object();

    public zak(Looper looper, zaj zajVar) {
        this.f29391e = zajVar;
        this.f29398l = new com.google.android.gms.internal.base.zau(looper, this);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            Log.wtf("GmsClientEvents", "Don't know how to handle message: " + i, new Exception());
            return false;
        }
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
        synchronized (this.f29399m) {
            if (this.f29395i && this.f29391e.isConnected() && this.f29392f.contains(connectionCallbacks)) {
                connectionCallbacks.onConnected(null);
            }
        }
        return true;
    }

    public final void zaa() {
        this.f29395i = false;
        this.f29396j.incrementAndGet();
    }

    public final void zab() {
        this.f29395i = true;
    }

    @VisibleForTesting
    public final void zac(ConnectionResult connectionResult) {
        Preconditions.checkHandlerThread(this.f29398l, "onConnectionFailure must only be called on the Handler thread");
        this.f29398l.removeMessages(1);
        synchronized (this.f29399m) {
            ArrayList arrayList = new ArrayList(this.f29394h);
            int i = this.f29396j.get();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener) it2.next();
                if (this.f29395i && this.f29396j.get() == i) {
                    if (this.f29394h.contains(onConnectionFailedListener)) {
                        onConnectionFailedListener.onConnectionFailed(connectionResult);
                    }
                }
                return;
            }
        }
    }

    @VisibleForTesting
    public final void zad(@Nullable Bundle bundle) {
        Preconditions.checkHandlerThread(this.f29398l, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.f29399m) {
            Preconditions.checkState(!this.f29397k);
            this.f29398l.removeMessages(1);
            this.f29397k = true;
            Preconditions.checkState(this.f29393g.isEmpty());
            ArrayList arrayList = new ArrayList(this.f29392f);
            int i = this.f29396j.get();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it2.next();
                if (!this.f29395i || !this.f29391e.isConnected() || this.f29396j.get() != i) {
                    break;
                } else if (!this.f29393g.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                }
            }
            this.f29393g.clear();
            this.f29397k = false;
        }
    }

    @VisibleForTesting
    public final void zae(int i) {
        Preconditions.checkHandlerThread(this.f29398l, "onUnintentionalDisconnection must only be called on the Handler thread");
        this.f29398l.removeMessages(1);
        synchronized (this.f29399m) {
            this.f29397k = true;
            ArrayList arrayList = new ArrayList(this.f29392f);
            int i2 = this.f29396j.get();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it2.next();
                if (!this.f29395i || this.f29396j.get() != i2) {
                    break;
                } else if (this.f29392f.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i);
                }
            }
            this.f29393g.clear();
            this.f29397k = false;
        }
    }

    public final void zaf(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.f29399m) {
            if (this.f29392f.contains(connectionCallbacks)) {
                Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + String.valueOf(connectionCallbacks) + " is already registered");
            } else {
                this.f29392f.add(connectionCallbacks);
            }
        }
        if (this.f29391e.isConnected()) {
            Handler handler = this.f29398l;
            handler.sendMessage(handler.obtainMessage(1, connectionCallbacks));
        }
    }

    public final void zag(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.f29399m) {
            if (this.f29394h.contains(onConnectionFailedListener)) {
                Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + String.valueOf(onConnectionFailedListener) + " is already registered");
            } else {
                this.f29394h.add(onConnectionFailedListener);
            }
        }
    }

    public final void zah(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.f29399m) {
            if (!this.f29392f.remove(connectionCallbacks)) {
                Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + String.valueOf(connectionCallbacks) + " not found");
            } else if (this.f29397k) {
                this.f29393g.add(connectionCallbacks);
            }
        }
    }

    public final void zai(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.f29399m) {
            if (!this.f29394h.remove(onConnectionFailedListener)) {
                Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + String.valueOf(onConnectionFailedListener) + " not found");
            }
        }
    }

    public final boolean zaj(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean contains;
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.f29399m) {
            contains = this.f29392f.contains(connectionCallbacks);
        }
        return contains;
    }

    public final boolean zak(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean contains;
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.f29399m) {
            contains = this.f29394h.contains(onConnectionFailedListener);
        }
        return contains;
    }
}
