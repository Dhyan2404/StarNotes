package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.internal.zzal;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzyq implements zzadm<zzagy> {
    private final /* synthetic */ zzacf zza;
    private final /* synthetic */ zzyl zzb;

    public zzyq(zzyl zzylVar, zzacf zzacfVar) {
        this.zza = zzacfVar;
        this.zzb = zzylVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadn
    public final void zza(@Nullable String str) {
        this.zza.zza(zzal.zza(str));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadm
    public final /* synthetic */ void zza(zzagy zzagyVar) {
        zzagy zzagyVar2 = zzagyVar;
        if (zzagyVar2.zzf()) {
            this.zza.zza(new zzym(zzagyVar2.zzc(), zzagyVar2.zze(), null));
        } else {
            this.zzb.zza(new zzafm(zzagyVar2.zzd(), zzagyVar2.zzb(), Long.valueOf(zzagyVar2.zza()), CloudStorageConstants.BEARER), null, null, Boolean.FALSE, null, this.zza, this);
        }
    }
}
