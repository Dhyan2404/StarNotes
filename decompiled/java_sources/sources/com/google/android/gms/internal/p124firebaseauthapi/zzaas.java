package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseError;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.MultiFactorAssertion;
import com.google.firebase.auth.internal.zzac;
import com.google.firebase.auth.internal.zzi;
import com.google.firebase.auth.internal.zzw;

/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes5.dex */
public final class zzaas extends zzacz<AuthResult, zzi> {

    @Nullable
    private final String zzaa;
    private final MultiFactorAssertion zzy;
    private final String zzz;

    public zzaas(MultiFactorAssertion multiFactorAssertion, String str, @Nullable String str2) {
        super(2);
        this.zzy = (MultiFactorAssertion) Preconditions.checkNotNull(multiFactorAssertion);
        this.zzz = Preconditions.checkNotEmpty(str);
        this.zzaa = str2;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadl
    public final String zza() {
        return "finalizeMfaSignIn";
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacz
    public final void zzb() {
        zzac zza = zzaak.zza(this.zzc, this.zzk);
        FirebaseUser firebaseUser = this.zzd;
        if (firebaseUser != null && !firebaseUser.getUid().equalsIgnoreCase(zza.getUid())) {
            zza(new Status(FirebaseError.ERROR_USER_MISMATCH));
        } else {
            ((zzi) this.zze).zza(this.zzj, zza);
            zzb(new zzw(zza));
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadl
    public final void zza(TaskCompletionSource taskCompletionSource, zzaci zzaciVar) {
        this.zzg = new zzadg(this, taskCompletionSource);
        zzaciVar.zza(this.zzz, this.zzy, this.zzaa, this.zzb);
    }
}
