package com.sunia.HTREnginev2;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p124firebaseauthapi.zzagi;
import com.google.android.gms.internal.p124firebaseauthapi.zzago;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.TotpSecret;
import com.google.firebase.auth.internal.zzca;

/* loaded from: classes6.dex */
public final class orp implements Continuation<zzagi, Task<TotpSecret>> {

    /* renamed from: a */
    public final /* synthetic */ FirebaseAuth f80082a;

    public orp(FirebaseAuth firebaseAuth) {
        this.f80082a = firebaseAuth;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<TotpSecret> then(Task<zzagi> task) throws Exception {
        if (!task.isSuccessful()) {
            return Tasks.forException((Exception) Preconditions.checkNotNull(task.getException()));
        }
        zzagi result = task.getResult();
        if (result instanceof zzago) {
            zzago zzagoVar = (zzago) result;
            return Tasks.forResult(new zzca(Preconditions.checkNotEmpty(zzagoVar.zzf()), Preconditions.checkNotEmpty(zzagoVar.zze()), zzagoVar.zzc(), zzagoVar.zzb(), zzagoVar.zzd(), Preconditions.checkNotEmpty(zzagoVar.zza()), this.f80082a));
        }
        throw new IllegalArgumentException("Response should be an instance of StartTotpMfaEnrollmentResponse but was " + result.getClass().getName() + ".");
    }
}
