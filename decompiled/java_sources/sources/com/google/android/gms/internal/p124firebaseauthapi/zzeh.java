package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzek;
import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* loaded from: classes5.dex */
public final class zzeh {
    private static final zzoe<zzed, zzbh> zza = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzeg
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzif.zza((zzed) zzbuVar);
        }
    }, zzed.class, zzbh.class);
    private static final zznk<zzek> zzb = new zznk() { // from class: com.google.android.gms.internal.firebase-auth-api.zzej
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zznk
        public final zzbu zza(zzci zzciVar, Integer num) {
            zzed zza2;
            zza2 = zzed.zzb().zza(r1).zza((Integer) null).zza(zzxw.zza(((zzek) zzciVar).zzb())).zza();
            return zza2;
        }
    };
    private static final zznm<zzek> zzc = new zznm() { // from class: com.google.android.gms.internal.firebase-auth-api.zzei
    };
    private static final zzbt<zzbh> zzd = zzmy.zza("type.googleapis.com/google.crypto.tink.AesGcmSivKey", zzbh.class, zzuw.zzb.SYMMETRIC, zzsw.zze());

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzig.zza.zza.zza()) {
            zzgx.zza();
            if (zza()) {
                zznp.zza().zza(zza);
                zznq zza2 = zznq.zza();
                HashMap hashMap = new HashMap();
                zzek.zza zza3 = zzek.zzc().zza(16);
                zzek.zzb zzbVar = zzek.zzb.zza;
                hashMap.put("AES128_GCM_SIV", zza3.zza(zzbVar).zza());
                zzek.zza zza4 = zzek.zzc().zza(16);
                zzek.zzb zzbVar2 = zzek.zzb.zzc;
                hashMap.put("AES128_GCM_SIV_RAW", zza4.zza(zzbVar2).zza());
                hashMap.put("AES256_GCM_SIV", zzek.zzc().zza(32).zza(zzbVar).zza());
                hashMap.put("AES256_GCM_SIV_RAW", zzek.zzc().zza(32).zza(zzbVar2).zza());
                zza2.zza(Collections.unmodifiableMap(hashMap));
                zznj.zza().zza(zzc, zzek.class);
                zzni.zza().zza(zzb, zzek.class);
                zzmn.zza().zza((zzbt) zzd, true);
                return;
            }
            return;
        }
        throw new GeneralSecurityException("Registering AES GCM SIV is not supported in FIPS mode");
    }

    private static boolean zza() {
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
            return false;
        }
    }
}
