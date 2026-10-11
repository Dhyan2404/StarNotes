package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes5.dex */
final class zzcx implements zzbh {
    private final zzoo<zzbh> zza;
    private final zzro zzb;
    private final zzro zzc;

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbh
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length > 5) {
            for (zzop<zzbh> zzopVar : this.zza.zza(Arrays.copyOf(bArr, 5))) {
                try {
                    byte[] zza = zzopVar.zzd().zza(bArr, bArr2);
                    this.zzc.zza(zzopVar.zza(), bArr.length);
                    return zza;
                } catch (GeneralSecurityException unused) {
                }
            }
        }
        for (zzop<zzbh> zzopVar2 : this.zza.zza(zzbo.zza)) {
            try {
                byte[] zza2 = zzopVar2.zzd().zza(bArr, bArr2);
                this.zzc.zza(zzopVar2.zza(), bArr.length);
                return zza2;
            } catch (GeneralSecurityException unused2) {
            }
        }
        this.zzc.zza();
        throw new GeneralSecurityException("decryption failed");
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbh
    public final byte[] zzb(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        try {
            byte[] zzb = this.zza.zza().zzd().zzb(bArr, bArr2);
            this.zzb.zza(this.zza.zza().zza(), bArr.length);
            return zzb;
        } catch (GeneralSecurityException e) {
            this.zzb.zza();
            throw e;
        }
    }

    private zzcx(zzoo<zzbh> zzooVar) {
        this.zza = zzooVar;
        if (zzooVar.zzf()) {
            zzrp zzb = zznl.zza().zzb();
            zzrr zza = zzne.zza(zzooVar);
            this.zzb = zzb.zza(zza, "aead", "encrypt");
            this.zzc = zzb.zza(zza, "aead", "decrypt");
            return;
        }
        zzro zzroVar = zzne.zza;
        this.zzb = zzroVar;
        this.zzc = zzroVar;
    }
}
