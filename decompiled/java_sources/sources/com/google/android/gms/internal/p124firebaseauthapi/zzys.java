package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.internal.zzal;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzys implements zzadm<zzaer> {
    private final /* synthetic */ zzacf zza;
    private final /* synthetic */ zzyl zzb;

    public zzys(zzyl zzylVar, zzacf zzacfVar) {
        this.zza = zzacfVar;
        this.zzb = zzylVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadn
    public final void zza(@Nullable String str) {
        this.zza.zza(zzal.zza(str));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadm
    public final /* synthetic */ void zza(zzaer zzaerVar) {
        zzaer zzaerVar2 = zzaerVar;
        if (zzaerVar2.zzf()) {
            this.zza.zza(new zzym(zzaerVar2.zzc(), zzaerVar2.zze(), null));
        } else {
            this.zzb.zza(new zzafm(zzaerVar2.zzd(), zzaerVar2.zzb(), Long.valueOf(zzaerVar2.zza()), CloudStorageConstants.BEARER), null, null, Boolean.valueOf(zzaerVar2.zzg()), null, this.zza, this);
        }
    }
}
