package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;

/* loaded from: classes5.dex */
public final class cmp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzae f66979e;

    /* renamed from: f */
    public final /* synthetic */ zzic f66980f;

    public cmp(zzic zzicVar, zzae zzaeVar) {
        this.f66979e = zzaeVar;
        this.f66980f = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznv zznvVar;
        zznv zznvVar2;
        zznv zznvVar3;
        zznvVar = this.f66980f.f29882a;
        zznvVar.m22657h0();
        if (this.f66979e.zzc.zza() == null) {
            zznvVar3 = this.f66980f.f29882a;
            zznvVar3.m22665n(this.f66979e);
        } else {
            zznvVar2 = this.f66980f.f29882a;
            zznvVar2.m22635P(this.f66979e);
        }
    }
}
