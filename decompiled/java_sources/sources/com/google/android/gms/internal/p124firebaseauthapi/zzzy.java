package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.internal.zzal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzzy implements zzadm<zzafm> {
    final /* synthetic */ zzacf zza;
    private final /* synthetic */ zzyl zzb;

    public zzzy(zzyl zzylVar, zzacf zzacfVar) {
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
        zzaep zzaepVar = new zzaep(zzafmVar.zzc());
        zzadkVar = this.zzb.zza;
        zzadkVar.zza(zzaepVar, new zzzx(this, this));
    }
}
