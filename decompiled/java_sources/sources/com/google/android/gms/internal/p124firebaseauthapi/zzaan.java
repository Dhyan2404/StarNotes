package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.internal.zzas;

/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes5.dex */
public final class zzaan extends zzacz<Void, zzas> {
    public zzaan() {
        super(5);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadl
    public final String zza() {
        return "delete";
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacz
    public final void zzb() {
        ((zzas) this.zze).zza();
        zzb(null);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadl
    public final void zza(TaskCompletionSource taskCompletionSource, zzaci zzaciVar) {
        this.zzg = new zzadg(this, taskCompletionSource);
        zzaciVar.zza(this.zzd.zze(), this.zzb);
    }
}
