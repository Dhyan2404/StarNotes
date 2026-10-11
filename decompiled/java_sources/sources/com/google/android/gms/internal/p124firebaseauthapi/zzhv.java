package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class zzhv implements zzbh {
    private final zzbh zza;
    private final byte[] zzb;

    private zzhv(zzbh zzbhVar, byte[] bArr) {
        this.zza = zzbhVar;
        if (bArr.length != 0 && bArr.length != 5) {
            throw new IllegalArgumentException("identifier has an invalid length");
        }
        this.zzb = bArr;
    }

    public static zzbh zza(zzna zznaVar) throws GeneralSecurityException {
        byte[] zzb;
        zzou zza = zznaVar.zza(zzbr.zza());
        zzuw zzuwVar = (zzuw) ((zzaje) zzuw.zza().zza(zza.zzf()).zza(zza.zzd()).zza(zza.zza()).zzf());
        zzoy.zza();
        zzbh zzbhVar = (zzbh) zzoy.zza(zzuwVar, zzbh.class);
        zzvs zzc = zza.zzc();
        int i = zzhu.zza[zzc.ordinal()];
        if (i == 1) {
            zzb = zznt.zza.zzb();
        } else if (i == 2 || i == 3) {
            zzb = zznt.zza(zznaVar.zza().intValue()).zzb();
        } else if (i == 4) {
            zzb = zznt.zzb(zznaVar.zza().intValue()).zzb();
        } else {
            throw new GeneralSecurityException("unknown output prefix type " + String.valueOf(zzc));
        }
        return new zzhv(zzbhVar, zzb);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbh
    public final byte[] zzb(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzb;
        return bArr3.length == 0 ? this.zza.zzb(bArr, bArr2) : zzwh.zza(bArr3, this.zza.zzb(bArr, bArr2));
    }

    public static zzbh zza(zzbh zzbhVar, zzxv zzxvVar) {
        return new zzhv(zzbhVar, zzxvVar.zzb());
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbh
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzb;
        if (bArr3.length == 0) {
            return this.zza.zza(bArr, bArr2);
        }
        if (zzph.zza(bArr3, bArr)) {
            return this.zza.zza(Arrays.copyOfRange(bArr, 5, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("wrong prefix");
    }
}
