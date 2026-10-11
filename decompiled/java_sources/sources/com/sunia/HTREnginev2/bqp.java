package com.sunia.HTREnginev2;

import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes5.dex */
public final class bqp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzdo f66040e;

    /* renamed from: f */
    public final /* synthetic */ AppMeasurementDynamiteService f66041f;

    public bqp(AppMeasurementDynamiteService appMeasurementDynamiteService, zzdo zzdoVar) {
        this.f66040e = zzdoVar;
        this.f66041f = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f66041f.f29653a.zzt().zza(this.f66040e, this.f66041f.f29653a.zzab());
    }
}
