package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzjq;

/* loaded from: classes5.dex */
public final class pnp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ long f81036e;

    /* renamed from: f */
    public final /* synthetic */ zzjq f81037f;

    public pnp(zzjq zzjqVar, long j) {
        this.f81036e = j;
        this.f81037f = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f81037f.zzk().f72330l.zza(this.f81036e);
        this.f81037f.zzj().zzc().zza("Session timeout duration set", Long.valueOf(this.f81036e));
    }
}
