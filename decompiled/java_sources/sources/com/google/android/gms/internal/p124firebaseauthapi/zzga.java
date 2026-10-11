package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzgd;
import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzga {
    private static final zzoe<zzfx, zzbh> zza = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzfz
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzga.zza((zzfx) zzbuVar);
        }
    }, zzfx.class, zzbh.class);
    private static final zzbt<zzbh> zzb = zzmy.zza("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", zzbh.class, zzuw.zzb.SYMMETRIC, zzvv.zze());
    private static final zznm<zzgd> zzc = new zznm() { // from class: com.google.android.gms.internal.firebase-auth-api.zzgc
    };
    private static final zznk<zzgd> zzd = new zznk() { // from class: com.google.android.gms.internal.firebase-auth-api.zzgb
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zznk
        public final zzbu zza(zzci zzciVar, Integer num) {
            return zzga.zza((zzgd) zzciVar, null);
        }
    };

    public static String zza() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    public static /* synthetic */ zzbh zza(zzfx zzfxVar) {
        if (zzhw.zza()) {
            return zzhw.zza(zzfxVar);
        }
        return zzxs.zza(zzfxVar);
    }

    public static zzfx zza(zzgd zzgdVar, @Nullable Integer num) throws GeneralSecurityException {
        return zzfx.zza(zzgdVar.zzb(), zzxw.zza(32), num);
    }

    public static void zza(boolean z) throws GeneralSecurityException {
        if (zzig.zza.zza.zza()) {
            zzhz.zza();
            zznp.zza().zza(zza);
            zznq zza2 = zznq.zza();
            HashMap hashMap = new HashMap();
            hashMap.put("XCHACHA20_POLY1305", zzgd.zza(zzgd.zza.zza));
            hashMap.put("XCHACHA20_POLY1305_RAW", zzgd.zza(zzgd.zza.zzc));
            zza2.zza(Collections.unmodifiableMap(hashMap));
            zzni.zza().zza(zzd, zzgd.class);
            zznj.zza().zza(zzc, zzgd.class);
            zzmn.zza().zza((zzbt) zzb, true);
            return;
        }
        throw new GeneralSecurityException("Registering XChaCha20Poly1305 is not supported in FIPS mode");
    }
}
