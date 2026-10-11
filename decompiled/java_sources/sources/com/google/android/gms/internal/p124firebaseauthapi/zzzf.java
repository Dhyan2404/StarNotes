package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.internal.zzal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzzf implements zzadm<zzafm> {
    final /* synthetic */ zzacf zza;
    final /* synthetic */ zzyl zzb;
    private final /* synthetic */ zzags zzc;

    public zzzf(zzyl zzylVar, zzags zzagsVar, zzacf zzacfVar) {
        this.zzc = zzagsVar;
        this.zza = zzacfVar;
        this.zzb = zzylVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadn
    public final void zza(@Nullable String str) {
        this.zza.zza(zzal.zza(str));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadm
    public final /* synthetic */ void zza(zzafm zzafmVar) {
        zzadk zzadkVar;
        this.zzc.zzb(true);
        this.zzc.zza(zzafmVar.zzc());
        zzadkVar = this.zzb.zza;
        zzadkVar.zza(this.zzc, new zzzi(this, this));
    }
}
