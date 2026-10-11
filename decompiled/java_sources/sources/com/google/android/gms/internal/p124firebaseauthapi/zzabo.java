package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.internal.zzac;
import com.google.firebase.auth.internal.zzh;
import com.google.firebase.auth.internal.zzi;
import com.google.firebase.auth.internal.zzw;

/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes5.dex */
public final class zzabo extends zzacz<AuthResult, zzi> {
    private final zzags zzy;

    public zzabo(AuthCredential authCredential, @Nullable String str) {
        super(2);
        Preconditions.checkNotNull(authCredential, "credential cannot be null");
        this.zzy = zzh.zza(authCredential, str);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadl
    public final String zza() {
        return "signInWithCredential";
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacz
    public final void zzb() {
        zzac zza = zzaak.zza(this.zzc, this.zzk);
        ((zzi) this.zze).zza(this.zzj, zza);
        zzb(new zzw(zza));
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadl
    public final void zza(TaskCompletionSource taskCompletionSource, zzaci zzaciVar) {
        this.zzg = new zzadg(this, taskCompletionSource);
        zzaciVar.zza(this.zzy, this.zzb);
    }
}
