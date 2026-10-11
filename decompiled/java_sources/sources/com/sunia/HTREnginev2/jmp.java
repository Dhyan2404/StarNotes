package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;

/* loaded from: classes5.dex */
public final class jmp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f74483e;

    /* renamed from: f */
    public final /* synthetic */ zzic f74484f;

    public jmp(zzic zzicVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f74483e = zzoVar;
        this.f74484f = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznv zznvVar;
        zznv zznvVar2;
        zznvVar = this.f74484f.f29882a;
        zznvVar.m22657h0();
        zznvVar2 = this.f74484f.f29882a;
        zznvVar2.m22647a0(this.f74483e);
    }
}
