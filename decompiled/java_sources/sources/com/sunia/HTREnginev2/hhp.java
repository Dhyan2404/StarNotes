package com.sunia.HTREnginev2;

import android.content.Context;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.internal.zzau;

/* loaded from: classes6.dex */
public final class hhp implements OnFailureListener {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f72216a;

    /* renamed from: b */
    public final /* synthetic */ Context f72217b;

    public hhp(zzau zzauVar, TaskCompletionSource taskCompletionSource, Context context) {
        this.f72216a = taskCompletionSource;
        this.f72217b = context;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.f72216a.setException(exc);
        zzau.m27986c(this.f72217b);
    }
}
