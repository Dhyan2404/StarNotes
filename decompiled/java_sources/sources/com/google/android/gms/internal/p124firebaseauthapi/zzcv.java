package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzcv implements zzch<zzbh, zzbh> {
    private static final zzcv zza = new zzcv();
    private static final zzoe<zzna, zzbh> zzb = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzcy
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzhv.zza((zzna) zzbuVar);
        }
    }, zzna.class, zzbh.class);

    public static void zzc() throws GeneralSecurityException {
        zznp.zza().zza(zza);
        zznp.zza().zza(zzb);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzch
    public final Class<zzbh> zza() {
        return zzbh.class;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzch
    public final Class<zzbh> zzb() {
        return zzbh.class;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzch
    public final /* synthetic */ zzbh zza(zzoo<zzbh> zzooVar) throws GeneralSecurityException {
        return new zzcx(zzooVar);
    }
}
