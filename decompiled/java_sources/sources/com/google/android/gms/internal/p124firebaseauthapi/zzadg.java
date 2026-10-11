package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.FirebaseAuth;

/* loaded from: classes5.dex */
public final class zzadg<ResultT, CallbackT> implements zzacx<ResultT> {
    private final zzacz<ResultT, CallbackT> zza;
    private final TaskCompletionSource<ResultT> zzb;

    public zzadg(zzacz<ResultT, CallbackT> zzaczVar, TaskCompletionSource<ResultT> taskCompletionSource) {
        this.zza = zzaczVar;
        this.zzb = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacx
    public final void zza(ResultT resultt, Status status) {
        Preconditions.checkNotNull(this.zzb, "completion source cannot be null");
        if (status == null) {
            this.zzb.setResult(resultt);
            return;
        }
        zzacz<ResultT, CallbackT> zzaczVar = this.zza;
        if (zzaczVar.zzs != null) {
            TaskCompletionSource<ResultT> taskCompletionSource = this.zzb;
            FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(zzaczVar.zzc);
            zzacz<ResultT, CallbackT> zzaczVar2 = this.zza;
            taskCompletionSource.setException(zzach.zza(firebaseAuth, zzaczVar2.zzs, ("reauthenticateWithCredential".equals(zzaczVar2.zza()) || "reauthenticateWithCredentialWithData".equals(this.zza.zza())) ? this.zza.zzd : null));
            return;
        }
        AuthCredential authCredential = zzaczVar.zzp;
        if (authCredential != null) {
            this.zzb.setException(zzach.zza(status, authCredential, zzaczVar.zzq, zzaczVar.zzr));
        } else {
            this.zzb.setException(zzach.zza(status));
        }
    }
}
