package com.google.android.gms.measurement.internal;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* renamed from: com.google.android.gms.measurement.internal.m */
/* loaded from: classes5.dex */
public final class RunnableC5125m implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AppMeasurementDynamiteService.C5111a f29692e;

    /* renamed from: f */
    public final /* synthetic */ AppMeasurementDynamiteService f29693f;

    public RunnableC5125m(AppMeasurementDynamiteService appMeasurementDynamiteService, AppMeasurementDynamiteService.C5111a c5111a) {
        this.f29692e = c5111a;
        this.f29693f = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29693f.f29653a.zzp().zza(this.f29692e);
    }
}
