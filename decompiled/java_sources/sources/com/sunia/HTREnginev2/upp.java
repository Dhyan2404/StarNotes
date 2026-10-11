package com.sunia.HTREnginev2;

import android.content.ComponentName;
import com.google.android.gms.measurement.internal.zzls;
import com.google.android.gms.measurement.internal.zzmq;

/* loaded from: classes5.dex */
public final class upp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzmq f86734e;

    public upp(zzmq zzmqVar) {
        this.f86734e = zzmqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzls.m22573d(this.f86734e.f29966g, new ComponentName(this.f86734e.f29966g.zza(), "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
