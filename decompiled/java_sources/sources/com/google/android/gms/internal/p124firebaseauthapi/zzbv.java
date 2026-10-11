package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzbv {

    @Nullable
    private final zzvc zza = null;

    @Nullable
    private final zzci zzb;

    private zzbv(zzci zzciVar) {
        this.zzb = zzciVar;
    }

    public static zzbv zza(zzci zzciVar) throws GeneralSecurityException {
        return new zzbv(zzciVar);
    }

    public final zzvc zza() throws GeneralSecurityException {
        zzci zzciVar = this.zzb;
        if (zzciVar instanceof zznc) {
            return ((zznc) zzciVar).zzb().zza();
        }
        return ((zzot) zzns.zza().zza((zzns) this.zzb, zzot.class)).zza();
    }
}
