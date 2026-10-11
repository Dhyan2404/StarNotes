package com.google.android.gms.internal.p124firebaseauthapi;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes5.dex */
final class zzqm implements zzcf {
    private final zzoo<zzcf> zza;
    private final zzro zzb;
    private final zzro zzc;

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzcf
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length > 5) {
            for (zzop<zzcf> zzopVar : this.zza.zza(Arrays.copyOf(bArr, 5))) {
                try {
                    zzopVar.zzd().zza(bArr, bArr2);
                    this.zzc.zza(zzopVar.zza(), bArr2.length);
                    return;
                } catch (GeneralSecurityException unused) {
                }
            }
            for (zzop<zzcf> zzopVar2 : this.zza.zze()) {
                try {
                    zzopVar2.zzd().zza(bArr, bArr2);
                    this.zzc.zza(zzopVar2.zza(), bArr2.length);
                    return;
                } catch (GeneralSecurityException unused2) {
                }
            }
            this.zzc.zza();
            throw new GeneralSecurityException("invalid MAC");
        }
        this.zzc.zza();
        throw new GeneralSecurityException("tag too short");
    }

    private zzqm(zzoo<zzcf> zzooVar) {
        this.zza = zzooVar;
        if (zzooVar.zzf()) {
            zzrp zzb = zznl.zza().zzb();
            zzrr zza = zzne.zza(zzooVar);
            this.zzb = zzb.zza(zza, CloudStorageConstants.MAC_TAG, "compute");
            this.zzc = zzb.zza(zza, CloudStorageConstants.MAC_TAG, "verify");
            return;
        }
        zzro zzroVar = zzne.zza;
        this.zzb = zzroVar;
        this.zzc = zzroVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzcf
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        try {
            byte[] zza = this.zza.zza().zzd().zza(bArr);
            this.zzb.zza(this.zza.zza().zza(), bArr.length);
            return zza;
        } catch (GeneralSecurityException e) {
            this.zzb.zza();
            throw e;
        }
    }
}
