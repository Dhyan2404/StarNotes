package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.internal.zzal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaad implements zzadm<zzafm> {
    private final /* synthetic */ String zza;
    private final /* synthetic */ zzacf zzb;
    private final /* synthetic */ zzyl zzc;

    public zzaad(zzyl zzylVar, String str, zzacf zzacfVar) {
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
        zzafm zzafmVar2 = zzafmVar;
        zzagf zzagfVar = new zzagf();
        zzagfVar.zzd(zzafmVar2.zzc()).zzc(this.zza);
        zzyl.zza(this.zzc, this.zzb, zzafmVar2, zzagfVar, this);
    }
}
