package com.sunia.HTREnginev2;

import android.content.Context;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.internal.zzau;

/* loaded from: classes6.dex */
public final class dhp implements OnFailureListener {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f67883a;

    /* renamed from: b */
    public final /* synthetic */ Context f67884b;

    public dhp(zzau zzauVar, TaskCompletionSource taskCompletionSource, Context context) {
        this.f67883a = taskCompletionSource;
        this.f67884b = context;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.f67883a.setException(exc);
        zzau.m27986c(this.f67884b);
    }
}
