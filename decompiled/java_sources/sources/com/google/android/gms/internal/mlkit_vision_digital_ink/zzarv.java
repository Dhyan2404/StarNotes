package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzarv {
    private final boolean zza;
    private final zzajm zzb;

    public /* synthetic */ zzarv(boolean z, zzajm zzajmVar, zzaru zzaruVar) {
        this.zza = z;
        this.zzb = zzajmVar;
    }

    public final zzasi zza(Callable callable, Executor executor) {
        return new zzaqy(this.zzb, this.zza, executor, callable);
    }

    public final zzasi zzb(zzaqs zzaqsVar, Executor executor) {
        return new zzaqy(this.zzb, this.zza, executor, zzaqsVar);
    }
}
