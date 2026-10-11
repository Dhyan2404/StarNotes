package com.sunia.HTREnginev2;

import android.content.Context;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.internal.zzau;

/* loaded from: classes6.dex */
public final class fhp implements OnSuccessListener<AuthResult> {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f70019a;

    /* renamed from: b */
    public final /* synthetic */ Context f70020b;

    public fhp(zzau zzauVar, TaskCompletionSource taskCompletionSource, Context context) {
        this.f70019a = taskCompletionSource;
        this.f70020b = context;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final /* synthetic */ void onSuccess(AuthResult authResult) {
        this.f70019a.setResult(authResult);
        zzau.m27986c(this.f70020b);
    }
}
