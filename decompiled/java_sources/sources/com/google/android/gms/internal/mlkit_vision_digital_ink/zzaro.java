package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes5.dex */
public abstract class zzaro extends zzaja implements Future {
    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return zzh().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException, ExecutionException {
        return zzh().get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return zzh().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return zzh().isDone();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaja
    public /* bridge */ /* synthetic */ Object zzg() {
        throw null;
    }

    public abstract Future zzh();

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return zzh().get(j, timeUnit);
    }
}
