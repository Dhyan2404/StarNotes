package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class zzji implements zzbq {
    private final zzbq zza;
    private final zzvs zzb;
    private final byte[] zzc;

    private zzji(zzbq zzbqVar, zzvs zzvsVar, byte[] bArr) {
        this.zza = zzbqVar;
        this.zzb = zzvsVar;
        this.zzc = bArr;
    }

    public static zzbq zza(zzna zznaVar) throws GeneralSecurityException {
        byte[] zzb;
        zzou zza = zznaVar.zza(zzbr.zza());
        zzuw zzuwVar = (zzuw) ((zzaje) zzuw.zza().zza(zza.zzf()).zza(zza.zzd()).zza(zza.zza()).zzf());
        zzoy.zza();
        zzbq zzbqVar = (zzbq) zzoy.zza(zzuwVar, zzbq.class);
        zzvs zzc = zza.zzc();
        int i = zzjl.zza[zzc.ordinal()];
        if (i == 1) {
            zzb = zznt.zza.zzb();
        } else if (i == 2 || i == 3) {
            zzb = zznt.zza(zznaVar.zza().intValue()).zzb();
        } else if (i == 4) {
            zzb = zznt.zzb(zznaVar.zza().intValue()).zzb();
        } else {
            throw new GeneralSecurityException("unknown output prefix type " + zzc.zza());
        }
        return new zzji(zzbqVar, zzc, zzb);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbq
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (this.zzb == zzvs.RAW) {
            return this.zza.zza(bArr, bArr2);
        }
        if (zzph.zza(this.zzc, bArr)) {
            return this.zza.zza(Arrays.copyOfRange(bArr, 5, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("wrong prefix");
    }
}
