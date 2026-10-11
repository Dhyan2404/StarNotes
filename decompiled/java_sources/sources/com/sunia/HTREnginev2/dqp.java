package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zznb;

/* loaded from: classes5.dex */
public final class dqp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ long f68143e;

    /* renamed from: f */
    public final /* synthetic */ zznb f68144f;

    public dqp(zznb zznbVar, long j) {
        this.f68143e = j;
        this.f68144f = zznbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznb.m22597c(this.f68144f, this.f68143e);
    }
}
