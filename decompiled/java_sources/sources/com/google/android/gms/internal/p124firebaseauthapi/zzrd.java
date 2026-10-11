package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzrd implements zzps {
    private static final zzig.zza zza = zzig.zza.zza;
    private final zzpj zzb;

    public zzrd(zzpj zzpjVar) throws GeneralSecurityException {
        if (!zza.zza()) {
            throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
        }
        this.zzb = zzpjVar;
    }
}
