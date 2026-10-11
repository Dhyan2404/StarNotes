package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;
import java.util.concurrent.Callable;

/* loaded from: classes5.dex */
public final class mmp implements Callable<byte[]> {

    /* renamed from: e */
    public final /* synthetic */ zzbf f77786e;

    /* renamed from: f */
    public final /* synthetic */ String f77787f;

    /* renamed from: g */
    public final /* synthetic */ zzic f77788g;

    public mmp(zzic zzicVar, zzbf zzbfVar, String str) {
        this.f77786e = zzbfVar;
        this.f77787f = str;
        this.f77788g = zzicVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ byte[] call() throws Exception {
        zznv zznvVar;
        zznv zznvVar2;
        zznvVar = this.f77788g.f29882a;
        zznvVar.m22657h0();
        zznvVar2 = this.f77788g.f29882a;
        return zznvVar2.zzm().m56138b(this.f77786e, this.f77787f);
    }
}
