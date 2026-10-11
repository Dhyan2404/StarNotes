package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
final class zzlu implements zzlh {
    private final zzwq zza;
    private final zzlb zzb;

    private zzlu(zzlb zzlbVar, zzwq zzwqVar) {
        this.zzb = zzlbVar;
        this.zza = zzwqVar;
    }

    public static zzlu zza(zzwq zzwqVar) throws GeneralSecurityException {
        int i = zzlt.zza[zzwqVar.ordinal()];
        if (i == 1) {
            return new zzlu(new zzlb("HmacSha256"), zzwq.NIST_P256);
        }
        if (i == 2) {
            return new zzlu(new zzlb("HmacSha384"), zzwq.NIST_P384);
        }
        if (i == 3) {
            return new zzlu(new zzlb("HmacSha512"), zzwq.NIST_P521);
        }
        throw new GeneralSecurityException("invalid curve type: " + String.valueOf(zzwqVar));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzlh
    public final byte[] zza(byte[] bArr, zzlk zzlkVar) throws GeneralSecurityException {
        byte[] zza = zzwr.zza(zzwr.zza(this.zza, zzlkVar.zza().zzb()), zzwr.zza(this.zza, zzwt.UNCOMPRESSED, bArr));
        byte[] zza2 = zzwh.zza(bArr, zzlkVar.zzb().zzb());
        byte[] zza3 = zzln.zza(zza());
        zzlb zzlbVar = this.zzb;
        return zzlbVar.zza(null, zza, "eae_prk", zza2, "shared_secret", zza3, zzlbVar.zza());
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzlh
    public final byte[] zza() throws GeneralSecurityException {
        int i = zzlt.zza[this.zza.ordinal()];
        if (i == 1) {
            return zzln.zzc;
        }
        if (i == 2) {
            return zzln.zzd;
        }
        if (i == 3) {
            return zzln.zze;
        }
        throw new GeneralSecurityException("Could not determine HPKE KEM ID");
    }
}
