package com.sunia.HTREnginev2;

import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes5.dex */
public final class tlp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzdo f85466e;

    /* renamed from: f */
    public final /* synthetic */ AppMeasurementDynamiteService f85467f;

    public tlp(AppMeasurementDynamiteService appMeasurementDynamiteService, zzdo zzdoVar) {
        this.f85466e = zzdoVar;
        this.f85467f = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f85467f.f29653a.zzr().zza(this.f85466e);
    }
}
