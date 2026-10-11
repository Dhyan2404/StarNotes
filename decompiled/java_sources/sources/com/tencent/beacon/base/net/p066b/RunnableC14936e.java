package com.tencent.beacon.base.net.p066b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.RequiresPermission;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.tencent.beacon.base.net.b.e */
/* loaded from: classes10.dex */
public final class RunnableC14936e extends BroadcastReceiver implements Runnable {

    /* renamed from: a */
    private static final List<a> f92858a = new ArrayList();

    /* renamed from: b */
    private static volatile boolean f92859b = false;

    /* renamed from: c */
    private boolean f92860c = true;

    /* renamed from: d */
    private volatile boolean f92861d = false;

    /* renamed from: com.tencent.beacon.base.net.b.e$a */
    /* loaded from: classes10.dex */
    public interface a {
        /* renamed from: a */
        void mo59020a();

        /* renamed from: b */
        void mo59021b();
    }

    /* renamed from: a */
    public static void m59309a(Context context, a aVar) {
        if (context == null) {
            C14954c.m59395b("[net] context == null!", new Object[0]);
            return;
        }
        List<a> list = f92858a;
        synchronized (list) {
            if (!list.contains(aVar)) {
                list.add(aVar);
            }
        }
        if (f92859b) {
            return;
        }
        context.registerReceiver(new RunnableC14936e(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        f92859b = true;
    }

    /* renamed from: b */
    private void m59310b() {
        List<a> list = f92858a;
        synchronized (list) {
            Iterator<a> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().mo59021b();
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f92860c) {
            this.f92860c = false;
        } else {
            if (this.f92861d) {
                return;
            }
            AbstractC14874b.m58931a().mo58941a(this);
        }
    }

    @Override // java.lang.Runnable
    @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
    public void run() {
        this.f92861d = true;
        if (C14935d.m59305d()) {
            C14954c.m59400d("[net] current network available!", new Object[0]);
            m59308a();
        } else {
            C14954c.m59400d("[net] current network unavailable!", new Object[0]);
            m59310b();
        }
        this.f92861d = false;
    }

    /* renamed from: a */
    private void m59308a() {
        List<a> list = f92858a;
        synchronized (list) {
            Iterator<a> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().mo59020a();
            }
        }
    }
}
