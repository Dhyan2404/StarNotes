package com.google.android.gms.internal.p124firebaseauthapi;

/* loaded from: classes5.dex */
final class zzkn implements zzbs {
    private final zzoo<zzbs> zza;
    private final zzro zzb;

    public zzkn(zzoo<zzbs> zzooVar) {
        this.zza = zzooVar;
        if (zzooVar.zzf()) {
            this.zzb = zznl.zza().zzb().zza(zzne.zza(zzooVar), "hybrid_encrypt", "encrypt");
        } else {
            this.zzb = zzne.zza;
        }
    }
}
