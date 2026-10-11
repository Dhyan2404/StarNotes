package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes5.dex */
public final class zzasq {
    public static zzask zza(ExecutorService executorService) {
        if (executorService instanceof zzask) {
            return (zzask) executorService;
        }
        return executorService instanceof ScheduledExecutorService ? new zzasp((ScheduledExecutorService) executorService) : new zzasm(executorService);
    }

    public static Executor zzb() {
        return zzaqz.INSTANCE;
    }

    public static Executor zzc(Executor executor) {
        return new zzasv(executor);
    }

    public static Executor zzd(Executor executor, zzaqa zzaqaVar) {
        executor.getClass();
        return executor == zzaqz.INSTANCE ? executor : new zzasl(executor, zzaqaVar);
    }
}
