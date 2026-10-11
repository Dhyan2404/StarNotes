package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.sunia.HTREnginev2.ojk;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes5.dex */
public final class zzasj extends FutureTask implements zzasi {
    private final zzarb zza;

    public zzasj(Callable callable) {
        super(callable);
        this.zza = new zzarb();
    }

    public static zzasj zza(Callable callable) {
        return new zzasj(callable);
    }

    @Override // java.util.concurrent.FutureTask
    public final void done() {
        this.zza.zzb();
    }

    @Override // java.util.concurrent.FutureTask, java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws TimeoutException, InterruptedException, ExecutionException {
        long nanos = timeUnit.toNanos(j);
        return nanos <= ojk.f79805a ? super.get(j, timeUnit) : super.get(Math.min(nanos, ojk.f79805a), TimeUnit.NANOSECONDS);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi
    public final void zzp(Runnable runnable, Executor executor) {
        this.zza.zza(runnable, executor);
    }
}
