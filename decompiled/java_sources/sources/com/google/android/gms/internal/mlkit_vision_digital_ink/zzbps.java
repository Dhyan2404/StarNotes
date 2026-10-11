package com.google.android.gms.internal.mlkit_vision_digital_ink;

import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzbps {

    @Nullable
    private static zzbpr zza;

    public static synchronized zzbph zza(zzbpc zzbpcVar) {
        zzbph zzbphVar;
        synchronized (zzbps.class) {
            if (zza == null) {
                zza = new zzbpr(null);
            }
            zzbphVar = (zzbph) zza.get(zzbpcVar);
        }
        return zzbphVar;
    }

    public static synchronized zzbph zzb(String str) {
        zzbph zza2;
        synchronized (zzbps.class) {
            zza2 = zza(zzbpc.zzd("digital-ink-recognition").zzd());
        }
        return zza2;
    }
}
