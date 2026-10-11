package com.sunia.HTREnginev2;

import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes5.dex */
public final class vmp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzdo f87706e;

    /* renamed from: f */
    public final /* synthetic */ String f87707f;

    /* renamed from: g */
    public final /* synthetic */ String f87708g;

    /* renamed from: h */
    public final /* synthetic */ boolean f87709h;

    /* renamed from: i */
    public final /* synthetic */ AppMeasurementDynamiteService f87710i;

    public vmp(AppMeasurementDynamiteService appMeasurementDynamiteService, zzdo zzdoVar, String str, String str2, boolean z) {
        this.f87706e = zzdoVar;
        this.f87707f = str;
        this.f87708g = str2;
        this.f87709h = z;
        this.f87710i = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f87710i.f29653a.zzr().zza(this.f87706e, this.f87707f, this.f87708g, this.f87709h);
    }
}
