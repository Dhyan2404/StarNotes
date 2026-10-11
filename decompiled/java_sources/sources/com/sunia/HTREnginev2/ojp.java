package com.sunia.HTREnginev2;

/* loaded from: classes5.dex */
public final class ojp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ String f79808e;

    /* renamed from: f */
    public final /* synthetic */ long f79809f;

    /* renamed from: g */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzb f79810g;

    public ojp(com.google.android.gms.measurement.internal.zzb zzbVar, String str, long j) {
        this.f79808e = str;
        this.f79809f = j;
        this.f79810g = zzbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.measurement.internal.zzb.m22299f(this.f79810g, this.f79808e, this.f79809f);
    }
}
