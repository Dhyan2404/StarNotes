package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzjq;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class enp implements Executor {

    /* renamed from: e */
    public final /* synthetic */ zzjq f69138e;

    public enp(zzjq zzjqVar) {
        this.f69138e = zzjqVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f69138e.zzl().zzb(runnable);
    }
}
