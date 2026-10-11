package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzjq;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class bop implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AtomicReference f65954e;

    /* renamed from: f */
    public final /* synthetic */ zzjq f65955f;

    public bop(zzjq zzjqVar, AtomicReference atomicReference) {
        this.f65954e = atomicReference;
        this.f65955f = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f65954e) {
            try {
                this.f65954e.set(Double.valueOf(this.f65955f.zze().zza(this.f65955f.zzg().m22432f(), zzbh.zzaq)));
            } finally {
                this.f65954e.notify();
            }
        }
    }
}
