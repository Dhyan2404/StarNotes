package com.sunia.HTREnginev2;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.ActionCodeSettings;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.GetTokenResult;

/* loaded from: classes6.dex */
public final class yfp implements Continuation<GetTokenResult, Task<Void>> {

    /* renamed from: a */
    public final /* synthetic */ ActionCodeSettings f90674a;

    /* renamed from: b */
    public final /* synthetic */ FirebaseUser f90675b;

    public yfp(FirebaseUser firebaseUser, ActionCodeSettings actionCodeSettings) {
        this.f90674a = actionCodeSettings;
        this.f90675b = firebaseUser;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<Void> then(Task<GetTokenResult> task) throws Exception {
        return FirebaseAuth.getInstance(this.f90675b.zza()).zza(this.f90674a, (String) Preconditions.checkNotNull(task.getResult().getToken()));
    }
}
