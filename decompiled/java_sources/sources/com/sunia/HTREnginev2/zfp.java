package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuthUserCollisionException;
import com.google.firebase.auth.internal.zzac;
import com.google.firebase.auth.internal.zzai;
import com.google.firebase.auth.internal.zzu;
import com.google.firebase.auth.internal.zzw;

/* loaded from: classes6.dex */
public final class zfp implements Continuation<AuthResult, Task<AuthResult>> {

    /* renamed from: a */
    public final /* synthetic */ zzai f91705a;

    public zfp(zzai zzaiVar) {
        this.f91705a = zzaiVar;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<AuthResult> then(@NonNull Task<AuthResult> task) throws Exception {
        com.google.firebase.auth.zzf zzfVar;
        com.google.firebase.auth.zzf zzfVar2;
        com.google.firebase.auth.zzf zzfVar3;
        zzfVar = this.f91705a.zzd;
        if (zzfVar == null) {
            return task;
        }
        if (task.isSuccessful()) {
            AuthResult result = task.getResult();
            zzac zzacVar = (zzac) result.getUser();
            zzu zzuVar = (zzu) result.getAdditionalUserInfo();
            zzfVar3 = this.f91705a.zzd;
            return Tasks.forResult(new zzw(zzacVar, zzuVar, zzfVar3));
        }
        Exception exception = task.getException();
        if (exception instanceof FirebaseAuthUserCollisionException) {
            zzfVar2 = this.f91705a.zzd;
            ((FirebaseAuthUserCollisionException) exception).zza(zzfVar2);
        }
        return Tasks.forException(exception);
    }
}
