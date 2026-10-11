package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.util.Preconditions;

/* renamed from: com.bumptech.glide.manager.a */
/* loaded from: classes3.dex */
public final class C2021a implements ConnectivityMonitor {

    /* renamed from: j */
    public static final String f15235j = "ConnectivityMonitor";

    /* renamed from: e */
    public final Context f15236e;

    /* renamed from: f */
    public final ConnectivityMonitor.ConnectivityListener f15237f;

    /* renamed from: g */
    public boolean f15238g;

    /* renamed from: h */
    public boolean f15239h;

    /* renamed from: i */
    public final BroadcastReceiver f15240i = new a();

    /* renamed from: com.bumptech.glide.manager.a$a */
    /* loaded from: classes3.dex */
    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NonNull Context context, Intent intent) {
            C2021a c2021a = C2021a.this;
            boolean z = c2021a.f15238g;
            c2021a.f15238g = c2021a.m9077a(context);
            if (z != C2021a.this.f15238g) {
                if (Log.isLoggable("ConnectivityMonitor", 3)) {
                    Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + C2021a.this.f15238g);
                }
                C2021a c2021a2 = C2021a.this;
                c2021a2.f15237f.onConnectivityChanged(c2021a2.f15238g);
            }
        }
    }

    public C2021a(@NonNull Context context, @NonNull ConnectivityMonitor.ConnectivityListener connectivityListener) {
        this.f15236e = context.getApplicationContext();
        this.f15237f = connectivityListener;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: a */
    public boolean m9077a(@NonNull Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) Preconditions.checkNotNull((ConnectivityManager) context.getSystemService("connectivity"))).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e);
            }
            return true;
        }
    }

    /* renamed from: b */
    public final void m9078b() {
        if (this.f15239h) {
            return;
        }
        this.f15238g = m9077a(this.f15236e);
        try {
            this.f15236e.registerReceiver(this.f15240i, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f15239h = true;
        } catch (SecurityException e) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to register", e);
            }
        }
    }

    /* renamed from: c */
    public final void m9079c() {
        if (this.f15239h) {
            this.f15236e.unregisterReceiver(this.f15240i);
            this.f15239h = false;
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
        m9078b();
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
        m9079c();
    }
}
