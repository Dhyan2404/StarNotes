package com.google.android.gms.internal.mlkit_vision_digital_ink;

import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
final class zzbri {
    static final zzbri zza = new zzbri(null, null);
    final Runnable zzb;
    final Executor zzc;

    @Nullable
    zzbri zzd;

    public zzbri(Runnable runnable, Executor executor) {
        this.zzb = runnable;
        this.zzc = executor;
    }
}
