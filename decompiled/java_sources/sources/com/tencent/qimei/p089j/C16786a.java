package com.tencent.qimei.p089j;

import android.net.ConnectivityManager;
import android.net.Network;
import androidx.annotation.NonNull;
import com.tencent.qimei.p093n.C16806a;

/* renamed from: com.tencent.qimei.j.a */
/* loaded from: classes10.dex */
public class C16786a extends ConnectivityManager.NetworkCallback {

    /* renamed from: a */
    public final /* synthetic */ RunnableC16787b f93500a;

    public C16786a(RunnableC16787b runnableC16787b) {
        this.f93500a = runnableC16787b;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(@NonNull Network network) {
        boolean z;
        z = this.f93500a.f93506f;
        if (z) {
            return;
        }
        this.f93500a.f93506f = true;
        C16806a.m59995b("QM", "current network switched to the available state", new Object[0]);
        RunnableC16787b.m59940b(this.f93500a);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(@NonNull Network network) {
        this.f93500a.f93506f = false;
        C16806a.m59995b("QM", "current network lost", new Object[0]);
        RunnableC16787b.m59941c(this.f93500a);
    }
}
