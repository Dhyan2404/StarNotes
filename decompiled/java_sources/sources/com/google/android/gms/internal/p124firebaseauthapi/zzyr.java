package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzyr implements zzadm<zzafc> {
    private final /* synthetic */ zzadn zza;
    private final /* synthetic */ zzacf zzb;
    private final /* synthetic */ zzafm zzc;
    private final /* synthetic */ zzagf zzd;
    private final /* synthetic */ zzyl zze;

    public zzyr(zzyl zzylVar, zzadn zzadnVar, zzacf zzacfVar, zzafm zzafmVar, zzagf zzagfVar) {
        this.zza = zzadnVar;
        this.zzb = zzacfVar;
        this.zzc = zzafmVar;
        this.zzd = zzagfVar;
        this.zze = zzylVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadn
    public final void zza(@Nullable String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadm
    public final /* synthetic */ void zza(zzafc zzafcVar) {
        List<zzaff> zza = zzafcVar.zza();
        if (zza != null && !zza.isEmpty()) {
            zzyl.zza(this.zze, this.zzb, this.zzc, zza.get(0), this.zzd, this.zza);
        } else {
            this.zza.zza("No users");
        }
    }
}
