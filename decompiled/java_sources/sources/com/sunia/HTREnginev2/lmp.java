package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;
import java.util.concurrent.Callable;

/* loaded from: classes5.dex */
public final class lmp implements Callable<zzaj> {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f76618e;

    /* renamed from: f */
    public final /* synthetic */ zzic f76619f;

    public lmp(zzic zzicVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f76618e = zzoVar;
        this.f76619f = zzicVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzaj call() throws Exception {
        zznv zznvVar;
        zznv zznvVar2;
        zznvVar = this.f76619f.f29882a;
        zznvVar.m22657h0();
        zznvVar2 = this.f76619f.f29882a;
        return new zzaj(zznvVar2.m22650c(this.f76618e.zza));
    }
}
