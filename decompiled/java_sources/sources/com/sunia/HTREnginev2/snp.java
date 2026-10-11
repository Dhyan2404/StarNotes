package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzjq;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class snp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AtomicReference f84332e;

    /* renamed from: f */
    public final /* synthetic */ zzjq f84333f;

    public snp(zzjq zzjqVar, AtomicReference atomicReference) {
        this.f84332e = atomicReference;
        this.f84333f = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f84332e) {
            try {
                this.f84332e.set(this.f84333f.zze().m22288g(this.f84333f.zzg().m22432f()));
            } finally {
                this.f84332e.notify();
            }
        }
    }
}
