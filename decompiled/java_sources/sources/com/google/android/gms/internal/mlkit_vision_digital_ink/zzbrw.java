package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final class zzbrw {
    public static Task zza(final zzasi zzasiVar) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zzasiVar.zzp(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbrv
            @Override // java.lang.Runnable
            public final void run() {
                TaskCompletionSource taskCompletionSource2 = TaskCompletionSource.this;
                try {
                    taskCompletionSource2.setResult(zzasiVar.get());
                } catch (Throwable th) {
                    taskCompletionSource2.setException(new Exception(th));
                }
            }
        }, zzasq.zzb());
        return taskCompletionSource.getTask();
    }
}
