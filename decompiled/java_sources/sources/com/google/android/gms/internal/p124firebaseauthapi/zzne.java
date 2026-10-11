package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzne {
    public static final zzro zza = new zzng();

    public static <P> zzrr zza(zzoo<P> zzooVar) {
        zzbw zzbwVar;
        zzrq zzrqVar = new zzrq();
        zzrqVar.zza(zzooVar.zzb());
        Iterator<List<zzop<P>>> it2 = zzooVar.zzd().iterator();
        while (it2.hasNext()) {
            for (zzop<P> zzopVar : it2.next()) {
                int i = zznd.zza[zzopVar.zzb().ordinal()];
                if (i == 1) {
                    zzbwVar = zzbw.zza;
                } else if (i == 2) {
                    zzbwVar = zzbw.zzb;
                } else {
                    if (i != 3) {
                        throw new IllegalStateException("Unknown key status");
                    }
                    zzbwVar = zzbw.zzc;
                }
                int zza2 = zzopVar.zza();
                String zze = zzopVar.zze();
                if (zze.startsWith("type.googleapis.com/google.crypto.")) {
                    zze = zze.substring(34);
                }
                zzrqVar.zza(zzbwVar, zza2, zze, zzopVar.zzc().name());
            }
        }
        if (zzooVar.zza() != null) {
            zzrqVar.zza(zzooVar.zza().zza());
        }
        try {
            return zzrqVar.zza();
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
