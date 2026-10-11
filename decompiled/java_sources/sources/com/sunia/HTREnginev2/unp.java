package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzjq;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class unp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ long f86674e;

    /* renamed from: f */
    public final /* synthetic */ zzjq f86675f;

    public unp(zzjq zzjqVar, long j) {
        this.f86674e = j;
        this.f86675f = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f86675f.m22540B(this.f86674e);
        this.f86675f.zzo().zza(new AtomicReference<>());
    }
}
