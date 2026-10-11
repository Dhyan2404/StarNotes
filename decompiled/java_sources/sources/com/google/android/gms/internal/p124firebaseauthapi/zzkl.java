package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzkl implements zzch<zzbs, zzbs> {
    private static final zzkl zza = new zzkl();
    private static final zzoe<zzna, zzbs> zzb = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzko
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzls.zza((zzna) zzbuVar);
        }
    }, zzna.class, zzbs.class);

    public static void zzc() throws GeneralSecurityException {
        zznp.zza().zza(zza);
        zznp.zza().zza(zzb);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzch
    public final Class<zzbs> zza() {
        return zzbs.class;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzch
    public final Class<zzbs> zzb() {
        return zzbs.class;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzch
    public final /* synthetic */ zzbs zza(zzoo<zzbs> zzooVar) throws GeneralSecurityException {
        return new zzkn(zzooVar);
    }
}
