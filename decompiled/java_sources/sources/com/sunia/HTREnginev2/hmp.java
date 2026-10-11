package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes5.dex */
public final class hmp implements Callable<List<zzae>> {

    /* renamed from: e */
    public final /* synthetic */ String f72369e;

    /* renamed from: f */
    public final /* synthetic */ String f72370f;

    /* renamed from: g */
    public final /* synthetic */ String f72371g;

    /* renamed from: h */
    public final /* synthetic */ zzic f72372h;

    public hmp(zzic zzicVar, String str, String str2, String str3) {
        this.f72369e = str;
        this.f72370f = str2;
        this.f72371g = str3;
        this.f72372h = zzicVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzae> call() throws Exception {
        zznv zznvVar;
        zznv zznvVar2;
        zznvVar = this.f72372h.f29882a;
        zznvVar.m22657h0();
        zznvVar2 = this.f72372h.f29882a;
        return zznvVar2.zzf().m54543u(this.f72369e, this.f72370f, this.f72371g);
    }
}
