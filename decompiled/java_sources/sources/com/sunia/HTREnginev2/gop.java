package com.sunia.HTREnginev2;

import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes5.dex */
public final class gop implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzdo f71326e;

    /* renamed from: f */
    public final /* synthetic */ String f71327f;

    /* renamed from: g */
    public final /* synthetic */ String f71328g;

    /* renamed from: h */
    public final /* synthetic */ AppMeasurementDynamiteService f71329h;

    public gop(AppMeasurementDynamiteService appMeasurementDynamiteService, zzdo zzdoVar, String str, String str2) {
        this.f71326e = zzdoVar;
        this.f71327f = str;
        this.f71328g = str2;
        this.f71329h = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f71329h.f29653a.zzr().zza(this.f71326e, this.f71327f, this.f71328g);
    }
}
