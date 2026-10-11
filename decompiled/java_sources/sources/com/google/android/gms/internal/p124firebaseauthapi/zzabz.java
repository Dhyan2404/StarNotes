package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.internal.zzi;

/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes5.dex */
public final class zzabz extends zzacz<Void, zzi> {
    private final PhoneAuthCredential zzy;

    public zzabz(PhoneAuthCredential phoneAuthCredential) {
        super(2);
        this.zzy = (PhoneAuthCredential) Preconditions.checkNotNull(phoneAuthCredential);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadl
    public final String zza() {
        return "updatePhoneNumber";
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacz
    public final void zzb() {
        ((zzi) this.zze).zza(this.zzj, zzaak.zza(this.zzc, this.zzk));
        zzb(null);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadl
    public final void zza(TaskCompletionSource taskCompletionSource, zzaci zzaciVar) {
        this.zzg = new zzadg(this, taskCompletionSource);
        zzaciVar.zza(new zzyc(this.zzd.zze(), this.zzy), this.zzb);
    }
}
