package com.sunia.HTREnginev2;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.ActionCodeSettings;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.GetTokenResult;

/* loaded from: classes6.dex */
public final class cgp implements Continuation<GetTokenResult, Task<Void>> {

    /* renamed from: a */
    public final /* synthetic */ FirebaseUser f66817a;

    public cgp(FirebaseUser firebaseUser) {
        this.f66817a = firebaseUser;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<Void> then(Task<GetTokenResult> task) throws Exception {
        return FirebaseAuth.getInstance(this.f66817a.zza()).zza((ActionCodeSettings) null, (String) Preconditions.checkNotNull(task.getResult().getToken()));
    }
}
