package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzjq;

/* loaded from: classes5.dex */
public final class aop implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ Boolean f64915e;

    /* renamed from: f */
    public final /* synthetic */ zzjq f64916f;

    public aop(zzjq zzjqVar, Boolean bool) {
        this.f64915e = bool;
        this.f64916f = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f64916f.m22550q(this.f64915e, true);
    }
}
