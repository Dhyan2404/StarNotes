package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.internal.zzal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzzn implements zzadm<zzagi> {
    private final /* synthetic */ zzagj zza;
    private final /* synthetic */ zzacf zzb;

    public zzzn(zzyl zzylVar, zzagj zzagjVar, zzacf zzacfVar) {
        this.zza = zzagjVar;
        this.zzb = zzacfVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadn
    public final void zza(@Nullable String str) {
        this.zzb.zza(zzal.zza(str));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadm
    public final /* synthetic */ void zza(zzagi zzagiVar) {
        zzagi zzagiVar2 = zzagiVar;
        zzagj zzagjVar = this.zza;
        if (zzagjVar instanceof zzagn) {
            this.zzb.zzb(zzagiVar2.zza());
            return;
        }
        if (zzagjVar instanceof zzagp) {
            this.zzb.zza(zzagiVar2);
            return;
        }
        throw new IllegalArgumentException("startMfaEnrollmentRequest must be an instance of either StartPhoneMfaEnrollmentRequest or StartTotpMfaEnrollmentRequest but was " + this.zza.getClass().getName() + ".");
    }
}
