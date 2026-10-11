package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import com.google.android.gms.internal.p124firebaseauthapi.zzqf;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzpz {
    private static final zzoe<zzpw, zzps> zza = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzqc
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return new zzrc((zzpw) zzbuVar);
        }
    }, zzpw.class, zzps.class);
    private static final zzoe<zzpw, zzcf> zzb = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzqb
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzxo.zza((zzpw) zzbuVar);
        }
    }, zzpw.class, zzcf.class);
    private static final zzbt<zzcf> zzc = zzmy.zza("type.googleapis.com/google.crypto.tink.HmacKey", zzcf.class, zzuw.zzb.SYMMETRIC, zzud.zzg());
    private static final zznm<zzqf> zzd = new zznm() { // from class: com.google.android.gms.internal.firebase-auth-api.zzqe
    };
    private static final zznk<zzqf> zze = new zznk() { // from class: com.google.android.gms.internal.firebase-auth-api.zzqd
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zznk
        public final zzbu zza(zzci zzciVar, Integer num) {
            return zzpz.zza((zzqf) zzciVar, null);
        }
    };
    private static final zzig.zza zzf = zzig.zza.zzb;

    public static zzpw zza(zzqf zzqfVar, @Nullable Integer num) throws GeneralSecurityException {
        return zzpw.zzb().zza(zzqfVar).zza(zzxw.zza(zzqfVar.zzc())).zza(num).zza();
    }

    public static void zza(boolean z) throws GeneralSecurityException {
        zzig.zza zzaVar = zzf;
        if (zzaVar.zza()) {
            zzrf.zza();
            zznp.zza().zza(zza);
            zznp.zza().zza(zzb);
            zznq zza2 = zznq.zza();
            HashMap hashMap = new HashMap();
            hashMap.put("HMAC_SHA256_128BITTAG", zzqo.zza);
            zzqf.zza zzb2 = zzqf.zzd().zza(32).zzb(16);
            zzqf.zzc zzcVar = zzqf.zzc.zzd;
            zzqf.zza zza3 = zzb2.zza(zzcVar);
            zzqf.zzb zzbVar = zzqf.zzb.zzc;
            hashMap.put("HMAC_SHA256_128BITTAG_RAW", zza3.zza(zzbVar).zza());
            zzqf.zza zzb3 = zzqf.zzd().zza(32).zzb(32);
            zzqf.zzc zzcVar2 = zzqf.zzc.zza;
            hashMap.put("HMAC_SHA256_256BITTAG", zzb3.zza(zzcVar2).zza(zzbVar).zza());
            hashMap.put("HMAC_SHA256_256BITTAG_RAW", zzqf.zzd().zza(32).zzb(32).zza(zzcVar).zza(zzbVar).zza());
            zzqf.zza zza4 = zzqf.zzd().zza(64).zzb(16).zza(zzcVar2);
            zzqf.zzb zzbVar2 = zzqf.zzb.zze;
            hashMap.put("HMAC_SHA512_128BITTAG", zza4.zza(zzbVar2).zza());
            hashMap.put("HMAC_SHA512_128BITTAG_RAW", zzqf.zzd().zza(64).zzb(16).zza(zzcVar).zza(zzbVar2).zza());
            hashMap.put("HMAC_SHA512_256BITTAG", zzqf.zzd().zza(64).zzb(32).zza(zzcVar2).zza(zzbVar2).zza());
            hashMap.put("HMAC_SHA512_256BITTAG_RAW", zzqf.zzd().zza(64).zzb(32).zza(zzcVar).zza(zzbVar2).zza());
            hashMap.put("HMAC_SHA512_512BITTAG", zzqo.zzb);
            hashMap.put("HMAC_SHA512_512BITTAG_RAW", zzqf.zzd().zza(64).zzb(64).zza(zzcVar).zza(zzbVar2).zza());
            zza2.zza(Collections.unmodifiableMap(hashMap));
            zzni.zza().zza(zze, zzqf.class);
            zznj.zza().zza(zzd, zzqf.class);
            zzmn.zza().zza((zzbt) zzc, zzaVar, true);
            return;
        }
        throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }
}
