package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzes {
    private static final zzoe<zzfa, zzbh> zza = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzeu
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            zzbh zza2;
            zza2 = zzhv.zza(zzcg.zza(r1.zzb().zzc()).zza(r1.zzb().zzc()), ((zzfa) zzbuVar).zzc());
            return zza2;
        }
    }, zzfa.class, zzbh.class);
    private static final zzbt<zzbh> zzb = zzmy.zza("type.googleapis.com/google.crypto.tink.KmsAeadKey", zzbh.class, zzuw.zzb.REMOTE, zzvk.zze());
    private static final zznk<zzez> zzc = new zznk() { // from class: com.google.android.gms.internal.firebase-auth-api.zzet
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zznk
        public final zzbu zza(zzci zzciVar, Integer num) {
            zzfa zza2;
            zza2 = zzfa.zza((zzez) zzciVar, null);
            return zza2;
        }
    };

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzig.zza.zza.zza()) {
            zzfb.zza();
            zznp.zza().zza(zza);
            zzni.zza().zza(zzc, zzez.class);
            zzmn.zza().zza((zzbt) zzb, true);
            return;
        }
        throw new GeneralSecurityException("Registering KMS AEAD is not supported in FIPS mode");
    }
}
