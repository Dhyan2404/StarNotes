package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
abstract class zzalf implements zzald {
    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzald) {
            zzald zzaldVar = (zzald) obj;
            if (zza() == zzaldVar.zza() && zzaga.zza(zzb(), zzaldVar.zzb())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Object zzb = zzb();
        return zza() ^ (zzb == null ? 0 : zzb.hashCode());
    }

    public final String toString() {
        String valueOf = String.valueOf(zzb());
        int zza = zza();
        if (zza == 1) {
            return valueOf;
        }
        return valueOf + " x " + zza;
    }
}
