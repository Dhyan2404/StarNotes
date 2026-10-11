package com.google.android.gms.measurement.internal;

/* renamed from: com.google.android.gms.measurement.internal.j */
/* loaded from: classes5.dex */
public final class RunnableC5122j implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ long f29686e;

    /* renamed from: f */
    public final /* synthetic */ zzlj f29687f;

    public RunnableC5122j(zzlj zzljVar, long j) {
        this.f29686e = j;
        this.f29687f = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29687f.zzc().zza(this.f29686e);
        this.f29687f.zza = null;
    }
}
