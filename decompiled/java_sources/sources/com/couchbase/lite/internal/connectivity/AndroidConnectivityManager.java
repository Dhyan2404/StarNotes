package com.couchbase.lite.internal.connectivity;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.internal.replicator.NetworkConnectivityManager;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.sunia.HTREnginev2.cyi;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public class AndroidConnectivityManager implements NetworkConnectivityManager {
    private final int androidVersion;

    @NonNull
    private final AtomicReference<ConnectivityWatcher> listener;

    @NonNull
    @GuardedBy("observers")
    private final WeakHashMap<NetworkConnectivityManager.Observer, Boolean> observers;

    @NonNull
    private final InterfaceC2217Fn.Runner runner;

    public AndroidConnectivityManager(@NonNull InterfaceC2217Fn.Runner runner) {
        this(Build.VERSION.SDK_INT, runner);
    }

    @NonNull
    public static AndroidConnectivityManager newInstance() {
        final Handler handler = new Handler(Looper.getMainLooper());
        return new AndroidConnectivityManager(new InterfaceC2217Fn.Runner() { // from class: com.sunia.HTREnginev2.la
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Runner
            public final void run(Runnable runnable) {
                handler.post(runnable);
            }
        });
    }

    @SuppressLint({"NewApi"})
    private void start() {
        if (this.listener.get() != null) {
            return;
        }
        int i = this.androidVersion;
        ConnectivityWatcher connectivityListener21to23 = i < 24 ? new ConnectivityListener21to23(this) : i < 29 ? new ConnectivityListener24to28(this) : new ConnectivityListenerPost28(this);
        if (cyi.m53538a(this.listener, null, connectivityListener21to23)) {
            connectivityListener21to23.start();
        }
    }

    private void stop() {
        ConnectivityWatcher andSet = this.listener.getAndSet(null);
        if (andSet != null) {
            andSet.stop();
        }
    }

    @VisibleForTesting
    public void clear() {
        HashSet hashSet;
        synchronized (this.observers) {
            hashSet = new HashSet(this.observers.keySet());
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            unregisterObserver((NetworkConnectivityManager.Observer) it2.next());
        }
    }

    public void connectivityChanged(final boolean z) {
        HashSet<NetworkConnectivityManager.Observer> hashSet;
        synchronized (this.observers) {
            hashSet = new HashSet(this.observers.keySet());
        }
        if (hashSet.isEmpty()) {
            stop();
            return;
        }
        for (final NetworkConnectivityManager.Observer observer : hashSet) {
            this.runner.run(new Runnable() { // from class: com.sunia.HTREnginev2.ma
                @Override // java.lang.Runnable
                public final void run() {
                    NetworkConnectivityManager.Observer.this.onConnectivityChanged(z);
                }
            });
        }
    }

    @Override // com.couchbase.lite.internal.replicator.NetworkConnectivityManager
    public boolean isConnected() {
        ConnectivityWatcher connectivityWatcher = this.listener.get();
        return connectivityWatcher != null && connectivityWatcher.isConnected();
    }

    @VisibleForTesting
    public boolean isRunning() {
        return this.listener.get() != null;
    }

    @Override // com.couchbase.lite.internal.replicator.NetworkConnectivityManager
    public void registerObserver(@NonNull NetworkConnectivityManager.Observer observer) {
        boolean isEmpty;
        synchronized (this.observers) {
            isEmpty = this.observers.isEmpty();
            this.observers.put(observer, Boolean.TRUE);
        }
        if (isEmpty) {
            start();
        }
    }

    @Override // com.couchbase.lite.internal.replicator.NetworkConnectivityManager
    public void unregisterObserver(@NonNull NetworkConnectivityManager.Observer observer) {
        boolean isEmpty;
        synchronized (this.observers) {
            this.observers.remove(observer);
            isEmpty = this.observers.isEmpty();
        }
        if (isEmpty) {
            stop();
        }
    }

    @VisibleForTesting
    public AndroidConnectivityManager(int i, @NonNull InterfaceC2217Fn.Runner runner) {
        this.observers = new WeakHashMap<>();
        this.listener = new AtomicReference<>(null);
        this.runner = runner;
        this.androidVersion = i;
    }
}
