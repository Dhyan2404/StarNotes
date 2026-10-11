package com.sunia.HTREnginev2;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.ActionCodeSettings;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.GetTokenResult;

/* loaded from: classes6.dex */
public final class egp implements Continuation<GetTokenResult, Task<Void>> {

    /* renamed from: a */
    public final /* synthetic */ String f68922a;

    /* renamed from: b */
    public final /* synthetic */ ActionCodeSettings f68923b;

    /* renamed from: c */
    public final /* synthetic */ FirebaseUser f68924c;

    public egp(FirebaseUser firebaseUser, String str, ActionCodeSettings actionCodeSettings) {
        this.f68922a = str;
        this.f68923b = actionCodeSettings;
        this.f68924c = firebaseUser;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<Void> then(Task<GetTokenResult> task) throws Exception {
        return FirebaseAuth.getInstance(this.f68924c.zza()).zza((String) Preconditions.checkNotNull(task.getResult().getToken()), this.f68922a, this.f68923b);
    }
}
