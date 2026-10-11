package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzna extends zzbu {
    private final zzou zza;

    public zzna(zzou zzouVar, @Nullable zzcn zzcnVar) throws GeneralSecurityException {
        zza(zzouVar, zzcnVar);
        this.zza = zzouVar;
    }

    public final zzou zza(@Nullable zzcn zzcnVar) throws GeneralSecurityException {
        zza(this.zza, zzcnVar);
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbu
    @Nullable
    public final Integer zza() {
        return this.zza.zze();
    }

    private static void zza(zzou zzouVar, @Nullable zzcn zzcnVar) throws GeneralSecurityException {
        int i = zzmz.zza[zzouVar.zza().ordinal()];
        if (i == 1 || i == 2) {
            zzcn.zza(zzcnVar);
        }
    }
}
