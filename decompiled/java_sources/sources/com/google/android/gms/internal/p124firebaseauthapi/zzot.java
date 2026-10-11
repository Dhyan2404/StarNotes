package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzot implements zzox {
    private final zzxv zza;
    private final zzvc zzb;

    private zzot(zzvc zzvcVar, zzxv zzxvVar) {
        this.zzb = zzvcVar;
        this.zza = zzxvVar;
    }

    public static zzot zza(zzvc zzvcVar) throws GeneralSecurityException {
        return new zzot(zzvcVar, zzph.zza(zzvcVar.zzf()));
    }

    public static zzot zzb(zzvc zzvcVar) {
        return new zzot(zzvcVar, zzph.zzb(zzvcVar.zzf()));
    }

    public final zzvc zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzox
    public final zzxv zzb() {
        return this.zza;
    }
}
