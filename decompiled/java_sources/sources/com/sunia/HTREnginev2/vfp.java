package com.sunia.HTREnginev2;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.auth.GetTokenResult;
import com.google.firebase.auth.MultiFactorSession;
import com.google.firebase.auth.internal.zzac;
import com.google.firebase.auth.internal.zzag;
import com.google.firebase.auth.internal.zzaj;

/* loaded from: classes6.dex */
public final class vfp implements Continuation<GetTokenResult, Task<MultiFactorSession>> {

    /* renamed from: a */
    public final /* synthetic */ zzag f87460a;

    public vfp(zzag zzagVar) {
        this.f87460a = zzagVar;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<MultiFactorSession> then(Task<GetTokenResult> task) throws Exception {
        zzac zzacVar;
        if (!task.isSuccessful()) {
            return Tasks.forException(task.getException());
        }
        String token = task.getResult().getToken();
        zzacVar = this.f87460a.f35704a;
        return Tasks.forResult(zzaj.zza(token, zzacVar));
    }
}
