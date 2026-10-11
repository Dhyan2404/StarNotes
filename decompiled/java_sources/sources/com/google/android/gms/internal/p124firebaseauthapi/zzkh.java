package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzkh {
    private static final String zza = "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey";
    private static final String zzb = "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";

    @Deprecated
    private static final zzvu zzc = zzvu.zzb();

    @Deprecated
    private static final zzvu zzd = zzvu.zzb();

    @Deprecated
    private static final zzvu zze = zzvu.zzb();

    static {
        try {
            zza();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void zza() throws GeneralSecurityException {
        zzkk.zzc();
        zzkl.zzc();
        zzcr.zza();
        zzix.zza();
        if (zzig.zzb()) {
            return;
        }
        zzjk.zza(true);
        zzlj.zza(true);
    }
}
