package com.sunia.HTREnginev2;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;

/* loaded from: classes5.dex */
public final class imp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f73392e;

    /* renamed from: f */
    public final /* synthetic */ zzic f73393f;

    public imp(zzic zzicVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f73392e = zzoVar;
        this.f73393f = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznv zznvVar;
        zznv zznvVar2;
        zznvVar = this.f73393f.f29882a;
        zznvVar.m22657h0();
        zznvVar2 = this.f73393f.f29882a;
        com.google.android.gms.measurement.internal.zzo zzoVar = this.f73392e;
        zznvVar2.zzl().zzt();
        zznvVar2.m22659i0();
        Preconditions.checkNotEmpty(zzoVar.zza);
        zznvVar2.m22653d0(zzoVar);
        zznvVar2.m22651c0(zzoVar);
    }
}
