package com.google.android.gms.internal.mlkit_vision_digital_ink;

import androidx.annotation.NonNull;

/* loaded from: classes5.dex */
public final class zzbrt {
    @NonNull
    public static zzasi zza(@NonNull zzbqv zzbqvVar) {
        zzbrp zzbrpVar = new zzbrp();
        zzbrs zzbrsVar = new zzbrs(zzbrpVar);
        zzbrpVar.zzb = zzbrsVar;
        zzbrpVar.zza = zzbqvVar.getClass();
        try {
            zzbrpVar.zza = zzbqvVar.zza(zzbrpVar);
        } catch (zzbj e) {
            zzbrsVar.zzb(e);
        }
        return zzbrsVar;
    }
}
