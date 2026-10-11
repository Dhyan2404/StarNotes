package com.google.android.gms.internal.mlkit_vision_text_common;

import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzun {

    @Nullable
    private static zzum zza;

    public static synchronized zzuc zza(zztu zztuVar) {
        zzuc zzucVar;
        synchronized (zzun.class) {
            if (zza == null) {
                zza = new zzum(null);
            }
            zzucVar = (zzuc) zza.get(zztuVar);
        }
        return zzucVar;
    }

    public static synchronized zzuc zzb(String str) {
        zzuc zza2;
        synchronized (zzun.class) {
            zza2 = zza(zztu.zzd(str).zzd());
        }
        return zza2;
    }
}
