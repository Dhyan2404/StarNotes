package com.google.android.gms.internal.mlkit_vision_text_common;

import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzuo {

    @Nullable
    private static zzuo zza;

    private zzuo() {
    }

    public static synchronized zzuo zza() {
        zzuo zzuoVar;
        synchronized (zzuo.class) {
            if (zza == null) {
                zza = new zzuo();
            }
            zzuoVar = zza;
        }
        return zzuoVar;
    }
}
