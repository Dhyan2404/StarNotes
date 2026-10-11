package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;

/* loaded from: classes5.dex */
public final class nmp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzbf f78800e;

    /* renamed from: f */
    public final /* synthetic */ String f78801f;

    /* renamed from: g */
    public final /* synthetic */ zzic f78802g;

    public nmp(zzic zzicVar, zzbf zzbfVar, String str) {
        this.f78800e = zzbfVar;
        this.f78801f = str;
        this.f78802g = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznv zznvVar;
        zznv zznvVar2;
        zznvVar = this.f78802g.f29882a;
        zznvVar.m22657h0();
        zznvVar2 = this.f78802g.f29882a;
        zznvVar2.m22670q(this.f78800e, this.f78801f);
    }
}
