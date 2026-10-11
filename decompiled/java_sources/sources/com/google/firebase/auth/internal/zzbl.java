package com.google.firebase.auth.internal;

import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p124firebaseauthapi.zzach;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.firebase.auth.FirebaseAuth;
import com.sunia.HTREnginev2.iip;

/* loaded from: classes6.dex */
public abstract class zzbl<T> {
    /* renamed from: a */
    public static /* synthetic */ Task m27993a(RecaptchaAction recaptchaAction, FirebaseAuth firebaseAuth, String str, Continuation continuation, Task task) throws Exception {
        if (task.isSuccessful()) {
            return Tasks.forResult(task.getResult());
        }
        Exception exc = (Exception) Preconditions.checkNotNull(task.getException());
        if (zzach.zzc(exc)) {
            if (Log.isLoggable("RecaptchaCallWrapper", 4)) {
                Log.i("RecaptchaCallWrapper", "Falling back to recaptcha enterprise flow for action " + String.valueOf(recaptchaAction));
            }
            if (firebaseAuth.zzb() == null) {
                firebaseAuth.zza(new zzbu(firebaseAuth.getApp(), firebaseAuth));
            }
            return m27994b(firebaseAuth.zzb(), recaptchaAction, str, continuation);
        }
        Log.e("RecaptchaCallWrapper", "Initial task failed for action " + String.valueOf(recaptchaAction) + "with exception - " + exc.getMessage());
        return Tasks.forException(exc);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static <T> Task<T> m27994b(zzbu zzbuVar, RecaptchaAction recaptchaAction, @Nullable String str, Continuation<String, Task<T>> continuation) {
        Task<String> zza = zzbuVar.zza(str, Boolean.FALSE, recaptchaAction);
        return zza.continueWithTask(continuation).continueWithTask(new iip(str, zzbuVar, recaptchaAction, continuation));
    }

    public final Task<T> zza(final FirebaseAuth firebaseAuth, @Nullable final String str, final RecaptchaAction recaptchaAction, String str2) {
        final Continuation continuation = new Continuation() { // from class: com.google.firebase.auth.internal.zzbn
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                zzbl zzblVar = zzbl.this;
                if (task.isSuccessful()) {
                    return zzblVar.zza((String) task.getResult());
                }
                Log.e("RecaptchaCallWrapper", "Failed to get Recaptcha token, error - " + ((Exception) Preconditions.checkNotNull(task.getException())).getMessage() + "\n\n Failing open with a fake token.");
                return zzblVar.zza("NO_RECAPTCHA");
            }
        };
        zzbu zzb = firebaseAuth.zzb();
        if (zzb != null && zzb.zza(str2)) {
            return m27994b(zzb, recaptchaAction, str, continuation);
        }
        return (Task<T>) zza(null).continueWithTask(new Continuation() { // from class: com.google.firebase.auth.internal.zzbo
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return zzbl.m27993a(RecaptchaAction.this, firebaseAuth, str, continuation, task);
            }
        });
    }

    public abstract Task<T> zza(@Nullable String str);
}
