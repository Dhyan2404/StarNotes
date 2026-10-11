package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzaex {
    private final zzark zza = zzark.zzb();

    private zzaex() {
    }

    public static zzaex zza() {
        return new zzaex();
    }

    public final zzasi zzb(Callable callable, Executor executor) {
        return this.zza.zzc(zzaeq.zzf(callable), executor);
    }

    public final zzasi zzc(zzaqs zzaqsVar, Executor executor) {
        return this.zza.zzd(zzaeq.zzb(zzaqsVar), executor);
    }
}
