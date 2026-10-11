package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzdz;
import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class zzdv {
    private static final zzoe<zzds, zzbh> zza = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzdy
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzwf.zza((zzds) zzbuVar);
        }
    }, zzds.class, zzbh.class);
    private static final zzbt<zzbh> zzb = zzmy.zza("type.googleapis.com/google.crypto.tink.AesGcmKey", zzbh.class, zzuw.zzb.SYMMETRIC, zzss.zze());
    private static final zznm<zzdz> zzc = new zznm() { // from class: com.google.android.gms.internal.firebase-auth-api.zzdx
    };
    private static final zznk<zzdz> zzd = new zznk() { // from class: com.google.android.gms.internal.firebase-auth-api.zzea
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zznk
        public final zzbu zza(zzci zzciVar, Integer num) {
            return zzdv.zza((zzdz) zzciVar, null);
        }
    };
    private static final zzig.zza zze = zzig.zza.zzb;

    public static String zza() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    public static /* synthetic */ zzds zza(zzdz zzdzVar, Integer num) {
        if (zzdzVar.zzc() != 24) {
            return zzds.zzb().zza(zzdzVar).zza(num).zza(zzxw.zza(zzdzVar.zzc())).zza();
        }
        throw new GeneralSecurityException("192 bit AES GCM Parameters are not valid");
    }

    public static void zza(boolean z) throws GeneralSecurityException {
        zzig.zza zzaVar = zze;
        if (zzaVar.zza()) {
            zzgr.zza();
            zznp.zza().zza(zza);
            zznq zza2 = zznq.zza();
            HashMap hashMap = new HashMap();
            hashMap.put("AES128_GCM", zzfs.zza);
            zzdz.zza zzc2 = zzdz.zze().zza(12).zzb(16).zzc(16);
            zzdz.zzb zzbVar = zzdz.zzb.zzc;
            hashMap.put("AES128_GCM_RAW", zzc2.zza(zzbVar).zza());
            hashMap.put("AES256_GCM", zzfs.zzb);
            hashMap.put("AES256_GCM_RAW", zzdz.zze().zza(12).zzb(32).zzc(16).zza(zzbVar).zza());
            zza2.zza(Collections.unmodifiableMap(hashMap));
            zznj.zza().zza(zzc, zzdz.class);
            zzni.zza().zza(zzd, zzdz.class);
            zzmn.zza().zza((zzbt) zzb, zzaVar, true);
            return;
        }
        throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
    }
}
