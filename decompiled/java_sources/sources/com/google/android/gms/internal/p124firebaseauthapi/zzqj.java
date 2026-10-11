package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzqj {
    private static final String zza = "type.googleapis.com/google.crypto.tink.HmacKey";

    @Deprecated
    private static final zzvu zzb;

    @Deprecated
    private static final zzvu zzc;

    @Deprecated
    private static final zzvu zzd;

    static {
        zzvu zzb2 = zzvu.zzb();
        zzb = zzb2;
        zzc = zzb2;
        zzd = zzb2;
        try {
            zza();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void zza() throws GeneralSecurityException {
        zzqk.zzc();
        zzpv.zzc();
        zzpz.zza(true);
        if (zzig.zzb()) {
            return;
        }
        zzpn.zza(true);
    }
}
