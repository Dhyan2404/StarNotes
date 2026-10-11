package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public class zzadj {
    zzaci zza;
    Executor zzb;

    public final <ResultT> Task<ResultT> zza(final zzadl<ResultT> zzadlVar) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.firebase-auth-api.zzadi
            @Override // java.lang.Runnable
            public final void run() {
                zzadlVar.zza(taskCompletionSource, zzadj.this.zza);
            }
        });
        return taskCompletionSource.getTask();
    }
}
