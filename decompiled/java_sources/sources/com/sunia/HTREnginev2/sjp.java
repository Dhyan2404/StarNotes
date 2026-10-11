package com.sunia.HTREnginev2;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes6.dex */
public final class sjp implements OnSuccessListener<String> {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f84224a;

    public sjp(com.google.firebase.auth.internal.zza zzaVar, TaskCompletionSource taskCompletionSource) {
        this.f84224a = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final /* synthetic */ void onSuccess(String str) {
        this.f84224a.setResult(new xmp().zzb(str).zza());
    }
}
