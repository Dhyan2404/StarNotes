package com.sunia.HTREnginev2;

import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import com.google.android.gms.measurement.internal.zzbf;

/* loaded from: classes5.dex */
public final class gnp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzdo f71223e;

    /* renamed from: f */
    public final /* synthetic */ zzbf f71224f;

    /* renamed from: g */
    public final /* synthetic */ String f71225g;

    /* renamed from: h */
    public final /* synthetic */ AppMeasurementDynamiteService f71226h;

    public gnp(AppMeasurementDynamiteService appMeasurementDynamiteService, zzdo zzdoVar, zzbf zzbfVar, String str) {
        this.f71223e = zzdoVar;
        this.f71224f = zzbfVar;
        this.f71225g = str;
        this.f71226h = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f71226h.f29653a.zzr().zza(this.f71223e, this.f71224f, this.f71225g);
    }
}
