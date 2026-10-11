package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes5.dex */
public final class emp implements Callable<List<yqp>> {

    /* renamed from: e */
    public final /* synthetic */ String f69099e;

    /* renamed from: f */
    public final /* synthetic */ String f69100f;

    /* renamed from: g */
    public final /* synthetic */ String f69101g;

    /* renamed from: h */
    public final /* synthetic */ zzic f69102h;

    public emp(zzic zzicVar, String str, String str2, String str3) {
        this.f69099e = str;
        this.f69100f = str2;
        this.f69101g = str3;
        this.f69102h = zzicVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<yqp> call() throws Exception {
        zznv zznvVar;
        zznv zznvVar2;
        zznvVar = this.f69102h.f29882a;
        zznvVar.m22657h0();
        zznvVar2 = this.f69102h.f29882a;
        return zznvVar2.zzf().m54516f0(this.f69099e, this.f69100f, this.f69101g);
    }
}
