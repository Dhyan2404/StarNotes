package com.sunia.HTREnginev2;

/* loaded from: classes5.dex */
public final class cjp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ long f66899e;

    /* renamed from: f */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzb f66900f;

    public cjp(com.google.android.gms.measurement.internal.zzb zzbVar, long j) {
        this.f66899e = j;
        this.f66900f = zzbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f66900f.m22302e(this.f66899e);
    }
}
