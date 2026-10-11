package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzcn {
    private static final zzcn zza = new zzcn();

    private zzcn() {
    }

    public static zzcn zza() {
        return zza;
    }

    public static zzcn zza(@Nullable zzcn zzcnVar) throws GeneralSecurityException {
        if (zzcnVar != null) {
            return zzcnVar;
        }
        throw new GeneralSecurityException("SecretKeyAccess is required");
    }
}
