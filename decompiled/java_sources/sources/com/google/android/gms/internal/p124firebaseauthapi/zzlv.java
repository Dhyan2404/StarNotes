package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes5.dex */
final class zzlv implements zzlh {
    private final zzlb zza;

    public zzlv(zzlb zzlbVar) {
        this.zza = zzlbVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzlh
    public final byte[] zza(byte[] bArr, zzlk zzlkVar) throws GeneralSecurityException {
        byte[] zza = zzxt.zza(zzlkVar.zza().zzb(), bArr);
        byte[] zza2 = zzwh.zza(bArr, zzlkVar.zzb().zzb());
        byte[] zza3 = zzln.zza(zzln.zzb);
        zzlb zzlbVar = this.zza;
        return zzlbVar.zza(null, zza, "eae_prk", zza2, "shared_secret", zza3, zzlbVar.zza());
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzlh
    public final byte[] zza() throws GeneralSecurityException {
        if (Arrays.equals(this.zza.zzb(), zzln.zzf)) {
            return zzln.zzb;
        }
        throw new GeneralSecurityException("Could not determine HPKE KEM ID");
    }
}
