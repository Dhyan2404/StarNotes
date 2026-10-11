package com.google.android.gms.measurement.internal;

/* renamed from: com.google.android.gms.measurement.internal.l */
/* loaded from: classes5.dex */
public final class RunnableC5124l implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzlk f29689e;

    /* renamed from: f */
    public final /* synthetic */ long f29690f;

    /* renamed from: g */
    public final /* synthetic */ zzlj f29691g;

    public RunnableC5124l(zzlj zzljVar, zzlk zzlkVar, long j) {
        this.f29689e = zzlkVar;
        this.f29690f = j;
        this.f29691g = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29691g.m22570j(this.f29689e, false, this.f29690f);
        zzlj zzljVar = this.f29691g;
        zzljVar.zza = null;
        zzljVar.zzo().zza((zzlk) null);
    }
}
