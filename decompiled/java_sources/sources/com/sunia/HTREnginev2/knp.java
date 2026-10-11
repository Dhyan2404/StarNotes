package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzjq;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class knp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AtomicReference f75649e;

    /* renamed from: f */
    public final /* synthetic */ zzjq f75650f;

    public knp(zzjq zzjqVar, AtomicReference atomicReference) {
        this.f75649e = atomicReference;
        this.f75650f = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f75649e) {
            try {
                this.f75649e.set(Boolean.valueOf(this.f75650f.zze().zzi(this.f75650f.zzg().m22432f())));
            } finally {
                this.f75649e.notify();
            }
        }
    }
}
