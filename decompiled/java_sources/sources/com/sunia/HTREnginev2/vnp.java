package com.sunia.HTREnginev2;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzjq;

/* loaded from: classes5.dex */
public final class vnp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ Bundle f87730e;

    /* renamed from: f */
    public final /* synthetic */ zzjq f87731f;

    public vnp(zzjq zzjqVar, Bundle bundle) {
        this.f87730e = bundle;
        this.f87731f = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjq.m22535l(this.f87731f, this.f87730e);
    }
}
