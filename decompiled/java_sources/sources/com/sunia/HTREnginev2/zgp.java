package com.sunia.HTREnginev2;

import android.content.Context;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.internal.zzau;

/* loaded from: classes6.dex */
public final class zgp implements OnFailureListener {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f91733a;

    /* renamed from: b */
    public final /* synthetic */ Context f91734b;

    public zgp(zzau zzauVar, TaskCompletionSource taskCompletionSource, Context context) {
        this.f91733a = taskCompletionSource;
        this.f91734b = context;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.f91733a.setException(exc);
        zzau.m27986c(this.f91734b);
    }
}
