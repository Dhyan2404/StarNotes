package com.sunia.HTREnginev2;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzbf;

/* loaded from: classes5.dex */
public final class wqp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ String f88906e;

    /* renamed from: f */
    public final /* synthetic */ String f88907f;

    /* renamed from: g */
    public final /* synthetic */ Bundle f88908g;

    /* renamed from: h */
    public final /* synthetic */ uqp f88909h;

    public wqp(uqp uqpVar, String str, String str2, Bundle bundle) {
        this.f88906e = str;
        this.f88907f = str2;
        this.f88908g = bundle;
        this.f88909h = uqpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f88909h.f86765a.m22670q((zzbf) Preconditions.checkNotNull(this.f88909h.f86765a.zzq().m22763i(this.f88906e, this.f88907f, this.f88908g, "auto", this.f88909h.f86765a.zzb().currentTimeMillis(), false, true)), this.f88906e);
    }
}
