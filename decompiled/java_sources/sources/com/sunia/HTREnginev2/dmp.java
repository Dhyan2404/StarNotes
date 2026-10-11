package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;

/* loaded from: classes5.dex */
public final class dmp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzae f68026e;

    /* renamed from: f */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f68027f;

    /* renamed from: g */
    public final /* synthetic */ zzic f68028g;

    public dmp(zzic zzicVar, zzae zzaeVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f68026e = zzaeVar;
        this.f68027f = zzoVar;
        this.f68028g = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznv zznvVar;
        zznv zznvVar2;
        zznv zznvVar3;
        zznvVar = this.f68028g.f29882a;
        zznvVar.m22657h0();
        if (this.f68026e.zzc.zza() == null) {
            zznvVar3 = this.f68028g.f29882a;
            zznvVar3.m22667o(this.f68026e, this.f68027f);
        } else {
            zznvVar2 = this.f68028g.f29882a;
            zznvVar2.m22636Q(this.f68026e, this.f68027f);
        }
    }
}
