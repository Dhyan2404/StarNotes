package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlk;
import com.google.android.gms.measurement.internal.zznv;

/* loaded from: classes5.dex */
public final class amp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ String f64859e;

    /* renamed from: f */
    public final /* synthetic */ String f64860f;

    /* renamed from: g */
    public final /* synthetic */ String f64861g;

    /* renamed from: h */
    public final /* synthetic */ long f64862h;

    /* renamed from: i */
    public final /* synthetic */ zzic f64863i;

    public amp(zzic zzicVar, String str, String str2, String str3, long j) {
        this.f64859e = str;
        this.f64860f = str2;
        this.f64861g = str3;
        this.f64862h = j;
        this.f64863i = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznv zznvVar;
        zznv zznvVar2;
        String str = this.f64859e;
        if (str == null) {
            zznvVar2 = this.f64863i.f29882a;
            zznvVar2.zza(this.f64860f, null);
        } else {
            zzlk zzlkVar = new zzlk(this.f64861g, str, this.f64862h);
            zznvVar = this.f64863i.f29882a;
            zznvVar.zza(this.f64860f, zzlkVar);
        }
    }
}
