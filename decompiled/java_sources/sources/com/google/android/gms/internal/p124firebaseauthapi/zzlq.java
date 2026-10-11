package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class zzlq implements zzbp {
    private final zzbp zza;
    private final byte[] zzb;

    private zzlq(zzbp zzbpVar, byte[] bArr) {
        this.zza = zzbpVar;
        this.zzb = bArr;
    }

    public static zzbp zza(zzna zznaVar) throws GeneralSecurityException {
        byte[] zzb;
        zzou zza = zznaVar.zza(zzbr.zza());
        zzbp zzbpVar = (zzbp) zzco.zza((zzuw) ((zzaje) zzuw.zza().zza(zza.zzf()).zza(zza.zzd()).zza(zza.zza()).zzf()), zzbp.class);
        zzvs zzc = zza.zzc();
        int i = zzlp.zza[zzc.ordinal()];
        if (i == 1) {
            zzb = zznt.zza.zzb();
        } else if (i == 2 || i == 3) {
            zzb = zznt.zza(zznaVar.zza().intValue()).zzb();
        } else if (i == 4) {
            zzb = zznt.zzb(zznaVar.zza().intValue()).zzb();
        } else {
            throw new GeneralSecurityException("unknown output prefix type " + String.valueOf(zzc));
        }
        return new zzlq(zzbpVar, zzb);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbp
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzb;
        if (bArr3.length == 0) {
            return this.zza.zza(bArr, bArr2);
        }
        if (zzph.zza(bArr3, bArr)) {
            return this.zza.zza(Arrays.copyOfRange(bArr, this.zzb.length, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("Invalid ciphertext (output prefix mismatch)");
    }
}
