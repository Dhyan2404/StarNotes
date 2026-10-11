package com.sunia.HTREnginev2;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzjq;

/* loaded from: classes5.dex */
public final class wnp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ Bundle f88817e;

    /* renamed from: f */
    public final /* synthetic */ zzjq f88818f;

    public wnp(zzjq zzjqVar, Bundle bundle) {
        this.f88817e = bundle;
        this.f88818f = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjq.m22528D(this.f88818f, this.f88817e);
    }
}
