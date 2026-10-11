package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzqk implements zzch<zzcf, zzcf> {
    private static final zzqk zza = new zzqk();
    private static final zzoe<zzna, zzcf> zzb = zzoe.zza(new zzog() { // from class: com.google.android.gms.internal.firebase-auth-api.zzqn
        @Override // com.google.android.gms.internal.p124firebaseauthapi.zzog
        public final Object zza(zzbu zzbuVar) {
            return zzri.zza((zzna) zzbuVar);
        }
    }, zzna.class, zzcf.class);

    public static void zzc() throws GeneralSecurityException {
        zznp.zza().zza(zza);
        zznp.zza().zza(zzb);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzch
    public final Class<zzcf> zza() {
        return zzcf.class;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzch
    public final Class<zzcf> zzb() {
        return zzcf.class;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzch
    public final /* synthetic */ zzcf zza(zzoo<zzcf> zzooVar) throws GeneralSecurityException {
        return new zzqm(zzooVar);
    }
}
