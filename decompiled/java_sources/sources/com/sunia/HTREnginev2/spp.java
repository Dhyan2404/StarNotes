package com.sunia.HTREnginev2;

import android.content.ComponentName;
import com.google.android.gms.measurement.internal.zzls;
import com.google.android.gms.measurement.internal.zzmq;

/* loaded from: classes5.dex */
public final class spp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ ComponentName f84430e;

    /* renamed from: f */
    public final /* synthetic */ zzmq f84431f;

    public spp(zzmq zzmqVar, ComponentName componentName) {
        this.f84430e = componentName;
        this.f84431f = zzmqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzls.m22573d(this.f84431f.f29966g, this.f84430e);
    }
}
