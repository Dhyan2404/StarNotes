package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import com.google.android.gms.internal.p124firebaseauthapi.zzpq;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class zzpn {
    private static final zznk<zzpq> zza = new zznk() { // from class: com.google.android.gms.internal.firebase-auth-api.zzpm
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zznk
        public final zzbu zza(zzci zzciVar, Integer num) {
            return zzpn.zza((zzpq) zzciVar, null);
        }
    };
    private static final zzoe<zzpj, zzps> zzb = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzpp
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzpn.zzb((zzpj) zzbuVar);
        }
    }, zzpj.class, zzps.class);
    private static final zzoe<zzpj, zzcf> zzc = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzpo
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzpn.zza((zzpj) zzbuVar);
        }
    }, zzpj.class, zzcf.class);
    private static final zzbt<zzcf> zzd = zzmy.zza("type.googleapis.com/google.crypto.tink.AesCmacKey", zzcf.class, zzuw.zzb.SYMMETRIC, zzrx.zzf());

    public static /* synthetic */ zzcf zza(zzpj zzpjVar) {
        zza(zzpjVar.zzc());
        return zzxo.zza(zzpjVar);
    }

    public static /* synthetic */ zzps zzb(zzpj zzpjVar) {
        zza(zzpjVar.zzc());
        return new zzrd(zzpjVar);
    }

    public static /* synthetic */ zzpj zza(zzpq zzpqVar, Integer num) {
        zza(zzpqVar);
        return zzpj.zzb().zza(zzpqVar).zza(zzxw.zza(zzpqVar.zzc())).zza(num).zza();
    }

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzig.zza.zza.zza()) {
            zzqu.zza();
            zzni.zza().zza(zza, zzpq.class);
            zznp.zza().zza(zzb);
            zznp.zza().zza(zzc);
            zznq zza2 = zznq.zza();
            HashMap hashMap = new HashMap();
            zzpq zzpqVar = zzqo.zzc;
            hashMap.put("AES_CMAC", zzpqVar);
            hashMap.put("AES256_CMAC", zzpqVar);
            hashMap.put("AES256_CMAC_RAW", zzpq.zzd().zza(32).zzb(16).zza(zzpq.zzb.zzd).zza());
            zza2.zza(Collections.unmodifiableMap(hashMap));
            zzmn.zza().zza((zzbt) zzd, true);
            return;
        }
        throw new GeneralSecurityException("Registering AES CMAC is not supported in FIPS mode");
    }

    private static void zza(zzpq zzpqVar) throws GeneralSecurityException {
        if (zzpqVar.zzc() != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
        }
    }
}
