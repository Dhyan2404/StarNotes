package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzjq;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class tnp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AtomicReference f85539e;

    /* renamed from: f */
    public final /* synthetic */ boolean f85540f;

    /* renamed from: g */
    public final /* synthetic */ zzjq f85541g;

    public tnp(zzjq zzjqVar, AtomicReference atomicReference, boolean z) {
        this.f85539e = atomicReference;
        this.f85540f = z;
        this.f85541g = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f85541g.zzo().zza(this.f85539e, this.f85540f);
    }
}
