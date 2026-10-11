package com.sunia.HTREnginev2;

import com.google.android.gms.internal.measurement.zznm;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzje;
import com.google.android.gms.measurement.internal.zzjq;

/* loaded from: classes5.dex */
public final class cop implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzje f67033e;

    /* renamed from: f */
    public final /* synthetic */ long f67034f;

    /* renamed from: g */
    public final /* synthetic */ long f67035g;

    /* renamed from: h */
    public final /* synthetic */ boolean f67036h;

    /* renamed from: i */
    public final /* synthetic */ zzje f67037i;

    /* renamed from: j */
    public final /* synthetic */ zzjq f67038j;

    public cop(zzjq zzjqVar, zzje zzjeVar, long j, long j2, boolean z, zzje zzjeVar2) {
        this.f67033e = zzjeVar;
        this.f67034f = j;
        this.f67035g = j2;
        this.f67036h = z;
        this.f67037i = zzjeVar2;
        this.f67038j = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f67038j.m22549j(this.f67033e);
        if (!zznm.zza() || !this.f67038j.zze().zza(zzbh.zzcx)) {
            this.f67038j.m22545f(this.f67034f, false);
        }
        zzjq.m22536m(this.f67038j, this.f67033e, this.f67035g, true, this.f67036h);
        zzjq.m22537n(this.f67038j, this.f67033e, this.f67037i);
    }
}
