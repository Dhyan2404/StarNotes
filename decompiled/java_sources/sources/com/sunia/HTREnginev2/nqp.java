package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zznv;
import com.google.android.gms.measurement.internal.zzok;

/* loaded from: classes5.dex */
public final class nqp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzok f78935e;

    /* renamed from: f */
    public final /* synthetic */ zznv f78936f;

    public nqp(zznv zznvVar, zzok zzokVar) {
        this.f78935e = zzokVar;
        this.f78936f = zznvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznv.m22619r(this.f78936f, this.f78935e);
        this.f78936f.zzv();
    }
}
