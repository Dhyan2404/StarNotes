package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import com.google.android.gms.internal.play_billing.zzjx;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzke;
import com.google.android.gms.internal.play_billing.zzki;
import com.google.android.gms.internal.play_billing.zzkl;
import com.google.android.gms.internal.play_billing.zzlu;
import com.sunia.HTREnginev2.fjp;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

/* renamed from: com.android.billingclient.api.b */
/* loaded from: classes3.dex */
public final class ServiceConnectionC1784b implements ServiceConnection {

    /* renamed from: e */
    public final BillingClientStateListener f13543e;

    /* renamed from: f */
    public final /* synthetic */ C1783a f13544f;

    public /* synthetic */ ServiceConnectionC1784b(C1783a c1783a, BillingClientStateListener billingClientStateListener, zzbl zzblVar) {
        this.f13544f = c1783a;
        this.f13543e = billingClientStateListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:179:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0272  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m7901a() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 769
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ServiceConnectionC1784b.m7901a():java.lang.Object");
    }

    /* renamed from: b */
    public final /* synthetic */ void m7902b() {
        this.f13544f.m7850O(0);
        BillingResult billingResult = C1791i.f13581n;
        this.f13544f.m7844K0(24, 6, billingResult);
        m7903c(billingResult);
    }

    /* renamed from: c */
    public final void m7903c(BillingResult billingResult) {
        Object obj;
        int i;
        obj = this.f13544f.f13517a;
        synchronized (obj) {
            i = this.f13544f.f13518b;
            if (i == 3) {
                return;
            }
            this.f13543e.onBillingSetupFinished(billingResult);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        Object obj;
        int i;
        int i2;
        fjp fjpVar;
        fjp fjpVar2;
        com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Billing service died.");
        try {
            if (C1783a.m7823v0(this.f13544f)) {
                fjpVar2 = this.f13544f.f13523g;
                zzjx zzc = zzjz.zzc();
                zzc.zzn(6);
                zzke zzc2 = zzki.zzc();
                zzc2.zzo(122);
                zzc.zza(zzc2);
                fjpVar2.mo54121c((zzjz) zzc.zzf());
            } else {
                fjpVar = this.f13544f.f13523g;
                fjpVar.mo54123e(zzkl.zzB());
            }
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
        obj = this.f13544f.f13517a;
        synchronized (obj) {
            i = this.f13544f.f13518b;
            if (i != 3) {
                i2 = this.f13544f.f13518b;
                if (i2 != 0) {
                    this.f13544f.m7850O(0);
                    this.f13544f.m7854Q();
                    this.f13543e.onBillingServiceDisconnected();
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        int i;
        Handler m7832C0;
        Future m7808i;
        BillingResult m7835F;
        com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Billing service connected.");
        obj = this.f13544f.f13517a;
        synchronized (obj) {
            i = this.f13544f.f13518b;
            if (i == 3) {
                return;
            }
            this.f13544f.f13524h = com.google.android.gms.internal.play_billing.zzam.zzu(iBinder);
            C1783a c1783a = this.f13544f;
            Callable callable = new Callable() { // from class: com.android.billingclient.api.zzay
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    ServiceConnectionC1784b.this.m7901a();
                    return null;
                }
            };
            Runnable runnable = new Runnable() { // from class: com.android.billingclient.api.zzaz
                @Override // java.lang.Runnable
                public final void run() {
                    ServiceConnectionC1784b.this.m7902b();
                }
            };
            m7832C0 = c1783a.m7832C0();
            m7808i = C1783a.m7808i(callable, 30000L, runnable, m7832C0, c1783a.m7839I());
            if (m7808i == null) {
                C1783a c1783a2 = this.f13544f;
                m7835F = c1783a2.m7835F();
                c1783a2.m7844K0(25, 6, m7835F);
                m7903c(m7835F);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        int i;
        fjp fjpVar;
        fjp fjpVar2;
        com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Billing service disconnected.");
        try {
            if (C1783a.m7823v0(this.f13544f)) {
                fjpVar2 = this.f13544f.f13523g;
                zzjx zzc = zzjz.zzc();
                zzc.zzn(6);
                zzke zzc2 = zzki.zzc();
                zzc2.zzo(121);
                zzc.zza(zzc2);
                fjpVar2.mo54121c((zzjz) zzc.zzf());
            } else {
                fjpVar = this.f13544f.f13523g;
                fjpVar.mo54120b(zzlu.zzB());
            }
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
        obj = this.f13544f.f13517a;
        synchronized (obj) {
            i = this.f13544f.f13518b;
            if (i == 3) {
                return;
            }
            this.f13544f.m7850O(0);
            this.f13543e.onBillingServiceDisconnected();
        }
    }
}
