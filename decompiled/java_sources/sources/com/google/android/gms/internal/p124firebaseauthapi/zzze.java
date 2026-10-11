package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzze implements zzadm<zzagg> {
    private final /* synthetic */ zzacf zza;
    private final /* synthetic */ zzadn zzb;
    private final /* synthetic */ zzyl zzc;

    public zzze(zzyl zzylVar, zzacf zzacfVar, zzadn zzadnVar) {
        this.zza = zzacfVar;
        this.zzb = zzadnVar;
        this.zzc = zzylVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadn
    public final void zza(@Nullable String str) {
        this.zzb.zza(str);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadm
    public final /* synthetic */ void zza(zzagg zzaggVar) {
        zzagg zzaggVar2 = zzaggVar;
        this.zzc.zza(new zzafm(zzaggVar2.zzc(), zzaggVar2.zzb(), Long.valueOf(zzaggVar2.zza()), CloudStorageConstants.BEARER), null, "password", Boolean.FALSE, null, this.zza, this);
    }
}
