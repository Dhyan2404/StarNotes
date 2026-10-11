package com.sunia.HTREnginev2;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.StrictMode;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.zzt;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class brp implements ServiceConnection, zzt {

    /* renamed from: e */
    public final Map f66072e = new HashMap();

    /* renamed from: f */
    public int f66073f = 2;

    /* renamed from: g */
    public boolean f66074g;

    /* renamed from: h */
    @Nullable
    public IBinder f66075h;

    /* renamed from: i */
    public final com.google.android.gms.common.internal.zzo f66076i;

    /* renamed from: j */
    public ComponentName f66077j;

    /* renamed from: k */
    public final /* synthetic */ krp f66078k;

    public brp(krp krpVar, com.google.android.gms.common.internal.zzo zzoVar) {
        this.f66078k = krpVar;
        this.f66076i = zzoVar;
    }

    /* renamed from: a */
    public final int m53327a() {
        return this.f66073f;
    }

    /* renamed from: b */
    public final ComponentName m53328b() {
        return this.f66077j;
    }

    @Nullable
    /* renamed from: c */
    public final IBinder m53329c() {
        return this.f66075h;
    }

    /* renamed from: d */
    public final void m53330d(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.f66072e.put(serviceConnection, serviceConnection2);
    }

    /* renamed from: e */
    public final void m53331e(String str, @Nullable Executor executor) {
        ConnectionTracker connectionTracker;
        Context context;
        Context context2;
        ConnectionTracker connectionTracker2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j;
        StrictMode.VmPolicy.Builder permitUnsafeIntentLaunch;
        this.f66073f = 3;
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (PlatformVersion.isAtLeastS()) {
            permitUnsafeIntentLaunch = new StrictMode.VmPolicy.Builder(vmPolicy).permitUnsafeIntentLaunch();
            StrictMode.setVmPolicy(permitUnsafeIntentLaunch.build());
        }
        try {
            krp krpVar = this.f66078k;
            connectionTracker = krpVar.f75781j;
            context = krpVar.f75778g;
            com.google.android.gms.common.internal.zzo zzoVar = this.f66076i;
            context2 = krpVar.f75778g;
            boolean zza = connectionTracker.zza(context, str, zzoVar.zzb(context2), this, 4225, executor);
            this.f66074g = zza;
            if (zza) {
                handler = this.f66078k.f75779h;
                Message obtainMessage = handler.obtainMessage(1, this.f66076i);
                handler2 = this.f66078k.f75779h;
                j = this.f66078k.f75783l;
                handler2.sendMessageDelayed(obtainMessage, j);
            } else {
                this.f66073f = 2;
                try {
                    krp krpVar2 = this.f66078k;
                    connectionTracker2 = krpVar2.f75781j;
                    context3 = krpVar2.f75778g;
                    connectionTracker2.unbindService(context3, this);
                } catch (IllegalArgumentException unused) {
                }
            }
        } finally {
            StrictMode.setVmPolicy(vmPolicy);
        }
    }

    /* renamed from: f */
    public final void m53332f(ServiceConnection serviceConnection, String str) {
        this.f66072e.remove(serviceConnection);
    }

    /* renamed from: g */
    public final void m53333g(String str) {
        Handler handler;
        ConnectionTracker connectionTracker;
        Context context;
        com.google.android.gms.common.internal.zzo zzoVar = this.f66076i;
        handler = this.f66078k.f75779h;
        handler.removeMessages(1, zzoVar);
        krp krpVar = this.f66078k;
        connectionTracker = krpVar.f75781j;
        context = krpVar.f75778g;
        connectionTracker.unbindService(context, this);
        this.f66074g = false;
        this.f66073f = 2;
    }

    /* renamed from: h */
    public final boolean m53334h(ServiceConnection serviceConnection) {
        return this.f66072e.containsKey(serviceConnection);
    }

    /* renamed from: i */
    public final boolean m53335i() {
        return this.f66072e.isEmpty();
    }

    /* renamed from: j */
    public final boolean m53336j() {
        return this.f66074g;
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f66078k.f75777f;
        synchronized (hashMap) {
            handler = this.f66078k.f75779h;
            handler.removeMessages(1, this.f66076i);
            this.f66075h = iBinder;
            this.f66077j = componentName;
            Iterator it2 = this.f66072e.values().iterator();
            while (it2.hasNext()) {
                ((ServiceConnection) it2.next()).onServiceConnected(componentName, iBinder);
            }
            this.f66073f = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f66078k.f75777f;
        synchronized (hashMap) {
            handler = this.f66078k.f75779h;
            handler.removeMessages(1, this.f66076i);
            this.f66075h = null;
            this.f66077j = componentName;
            Iterator it2 = this.f66072e.values().iterator();
            while (it2.hasNext()) {
                ((ServiceConnection) it2.next()).onServiceDisconnected(componentName);
            }
            this.f66073f = 2;
        }
    }
}
