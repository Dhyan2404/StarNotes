package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzab;

/* loaded from: classes5.dex */
public final class jhp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ anp f74316e;

    /* renamed from: f */
    public final /* synthetic */ ehp f74317f;

    public jhp(ehp ehpVar, anp anpVar) {
        this.f74316e = anpVar;
        this.f74317f = ehpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f74316e.zzd();
        if (zzab.zza()) {
            this.f74316e.zzl().zzb(this);
            return;
        }
        boolean m53968e = this.f74317f.m53968e();
        this.f74317f.f68957c = 0L;
        if (m53968e) {
            this.f74317f.mo22272d();
        }
    }
}
