package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes5.dex */
public final class zmp implements Callable<List<yqp>> {

    /* renamed from: e */
    public final /* synthetic */ String f91969e;

    /* renamed from: f */
    public final /* synthetic */ zzic f91970f;

    public zmp(zzic zzicVar, String str) {
        this.f91969e = str;
        this.f91970f = zzicVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<yqp> call() throws Exception {
        zznv zznvVar;
        zznv zznvVar2;
        zznvVar = this.f91970f.f29882a;
        zznvVar.m22657h0();
        zznvVar2 = this.f91970f.f29882a;
        return zznvVar2.zzf().m54480A0(this.f91969e);
    }
}
