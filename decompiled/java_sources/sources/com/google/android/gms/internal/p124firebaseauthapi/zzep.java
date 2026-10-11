package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzeq;
import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzep {
    private static final zzoe<zzem, zzbh> zza = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzeo
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzep.zza((zzem) zzbuVar);
        }
    }, zzem.class, zzbh.class);
    private static final zznk<zzeq> zzb = new zznk() { // from class: com.google.android.gms.internal.firebase-auth-api.zzer
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zznk
        public final zzbu zza(zzci zzciVar, Integer num) {
            return zzep.zza((zzeq) zzciVar, null);
        }
    };
    private static final zzbt<zzbh> zzc = zzmy.zza("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key", zzbh.class, zzuw.zzb.SYMMETRIC, zzte.zze());

    public static String zza() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    public static /* synthetic */ zzbh zza(zzem zzemVar) {
        if (zzhd.zzb()) {
            return zzhd.zza(zzemVar);
        }
        return zzwg.zza(zzemVar);
    }

    public static zzem zza(zzeq zzeqVar, @Nullable Integer num) throws GeneralSecurityException {
        return zzem.zza(zzeqVar.zzb(), zzxw.zza(32), num);
    }

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzig.zza.zza.zza()) {
            zzhf.zza();
            zznp.zza().zza(zza);
            zzni.zza().zza(zzb, zzeq.class);
            zznq zza2 = zznq.zza();
            HashMap hashMap = new HashMap();
            hashMap.put("CHACHA20_POLY1305", zzeq.zza(zzeq.zza.zza));
            hashMap.put("CHACHA20_POLY1305_RAW", zzeq.zza(zzeq.zza.zzc));
            zza2.zza(Collections.unmodifiableMap(hashMap));
            zzmn.zza().zza((zzbt) zzc, true);
            return;
        }
        throw new GeneralSecurityException("Registering ChaCha20Poly1305 is not supported in FIPS mode");
    }
}
