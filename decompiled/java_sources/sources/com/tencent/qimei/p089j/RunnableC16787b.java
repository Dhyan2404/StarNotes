package com.tencent.qimei.p089j;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p093n.C16806a;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.tencent.qimei.j.b */
/* loaded from: classes10.dex */
public final class RunnableC16787b extends BroadcastReceiver implements Runnable {

    /* renamed from: a */
    public static RunnableC16787b f93501a;

    /* renamed from: c */
    public ConnectivityManager.NetworkCallback f93503c;

    /* renamed from: g */
    public ConnectivityManager f93507g;

    /* renamed from: b */
    public final Map<InterfaceC16788c, String> f93502b = new ConcurrentHashMap();

    /* renamed from: d */
    public boolean f93504d = true;

    /* renamed from: e */
    public volatile boolean f93505e = false;

    /* renamed from: f */
    public boolean f93506f = false;

    /* renamed from: a */
    public static RunnableC16787b m59937a() {
        if (f93501a == null) {
            synchronized (RunnableC16787b.class) {
                if (f93501a == null) {
                    f93501a = new RunnableC16787b();
                }
            }
        }
        return f93501a;
    }

    /* renamed from: b */
    public static /* synthetic */ void m59940b(RunnableC16787b runnableC16787b) {
        Iterator<InterfaceC16788c> it2 = runnableC16787b.f93502b.keySet().iterator();
        while (it2.hasNext()) {
            it2.next().mo59799i();
        }
    }

    /* renamed from: c */
    public static /* synthetic */ void m59941c(RunnableC16787b runnableC16787b) {
        Iterator<InterfaceC16788c> it2 = runnableC16787b.f93502b.keySet().iterator();
        while (it2.hasNext()) {
            it2.next().mo59800j();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f93504d) {
            this.f93504d = false;
        } else {
            if (this.f93505e) {
                return;
            }
            AbstractC16769a.m59895a().mo59897a(this);
        }
    }

    @Override // java.lang.Runnable
    @SuppressLint({"MissingPermission"})
    public void run() {
        this.f93505e = true;
        if (C16762a.m59875a()) {
            Iterator<InterfaceC16788c> it2 = this.f93502b.keySet().iterator();
            while (it2.hasNext()) {
                it2.next().mo59799i();
            }
        } else {
            Iterator<InterfaceC16788c> it3 = this.f93502b.keySet().iterator();
            while (it3.hasNext()) {
                it3.next().mo59800j();
            }
        }
        this.f93505e = false;
    }

    /* renamed from: a */
    public synchronized void m59943a(String str) {
        for (Map.Entry<InterfaceC16788c, String> entry : this.f93502b.entrySet()) {
            if (str.equals(entry.getValue())) {
                this.f93502b.remove(entry.getKey());
            }
        }
    }

    /* renamed from: b */
    public synchronized void m59945b(Context context) {
        ConnectivityManager connectivityManager;
        if (this.f93502b.isEmpty() && (connectivityManager = this.f93507g) != null) {
            connectivityManager.unregisterNetworkCallback(this.f93503c);
        }
    }

    /* renamed from: a */
    public synchronized void m59944a(String str, InterfaceC16788c interfaceC16788c) {
        this.f93502b.put(interfaceC16788c, str);
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: a */
    public synchronized void m59942a(Context context) {
        if (this.f93502b.isEmpty()) {
            this.f93506f = C16762a.m59875a();
            this.f93503c = new C16786a(this);
            this.f93507g = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addTransportType(0);
            builder.addTransportType(1);
            builder.addTransportType(2);
            builder.addTransportType(3);
            builder.addTransportType(4);
            builder.addTransportType(5);
            builder.addTransportType(6);
            ConnectivityManager connectivityManager = this.f93507g;
            if (connectivityManager != null) {
                try {
                    connectivityManager.registerNetworkCallback(builder.build(), this.f93503c);
                } catch (SecurityException e) {
                    C16806a.m59992a(e);
                }
            }
        }
    }
}
