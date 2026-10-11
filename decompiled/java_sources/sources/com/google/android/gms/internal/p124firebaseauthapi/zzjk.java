package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzdg;
import com.google.android.gms.internal.p124firebaseauthapi.zzdz;
import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import com.google.android.gms.internal.p124firebaseauthapi.zzjo;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class zzjk {
    private static final zzoe<zzju, zzbp> zza = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzjn
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzwi.zza((zzju) zzbuVar);
        }
    }, zzju.class, zzbp.class);
    private static final zzoe<zzjt, zzbs> zzb = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzjm
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzwl.zza((zzjt) zzbuVar);
        }
    }, zzjt.class, zzbs.class);
    private static final zzcj<zzbp> zzc = zzmy.zza("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", zzbp.class, zztr.zzf());
    private static final zzbt<zzbs> zzd = zzmy.zza("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", zzbs.class, zzuw.zzb.ASYMMETRIC_PUBLIC, zzts.m22249b_());
    private static final zznk<zzjo> zze = new zznk() { // from class: com.google.android.gms.internal.firebase-auth-api.zzjp
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zznk
        public final zzbu zza(zzci zzciVar, Integer num) {
            return zzjk.zza((zzjo) zzciVar, null);
        }
    };

    public static String zza() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    public static /* synthetic */ zzju zza(zzjo zzjoVar, Integer num) {
        ECParameterSpec eCParameterSpec;
        zzjo.zzb zzd2 = zzjoVar.zzd();
        if (zzd2 == zzjo.zzb.zza) {
            eCParameterSpec = zzmf.zza;
        } else if (zzd2 == zzjo.zzb.zzb) {
            eCParameterSpec = zzmf.zzb;
        } else if (zzd2 == zzjo.zzb.zzc) {
            eCParameterSpec = zzmf.zzc;
        } else {
            throw new GeneralSecurityException("Unsupported curve type: " + String.valueOf(zzd2));
        }
        KeyPair zza2 = zzwr.zza(eCParameterSpec);
        return zzju.zza(zzjt.zza(zzjoVar, ((ECPublicKey) zza2.getPublic()).getW(), num), zzxu.zza(((ECPrivateKey) zza2.getPrivate()).getS(), zzbr.zza()));
    }

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzig.zza.zza.zza()) {
            zzkw.zza();
            zznq zza2 = zznq.zza();
            HashMap hashMap = new HashMap();
            zzjo.zza zzc2 = zzjo.zzc();
            zzjo.zzb zzbVar = zzjo.zzb.zza;
            zzjo.zza zza3 = zzc2.zza(zzbVar);
            zzjo.zzd zzdVar = zzjo.zzd.zzc;
            zzjo.zza zza4 = zza3.zza(zzdVar);
            zzjo.zzc zzcVar = zzjo.zzc.zzb;
            zzjo.zza zza5 = zza4.zza(zzcVar);
            zzjo.zze zzeVar = zzjo.zze.zza;
            zzjo.zza zza6 = zza5.zza(zzeVar);
            zzdz.zza zzc3 = zzdz.zze().zza(12).zzb(16).zzc(16);
            zzdz.zzb zzbVar2 = zzdz.zzb.zzc;
            hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM", zza6.zza(zzc3.zza(zzbVar2).zza()).zza());
            zzjo.zza zza7 = zzjo.zzc().zza(zzbVar).zza(zzdVar).zza(zzcVar);
            zzjo.zze zzeVar2 = zzjo.zze.zzc;
            hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW", zza7.zza(zzeVar2).zza(zzdz.zze().zza(12).zzb(16).zzc(16).zza(zzbVar2).zza()).zza());
            zzjo.zza zza8 = zzjo.zzc().zza(zzbVar).zza(zzdVar);
            zzjo.zzc zzcVar2 = zzjo.zzc.zza;
            hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM", zza8.zza(zzcVar2).zza(zzeVar).zza(zzdz.zze().zza(12).zzb(16).zzc(16).zza(zzbVar2).zza()).zza());
            hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW", zzjo.zzc().zza(zzbVar).zza(zzdVar).zza(zzcVar2).zza(zzeVar2).zza(zzdz.zze().zza(12).zzb(16).zzc(16).zza(zzbVar2).zza()).zza());
            hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX", zzjo.zzc().zza(zzbVar).zza(zzdVar).zza(zzcVar2).zza(zzeVar2).zza(zzdz.zze().zza(12).zzb(16).zzc(16).zza(zzbVar2).zza()).zza());
            zzjo.zza zza9 = zzjo.zzc().zza(zzbVar).zza(zzdVar).zza(zzcVar).zza(zzeVar);
            zzdg.zza zzc4 = zzdg.zzf().zza(16).zzb(32).zzd(16).zzc(16);
            zzdg.zzc zzcVar3 = zzdg.zzc.zzc;
            zzdg.zza zza10 = zzc4.zza(zzcVar3);
            zzdg.zzb zzbVar3 = zzdg.zzb.zzc;
            hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", zza9.zza(zza10.zza(zzbVar3).zza()).zza());
            hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", zzjo.zzc().zza(zzbVar).zza(zzdVar).zza(zzcVar).zza(zzeVar2).zza(zzdg.zzf().zza(16).zzb(32).zzd(16).zzc(16).zza(zzcVar3).zza(zzbVar3).zza()).zza());
            hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", zzjo.zzc().zza(zzbVar).zza(zzdVar).zza(zzcVar2).zza(zzeVar).zza(zzdg.zzf().zza(16).zzb(32).zzd(16).zzc(16).zza(zzcVar3).zza(zzbVar3).zza()).zza());
            hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", zzjo.zzc().zza(zzbVar).zza(zzdVar).zza(zzcVar2).zza(zzeVar2).zza(zzdg.zzf().zza(16).zzb(32).zzd(16).zzc(16).zza(zzcVar3).zza(zzbVar3).zza()).zza());
            zza2.zza(Collections.unmodifiableMap(hashMap));
            zznp.zza().zza(zza);
            zznp.zza().zza(zzb);
            zzni.zza().zza(zze, zzjo.class);
            zzmn.zza().zza((zzbt) zzc, true);
            zzmn.zza().zza((zzbt) zzd, false);
            return;
        }
        throw new GeneralSecurityException("Registering ECIES Hybrid Encryption is not supported in FIPS mode");
    }
}
