package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p124firebaseauthapi.zzaak;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.GetTokenResult;

/* loaded from: classes6.dex */
public final class zrp implements Continuation<GetTokenResult, Task<Void>> {

    /* renamed from: a */
    public final /* synthetic */ String f92145a;

    /* renamed from: b */
    public final /* synthetic */ FirebaseAuth f92146b;

    public zrp(FirebaseAuth firebaseAuth, String str) {
        this.f92145a = str;
        this.f92146b = firebaseAuth;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<Void> then(@NonNull Task<GetTokenResult> task) throws Exception {
        zzaak zzaakVar;
        String str;
        if (!task.isSuccessful()) {
            return Tasks.forException((Exception) Preconditions.checkNotNull(task.getException()));
        }
        zzaakVar = this.f92146b.f35601e;
        String str2 = this.f92145a;
        String str3 = (String) Preconditions.checkNotNull(task.getResult().getToken());
        str = this.f92146b.f35607k;
        return zzaakVar.zza(str2, str3, "apple.com", str);
    }
}
