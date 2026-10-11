package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzpq;
import com.google.android.gms.internal.p124firebaseauthapi.zzqf;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes5.dex */
public final class zzxo implements zzcf {
    private static final byte[] zza = {0};
    private final zzru zzb;
    private final int zzc;
    private final byte[] zzd;
    private final byte[] zze;

    private zzxo(zzpj zzpjVar) throws GeneralSecurityException {
        this.zzb = new zzxn(zzpjVar.zze().zza(zzbr.zza()));
        this.zzc = zzpjVar.zzc().zzb();
        this.zzd = zzpjVar.zzd().zzb();
        if (zzpjVar.zzc().zze().equals(zzpq.zzb.zzc)) {
            byte[] bArr = zza;
            this.zze = Arrays.copyOf(bArr, bArr.length);
        } else {
            this.zze = new byte[0];
        }
    }

    public static zzcf zza(zzpj zzpjVar) throws GeneralSecurityException {
        return new zzxo(zzpjVar);
    }

    public static zzcf zza(zzpw zzpwVar) throws GeneralSecurityException {
        return new zzxo(zzpwVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzcf
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (!MessageDigest.isEqual(zza(bArr2), bArr)) {
            throw new GeneralSecurityException("invalid MAC");
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzcf
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        byte[] bArr2 = this.zze;
        return bArr2.length > 0 ? zzwh.zza(this.zzd, this.zzb.zza(zzwh.zza(bArr, bArr2), this.zzc)) : zzwh.zza(this.zzd, this.zzb.zza(bArr, this.zzc));
    }

    private zzxo(zzpw zzpwVar) throws GeneralSecurityException {
        this.zzb = new zzxm("HMAC" + String.valueOf(zzpwVar.zzc().zze()), new SecretKeySpec(zzpwVar.zze().zza(zzbr.zza()), "HMAC"));
        this.zzc = zzpwVar.zzc().zzb();
        this.zzd = zzpwVar.zzd().zzb();
        if (zzpwVar.zzc().zzf().equals(zzqf.zzc.zzc)) {
            byte[] bArr = zza;
            this.zze = Arrays.copyOf(bArr, bArr.length);
        } else {
            this.zze = new byte[0];
        }
    }

    public zzxo(zzru zzruVar, int i) throws GeneralSecurityException {
        this.zzb = zzruVar;
        this.zzc = i;
        this.zzd = new byte[0];
        this.zze = new byte[0];
        if (i >= 10) {
            zzruVar.zza(new byte[0], i);
            return;
        }
        throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
    }
}
