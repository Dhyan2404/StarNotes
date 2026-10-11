package com.sunia.HTREnginev2;

import android.content.Context;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.internal.zzau;

/* loaded from: classes6.dex */
public final class thp implements OnSuccessListener<AuthResult> {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f85323a;

    /* renamed from: b */
    public final /* synthetic */ Context f85324b;

    public thp(zzau zzauVar, TaskCompletionSource taskCompletionSource, Context context) {
        this.f85323a = taskCompletionSource;
        this.f85324b = context;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final /* synthetic */ void onSuccess(AuthResult authResult) {
        this.f85323a.setResult(authResult);
        zzau.m27986c(this.f85324b);
    }
}
