package com.google.android.gms.internal.mlkit_vision_digital_ink;

import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
final class zzbrf {
    static final zzbrf zza;
    static final zzbrf zzb;

    @Nullable
    final Throwable zzc;

    static {
        if (zzbro.zza) {
            zzb = null;
            zza = null;
        } else {
            zzb = new zzbrf(false, null);
            zza = new zzbrf(true, null);
        }
    }

    public zzbrf(boolean z, @Nullable Throwable th) {
        this.zzc = th;
    }
}
