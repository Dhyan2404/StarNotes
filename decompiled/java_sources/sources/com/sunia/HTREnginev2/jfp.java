package com.sunia.HTREnginev2;

/* loaded from: classes5.dex */
public final class jfp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ String f74263e;

    /* renamed from: f */
    public final /* synthetic */ long f74264f;

    /* renamed from: g */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzb f74265g;

    public jfp(com.google.android.gms.measurement.internal.zzb zzbVar, String str, long j) {
        this.f74263e = str;
        this.f74264f = j;
        this.f74265g = zzbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.measurement.internal.zzb.m22298c(this.f74265g, this.f74263e, this.f74264f);
    }
}
