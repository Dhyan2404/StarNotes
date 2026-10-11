package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.internal.zzal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzzq implements zzadm<zzafm> {
    final /* synthetic */ zzacf zza;
    final /* synthetic */ zzyl zzb;
    private final /* synthetic */ zzaeq zzc;

    public zzzq(zzyl zzylVar, zzaeq zzaeqVar, zzacf zzacfVar) {
        this.zzc = zzaeqVar;
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
        this.zzc.zza(zzafmVar.zzc());
        zzadkVar = this.zzb.zza;
        zzadkVar.zza(this.zzc, new zzzp(this));
    }
}
