package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class zzri implements zzcf {
    private static final byte[] zza = {0};
    private final zzcf zzb;
    private final zzvs zzc;
    private final byte[] zzd;

    private zzri(zzcf zzcfVar, zzvs zzvsVar, byte[] bArr) {
        this.zzb = zzcfVar;
        this.zzc = zzvsVar;
        this.zzd = bArr;
    }

    public static zzcf zza(zzna zznaVar) throws GeneralSecurityException {
        byte[] zzb;
        zzou zza2 = zznaVar.zza(zzbr.zza());
        zzuw zzuwVar = (zzuw) ((zzaje) zzuw.zza().zza(zza2.zzf()).zza(zza2.zzd()).zza(zza2.zza()).zzf());
        zzoy.zza();
        zzcf zzcfVar = (zzcf) zzoy.zza(zzuwVar, zzcf.class);
        zzvs zzc = zza2.zzc();
        int i = zzrl.zza[zzc.ordinal()];
        if (i == 1) {
            zzb = zznt.zza.zzb();
        } else if (i == 2 || i == 3) {
            zzb = zznt.zza(zznaVar.zza().intValue()).zzb();
        } else if (i == 4) {
            zzb = zznt.zzb(zznaVar.zza().intValue()).zzb();
        } else {
            throw new GeneralSecurityException("unknown output prefix type");
        }
        return new zzri(zzcfVar, zzc, zzb);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzcf
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length >= 10) {
            if (this.zzc.equals(zzvs.LEGACY)) {
                bArr2 = zzwh.zza(bArr2, zza);
            }
            byte[] bArr3 = new byte[0];
            if (!this.zzc.equals(zzvs.RAW)) {
                byte[] copyOf = Arrays.copyOf(bArr, 5);
                bArr = Arrays.copyOfRange(bArr, 5, bArr.length);
                bArr3 = copyOf;
            }
            if (Arrays.equals(this.zzd, bArr3)) {
                this.zzb.zza(bArr, bArr2);
                return;
            }
            throw new GeneralSecurityException("wrong prefix");
        }
        throw new GeneralSecurityException("tag too short");
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzcf
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        if (this.zzc.equals(zzvs.LEGACY)) {
            bArr = zzwh.zza(bArr, zza);
        }
        return zzwh.zza(this.zzd, this.zzb.zza(bArr));
    }
}
