package com.sunia.HTREnginev2;

import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p124firebaseauthapi.zzach;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.firebase.auth.internal.zzbu;

/* loaded from: classes6.dex */
public final class iip implements Continuation<Object, Task<Object>> {

    /* renamed from: a */
    public final /* synthetic */ String f73281a;

    /* renamed from: b */
    public final /* synthetic */ zzbu f73282b;

    /* renamed from: c */
    public final /* synthetic */ RecaptchaAction f73283c;

    /* renamed from: d */
    public final /* synthetic */ Continuation f73284d;

    public iip(String str, zzbu zzbuVar, RecaptchaAction recaptchaAction, Continuation continuation) {
        this.f73281a = str;
        this.f73282b = zzbuVar;
        this.f73283c = recaptchaAction;
        this.f73284d = continuation;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<Object> then(Task<Object> task) throws Exception {
        if (task.isSuccessful() || !zzach.zzb((Exception) Preconditions.checkNotNull(task.getException()))) {
            return task;
        }
        if (Log.isLoggable("RecaptchaCallWrapper", 4)) {
            Log.i("RecaptchaCallWrapper", "Invalid token - Refreshing Recaptcha Enterprise config and fetching new token for tenant " + this.f73281a);
        }
        return this.f73282b.zza(this.f73281a, Boolean.TRUE, this.f73283c).continueWithTask(this.f73284d);
    }
}
