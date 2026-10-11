package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.internal.zzal;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzzs implements zzadm<zzaev> {
    private final /* synthetic */ zzacf zza;
    private final /* synthetic */ zzyl zzb;

    public zzzs(zzyl zzylVar, zzacf zzacfVar) {
        this.zza = zzacfVar;
        this.zzb = zzylVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadn
    public final void zza(@Nullable String str) {
        this.zza.zza(zzal.zza(str));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadm
    public final /* synthetic */ void zza(zzaev zzaevVar) {
        zzaev zzaevVar2 = zzaevVar;
        this.zzb.zza(new zzafm(zzaevVar2.zzb(), zzaevVar2.zza(), Long.valueOf(zzafo.zza(zzaevVar2.zza())), CloudStorageConstants.BEARER), null, null, Boolean.FALSE, null, this.zza, this);
    }
}
