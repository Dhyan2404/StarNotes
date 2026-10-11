package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;

/* loaded from: classes5.dex */
public final class ylp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f90869e;

    /* renamed from: f */
    public final /* synthetic */ zzic f90870f;

    public ylp(zzic zzicVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f90869e = zzoVar;
        this.f90870f = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznv zznvVar;
        zznv zznvVar2;
        zznvVar = this.f90870f.f29882a;
        zznvVar.m22657h0();
        zznvVar2 = this.f90870f.f29882a;
        zznvVar2.m22645Z(this.f90869e);
    }
}
