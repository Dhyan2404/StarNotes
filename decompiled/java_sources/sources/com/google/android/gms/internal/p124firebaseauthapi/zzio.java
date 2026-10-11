package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import com.google.android.gms.internal.p124firebaseauthapi.zzis;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Collections;
import java.util.HashMap;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzio {
    private static final zzoe<zzil, zzbq> zza = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzir
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzio.zza((zzil) zzbuVar);
        }
    }, zzil.class, zzbq.class);
    private static final zzbt<zzbq> zzb = zzmy.zza("type.googleapis.com/google.crypto.tink.AesSivKey", zzbq.class, zzuw.zzb.SYMMETRIC, zzta.zze());
    private static final zznm<zzis> zzc = new zznm() { // from class: com.google.android.gms.internal.firebase-auth-api.zziq
    };
    private static final zznk<zzis> zzd = new zznk() { // from class: com.google.android.gms.internal.firebase-auth-api.zzit
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zznk
        public final zzbu zza(zzci zzciVar, Integer num) {
            return zzio.zza((zzis) zzciVar, null);
        }
    };

    public static /* synthetic */ zzbq zza(zzil zzilVar) {
        zza(zzilVar.zzc());
        return zzwe.zza(zzilVar);
    }

    public static zzil zza(zzis zzisVar, @Nullable Integer num) throws GeneralSecurityException {
        zza(zzisVar);
        return zzil.zzb().zza(zzisVar).zza(num).zza(zzxw.zza(zzisVar.zzb())).zza();
    }

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzig.zza.zza.zza()) {
            zzjf.zza();
            zznp.zza().zza(zza);
            zznq zza2 = zznq.zza();
            HashMap hashMap = new HashMap();
            hashMap.put("AES256_SIV", zzjd.zza);
            hashMap.put("AES256_SIV_RAW", zzis.zzc().zza(64).zza(zzis.zzb.zzc).zza());
            zza2.zza(Collections.unmodifiableMap(hashMap));
            zznj.zza().zza(zzc, zzis.class);
            zzni.zza().zza(zzd, zzis.class);
            zzmn.zza().zza((zzbt) zzb, true);
            return;
        }
        throw new GeneralSecurityException("Registering AES SIV is not supported in FIPS mode");
    }

    private static void zza(zzis zzisVar) throws GeneralSecurityException {
        if (zzisVar.zzb() == 64) {
            return;
        }
        throw new InvalidAlgorithmParameterException("invalid key size: " + zzisVar.zzb() + ". Valid keys must have 64 bytes.");
    }
}
