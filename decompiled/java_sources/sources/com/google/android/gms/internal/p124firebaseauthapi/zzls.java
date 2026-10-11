package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzls implements zzbs {
    private final zzbs zza;
    private final byte[] zzb;

    private zzls(zzbs zzbsVar, byte[] bArr) {
        this.zza = zzbsVar;
        this.zzb = bArr;
    }

    public static zzbs zza(zzna zznaVar) throws GeneralSecurityException {
        byte[] zzb;
        zzou zza = zznaVar.zza(zzbr.zza());
        zzbs zzbsVar = (zzbs) zzco.zza((zzuw) ((zzaje) zzuw.zza().zza(zza.zzf()).zza(zza.zzd()).zza(zza.zza()).zzf()), zzbs.class);
        zzvs zzc = zza.zzc();
        int i = zzlr.zza[zzc.ordinal()];
        if (i == 1) {
            zzb = zznt.zza.zzb();
        } else if (i == 2 || i == 3) {
            zzb = zznt.zza(zznaVar.zza().intValue()).zzb();
        } else {
            if (i != 4) {
                throw new GeneralSecurityException("unknown output prefix type " + String.valueOf(zzc));
            }
            zzb = zznt.zzb(zznaVar.zza().intValue()).zzb();
        }
        return new zzls(zzbsVar, zzb);
    }
}
