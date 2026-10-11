package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import com.google.android.gms.internal.p124firebaseauthapi.zzvg;
import com.google.android.gms.internal.p124firebaseauthapi.zzvh;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
final class zzcs {
    private static final Charset zza = Charset.forName("UTF-8");

    public static zzvh zza(zzvg zzvgVar) {
        zzvh.zza zza2 = zzvh.zza().zza(zzvgVar.zzb());
        for (zzvg.zza zzaVar : zzvgVar.zze()) {
            zza2.zza((zzvh.zzb) ((zzaje) zzvh.zzb.zzb().zza(zzaVar.zzb().zzf()).zza(zzaVar.zzc()).zza(zzaVar.zzf()).zza(zzaVar.zza()).zzf()));
        }
        return (zzvh) ((zzaje) zza2.zzf());
    }

    public static void zzb(zzvg zzvgVar) throws GeneralSecurityException {
        int zzb = zzvgVar.zzb();
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        for (zzvg.zza zzaVar : zzvgVar.zze()) {
            if (zzaVar.zzc() == zzva.ENABLED) {
                if (!zzaVar.zzg()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzaVar.zza())));
                }
                if (zzaVar.zzf() == zzvs.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzaVar.zza())));
                }
                if (zzaVar.zzc() == zzva.UNKNOWN_STATUS) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzaVar.zza())));
                }
                if (zzaVar.zza() == zzb) {
                    if (z) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z = true;
                }
                if (zzaVar.zzb().zzb() != zzuw.zzb.ASYMMETRIC_PUBLIC) {
                    z2 = false;
                }
                i++;
            }
        }
        if (i == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z && !z2) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
    }
}
