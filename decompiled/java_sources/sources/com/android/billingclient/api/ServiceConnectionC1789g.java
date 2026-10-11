package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.play_billing.zzau;

/* renamed from: com.android.billingclient.api.g */
/* loaded from: classes3.dex */
public final class ServiceConnectionC1789g implements ServiceConnection {

    /* renamed from: e */
    public final /* synthetic */ C1790h f13554e;

    public /* synthetic */ ServiceConnectionC1789g(C1790h c1790h, zzcb zzcbVar) {
        this.f13554e = c1790h;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.google.android.gms.internal.play_billing.zze.zzk("BillingClientTesting", "Billing Override Service connected.");
        C1790h.m7905H1(this.f13554e, zzau.zzc(iBinder));
        C1790h.m7906I1(this.f13554e, 2);
        C1790h.m7910v1(this.f13554e, 26);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.internal.play_billing.zze.zzl("BillingClientTesting", "Billing Override Service disconnected.");
        C1790h.m7905H1(this.f13554e, null);
        C1790h.m7906I1(this.f13554e, 0);
    }
}
