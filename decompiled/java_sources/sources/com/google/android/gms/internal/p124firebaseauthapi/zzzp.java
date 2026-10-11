package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.internal.zzal;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* loaded from: classes5.dex */
final class zzzp implements zzadm<zzaet> {
    private final /* synthetic */ zzzq zza;

    public zzzp(zzzq zzzqVar) {
        this.zza = zzzqVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadn
    public final void zza(@Nullable String str) {
        this.zza.zza.zza(zzal.zza(str));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadm
    public final /* synthetic */ void zza(zzaet zzaetVar) {
        zzaet zzaetVar2 = zzaetVar;
        zzafm zzafmVar = new zzafm(zzaetVar2.zzb(), zzaetVar2.zza(), Long.valueOf(zzafo.zza(zzaetVar2.zza())), CloudStorageConstants.BEARER);
        zzzq zzzqVar = this.zza;
        zzzqVar.zzb.zza(zzafmVar, null, null, Boolean.FALSE, null, zzzqVar.zza, this);
    }
}
