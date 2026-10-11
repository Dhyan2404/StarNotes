package com.google.android.gms.internal.mlkit_common;

import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzsv {

    @Nullable
    private static zzsv zza;

    private zzsv() {
    }

    public static synchronized zzsv zza() {
        zzsv zzsvVar;
        synchronized (zzsv.class) {
            if (zza == null) {
                zza = new zzsv();
            }
            zzsvVar = zza;
        }
        return zzsvVar;
    }

    public static void zzb() {
        zzsu.zza();
    }
}
