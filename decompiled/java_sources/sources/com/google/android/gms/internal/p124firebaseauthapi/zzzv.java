package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import java.util.List;

/* loaded from: classes5.dex */
final class zzzv implements zzadm<zzafc> {
    private final /* synthetic */ zzadm zza;
    private final /* synthetic */ zzafm zzb;
    private final /* synthetic */ zzzw zzc;

    public zzzv(zzzw zzzwVar, zzadm zzadmVar, zzafm zzafmVar) {
        this.zza = zzadmVar;
        this.zzb = zzafmVar;
        this.zzc = zzzwVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadn
    public final void zza(@Nullable String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadm
    public final /* synthetic */ void zza(zzafc zzafcVar) {
        List<zzaff> zza = zzafcVar.zza();
        if (zza != null && !zza.isEmpty()) {
            this.zzc.zza.zza(this.zzb, zza.get(0));
        } else {
            this.zza.zza("No users");
        }
    }
}
