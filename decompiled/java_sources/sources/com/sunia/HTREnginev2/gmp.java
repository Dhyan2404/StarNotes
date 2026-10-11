package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes5.dex */
public final class gmp implements Callable<List<zzae>> {

    /* renamed from: e */
    public final /* synthetic */ String f71181e;

    /* renamed from: f */
    public final /* synthetic */ String f71182f;

    /* renamed from: g */
    public final /* synthetic */ String f71183g;

    /* renamed from: h */
    public final /* synthetic */ zzic f71184h;

    public gmp(zzic zzicVar, String str, String str2, String str3) {
        this.f71181e = str;
        this.f71182f = str2;
        this.f71183g = str3;
        this.f71184h = zzicVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzae> call() throws Exception {
        zznv zznvVar;
        zznv zznvVar2;
        zznvVar = this.f71184h.f29882a;
        zznvVar.m22657h0();
        zznvVar2 = this.f71184h.f29882a;
        return zznvVar2.zzf().m54543u(this.f71181e, this.f71182f, this.f71183g);
    }
}
