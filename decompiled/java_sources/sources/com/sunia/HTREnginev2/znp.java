package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzjq;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class znp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AtomicReference f91993e;

    /* renamed from: f */
    public final /* synthetic */ zzjq f91994f;

    public znp(zzjq zzjqVar, AtomicReference atomicReference) {
        this.f91993e = atomicReference;
        this.f91994f = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f91993e) {
            try {
                this.f91993e.set(Long.valueOf(this.f91994f.zze().zzc(this.f91994f.zzg().m22432f(), zzbh.zzao)));
            } finally {
                this.f91993e.notify();
            }
        }
    }
}
