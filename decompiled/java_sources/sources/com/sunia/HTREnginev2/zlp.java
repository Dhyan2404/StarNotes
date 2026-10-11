package com.sunia.HTREnginev2;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;

/* loaded from: classes5.dex */
public final class zlp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f91941e;

    /* renamed from: f */
    public final /* synthetic */ zzic f91942f;

    public zlp(zzic zzicVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f91941e = zzoVar;
        this.f91942f = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznv zznvVar;
        zznv zznvVar2;
        zznvVar = this.f91942f.f29882a;
        zznvVar.m22657h0();
        zznvVar2 = this.f91942f.f29882a;
        com.google.android.gms.measurement.internal.zzo zzoVar = this.f91941e;
        zznvVar2.zzl().zzt();
        zznvVar2.m22659i0();
        Preconditions.checkNotEmpty(zzoVar.zza);
        zznvVar2.m22654f(zzoVar);
    }
}
