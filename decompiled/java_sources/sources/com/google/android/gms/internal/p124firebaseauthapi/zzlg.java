package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzjv;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class zzlg implements zzbp {
    private static final byte[] zza = new byte[0];
    private final zzlk zzb;
    private final zzlh zzc;
    private final zzli zzd;
    private final zzle zze;
    private final int zzf;
    private final byte[] zzg;

    private zzlg(zzlk zzlkVar, zzlh zzlhVar, zzli zzliVar, zzle zzleVar, int i, zzxv zzxvVar) {
        this.zzb = zzlkVar;
        this.zzc = zzlhVar;
        this.zzd = zzliVar;
        this.zze = zzleVar;
        this.zzf = i;
        this.zzg = zzxvVar.zzb();
    }

    public static zzbp zza(zzka zzkaVar) throws GeneralSecurityException {
        int i;
        zzwq zzwqVar;
        zzlk zza2;
        zzjv zzc = zzkaVar.zzc();
        zzlh zza3 = zzlf.zza(zzc.zze());
        zzli zza4 = zzlf.zza(zzc.zzd());
        zzle zza5 = zzlf.zza(zzc.zzb());
        zzjv.zzd zze = zzc.zze();
        zzjv.zzd zzdVar = zzjv.zzd.zzd;
        if (zze.equals(zzdVar)) {
            i = 32;
        } else if (zze.equals(zzjv.zzd.zza)) {
            i = 65;
        } else if (zze.equals(zzjv.zzd.zzb)) {
            i = 97;
        } else {
            if (!zze.equals(zzjv.zzd.zzc)) {
                throw new GeneralSecurityException("Unrecognized HPKE KEM identifier");
            }
            i = 133;
        }
        int i2 = i;
        zzjv.zzd zze2 = zzkaVar.zzc().zze();
        if (zze2.equals(zzdVar)) {
            zza2 = zzly.zza(zzkaVar.zze().zza(zzbr.zza()));
        } else {
            zzjv.zzd zzdVar2 = zzjv.zzd.zza;
            if (!zze2.equals(zzdVar2) && !zze2.equals(zzjv.zzd.zzb) && !zze2.equals(zzjv.zzd.zzc)) {
                throw new GeneralSecurityException("Unrecognized HPKE KEM identifier");
            }
            byte[] zza6 = zzkaVar.zze().zza(zzbr.zza());
            byte[] zzb = ((zzki) ((zzkr) zzkaVar.zzb())).zzd().zzb();
            if (zze2.equals(zzdVar2)) {
                zzwqVar = zzwq.NIST_P256;
            } else if (zze2.equals(zzjv.zzd.zzb)) {
                zzwqVar = zzwq.NIST_P384;
            } else if (zze2.equals(zzjv.zzd.zzc)) {
                zzwqVar = zzwq.NIST_P521;
            } else {
                throw new GeneralSecurityException("Unrecognized NIST HPKE KEM identifier");
            }
            zza2 = zzlw.zza(zza6, zzb, zzwqVar);
        }
        return new zzlg(zza2, zza3, zza4, zza5, i2, zzkaVar.zzg());
    }

    private final byte[] zzb(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.zzf;
        if (length < i) {
            throw new GeneralSecurityException("Ciphertext is too short.");
        }
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] bArr3 = bArr2;
        byte[] copyOf = Arrays.copyOf(bArr, i);
        return zzld.zza(copyOf, this.zzb, this.zzc, this.zzd, this.zze, bArr3).zza(Arrays.copyOfRange(bArr, this.zzf, bArr.length), zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbp
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzg;
        if (bArr3.length == 0) {
            return zzb(bArr, bArr2);
        }
        if (zzph.zza(bArr3, bArr)) {
            return zzb(Arrays.copyOfRange(bArr, this.zzg.length, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("Invalid ciphertext (output prefix mismatch)");
    }
}
