package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzix {
    private static final String zza = "type.googleapis.com/google.crypto.tink.AesSivKey";

    @Deprecated
    private static final zzvu zzb = zzvu.zzb();

    @Deprecated
    private static final zzvu zzc = zzvu.zzb();

    static {
        try {
            zza();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void zza() throws GeneralSecurityException {
        zziy.zzc();
        if (zzig.zzb()) {
            return;
        }
        zzio.zza(true);
    }
}
