package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzev {
    private static final zzbt<zzbh> zza = zzmy.zza("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", zzbh.class, zzuw.zzb.SYMMETRIC, zzvo.zze());
    private static final zznk<zzfi> zzb = new zznk() { // from class: com.google.android.gms.internal.firebase-auth-api.zzey
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zznk
        public final zzbu zza(zzci zzciVar, Integer num) {
            zzfg zza2;
            zza2 = zzfg.zza((zzfi) zzciVar, null);
            return zza2;
        }
    };
    private static final zzoe<zzfg, zzbh> zzc = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzex
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzev.zza((zzfg) zzbuVar);
        }
    }, zzfg.class, zzbh.class);

    public static /* synthetic */ zzbh zza(zzfg zzfgVar) {
        String zzd = zzfgVar.zzb().zzd();
        return zzhv.zza(zzew.zza(zzfgVar.zzb().zzb(), zzcg.zza(zzd).zza(zzd)), zzfgVar.zzc());
    }

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzig.zza.zza.zza()) {
            zzfm.zza();
            zzni.zza().zza(zzb, zzfi.class);
            zznp.zza().zza(zzc);
            zzmn.zza().zza((zzbt) zza, true);
            return;
        }
        throw new GeneralSecurityException("Registering KMS Envelope AEAD is not supported in FIPS mode");
    }
}
