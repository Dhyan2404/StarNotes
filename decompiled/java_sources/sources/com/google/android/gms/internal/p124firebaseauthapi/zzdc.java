package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzdg;
import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzdc {
    private static final zzoe<zzcz, zzbh> zza = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzdf
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzws.zza((zzcz) zzbuVar);
        }
    }, zzcz.class, zzbh.class);
    private static final zzbt<zzbh> zzb = zzmy.zza("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", zzbh.class, zzuw.zzb.SYMMETRIC, zzsc.zzf());
    private static final zznm<zzdg> zzc = new zznm() { // from class: com.google.android.gms.internal.firebase-auth-api.zzde
    };
    private static final zznk<zzdg> zzd = new zznk() { // from class: com.google.android.gms.internal.firebase-auth-api.zzdh
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zznk
        public final zzbu zza(zzci zzciVar, Integer num) {
            return zzdc.zza((zzdg) zzciVar, null);
        }
    };
    private static final zzig.zza zze = zzig.zza.zzb;

    public static String zza() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    public static zzcz zza(zzdg zzdgVar, @Nullable Integer num) throws GeneralSecurityException {
        if (zzdgVar.zzb() != 16 && zzdgVar.zzb() != 32) {
            throw new GeneralSecurityException("AES key size must be 16 or 32 bytes");
        }
        return zzcz.zzb().zza(zzdgVar).zza(num).zza(zzxw.zza(zzdgVar.zzb())).zzb(zzxw.zza(zzdgVar.zzc())).zza();
    }

    public static void zza(boolean z) throws GeneralSecurityException {
        zzig.zza zzaVar = zze;
        if (zzaVar.zza()) {
            zzgf.zza();
            zznp.zza().zza(zza);
            zznq zza2 = zznq.zza();
            HashMap hashMap = new HashMap();
            hashMap.put("AES128_CTR_HMAC_SHA256", zzfs.zze);
            zzdg.zza zzc2 = zzdg.zzf().zza(16).zzb(32).zzd(16).zzc(16);
            zzdg.zzc zzcVar = zzdg.zzc.zzc;
            zzdg.zza zza3 = zzc2.zza(zzcVar);
            zzdg.zzb zzbVar = zzdg.zzb.zzc;
            hashMap.put("AES128_CTR_HMAC_SHA256_RAW", zza3.zza(zzbVar).zza());
            hashMap.put("AES256_CTR_HMAC_SHA256", zzfs.zzf);
            hashMap.put("AES256_CTR_HMAC_SHA256_RAW", zzdg.zzf().zza(32).zzb(32).zzd(32).zzc(16).zza(zzcVar).zza(zzbVar).zza());
            zza2.zza(Collections.unmodifiableMap(hashMap));
            zznj.zza().zza(zzc, zzdg.class);
            zzni.zza().zza(zzd, zzdg.class);
            zzmn.zza().zza((zzbt) zzb, zzaVar, true);
            return;
        }
        throw new GeneralSecurityException("Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }
}
