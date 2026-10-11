package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes5.dex */
final class zzja implements zzbq {
    private final zzoo<zzbq> zza;
    private final zzro zzb;
    private final zzro zzc;

    public zzja(zzoo<zzbq> zzooVar) {
        this.zza = zzooVar;
        if (!zzooVar.zzf()) {
            zzro zzroVar = zzne.zza;
            this.zzb = zzroVar;
            this.zzc = zzroVar;
        } else {
            zzrp zzb = zznl.zza().zzb();
            zzrr zza = zzne.zza(zzooVar);
            this.zzb = zzb.zza(zza, "daead", "encrypt");
            this.zzc = zzb.zza(zza, "daead", "decrypt");
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbq
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length > 5) {
            for (zzop<zzbq> zzopVar : this.zza.zza(Arrays.copyOf(bArr, 5))) {
                try {
                    byte[] zza = zzopVar.zzd().zza(bArr, bArr2);
                    this.zzc.zza(zzopVar.zza(), bArr.length);
                    return zza;
                } catch (GeneralSecurityException unused) {
                }
            }
        }
        for (zzop<zzbq> zzopVar2 : this.zza.zza(zzbo.zza)) {
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
}
