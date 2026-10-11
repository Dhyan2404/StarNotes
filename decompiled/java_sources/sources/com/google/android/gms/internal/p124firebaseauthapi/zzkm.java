package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes5.dex */
final class zzkm implements zzbp {
    private final zzoo<zzbp> zza;
    private final zzro zzb;

    public zzkm(zzoo<zzbp> zzooVar) {
        this.zza = zzooVar;
        if (zzooVar.zzf()) {
            this.zzb = zznl.zza().zzb().zza(zzne.zza(zzooVar), "hybrid_decrypt", "decrypt");
        } else {
            this.zzb = zzne.zza;
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbp
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length > 5) {
            for (zzop<zzbp> zzopVar : this.zza.zza(Arrays.copyOfRange(bArr, 0, 5))) {
                try {
                    byte[] zza = zzopVar.zzd().zza(bArr, bArr2);
                    this.zzb.zza(zzopVar.zza(), bArr.length);
                    return zza;
                } catch (GeneralSecurityException unused) {
                }
            }
        }
        for (zzop<zzbp> zzopVar2 : this.zza.zza(zzbo.zza)) {
            try {
                byte[] zza2 = zzopVar2.zzd().zza(bArr, bArr2);
                this.zzb.zza(zzopVar2.zza(), bArr.length);
                return zza2;
            } catch (GeneralSecurityException unused2) {
            }
        }
        this.zzb.zza();
        throw new GeneralSecurityException("decryption failed");
    }
}
