package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zznb;

/* loaded from: classes5.dex */
public final class eqp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ long f69226e;

    /* renamed from: f */
    public final /* synthetic */ zznb f69227f;

    public eqp(zznb zznbVar, long j) {
        this.f69226e = j;
        this.f69227f = zznbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznb.m22599g(this.f69227f, this.f69226e);
    }
}
