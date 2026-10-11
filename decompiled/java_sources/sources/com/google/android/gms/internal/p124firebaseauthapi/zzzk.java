package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.internal.zzal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzzk implements zzadm<zzafm> {
    final /* synthetic */ String zza;
    final /* synthetic */ zzacf zzb;
    final /* synthetic */ zzyl zzc;

    public zzzk(zzyl zzylVar, String str, zzacf zzacfVar) {
        this.zza = str;
        this.zzb = zzacfVar;
        this.zzc = zzylVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadn
    public final void zza(@Nullable String str) {
        this.zzb.zza(zzal.zza(str));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadm
    public final /* synthetic */ void zza(zzafm zzafmVar) {
        zzadk zzadkVar;
        zzafm zzafmVar2 = zzafmVar;
        zzafd zzafdVar = new zzafd(zzafmVar2.zzc());
        zzadkVar = this.zzc.zza;
        zzadkVar.zza(zzafdVar, new zzzj(this, this, zzafmVar2));
    }
}
