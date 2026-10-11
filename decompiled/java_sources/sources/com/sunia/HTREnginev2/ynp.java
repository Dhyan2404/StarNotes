package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzjq;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class ynp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AtomicReference f90917e;

    /* renamed from: f */
    public final /* synthetic */ zzjq f90918f;

    public ynp(zzjq zzjqVar, AtomicReference atomicReference) {
        this.f90917e = atomicReference;
        this.f90918f = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f90917e) {
            try {
                this.f90917e.set(Integer.valueOf(this.f90918f.zze().zzb(this.f90918f.zzg().m22432f(), zzbh.zzap)));
            } finally {
                this.f90917e.notify();
            }
        }
    }
}
