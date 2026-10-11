package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zziy implements zzch<zzbq, zzbq> {
    private static final zziy zza = new zziy();
    private static final zzoe<zzna, zzbq> zzb = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzjb
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzji.zza((zzna) zzbuVar);
        }
    }, zzna.class, zzbq.class);

    public static void zzc() throws GeneralSecurityException {
        zznp.zza().zza(zza);
        zznp.zza().zza(zzb);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzch
    public final Class<zzbq> zza() {
        return zzbq.class;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzch
    public final Class<zzbq> zzb() {
        return zzbq.class;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzch
    public final /* synthetic */ zzbq zza(zzoo<zzbq> zzooVar) throws GeneralSecurityException {
        return new zzja(zzooVar);
    }
}
