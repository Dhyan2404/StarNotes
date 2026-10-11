package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzara {
    final Runnable zza;
    final Executor zzb;

    @CheckForNull
    zzara zzc;

    public zzara(Runnable runnable, Executor executor, @CheckForNull zzara zzaraVar) {
        this.zza = runnable;
        this.zzb = executor;
        this.zzc = zzaraVar;
    }
}
