package com.google.android.gms.internal.mlkit_vision_digital_ink;

import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzbrx {

    @Nullable
    private static zzbrx zza;

    private zzbrx() {
    }

    public static synchronized zzbrx zza() {
        zzbrx zzbrxVar;
        synchronized (zzbrx.class) {
            if (zza == null) {
                zza = new zzbrx();
            }
            zzbrxVar = zza;
        }
        return zzbrxVar;
    }
}
