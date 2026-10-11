package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes5.dex */
final class zzarn extends zzarm {
    private final zzasi zza;

    public zzarn(zzasi zzasiVar) {
        zzasiVar.getClass();
        this.zza = zzasiVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.zza.cancel(z);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa, java.util.concurrent.Future
    public final Object get() throws InterruptedException, ExecutionException {
        return this.zza.get();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.zza.isCancelled();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa, java.util.concurrent.Future
    public final boolean isDone() {
        return this.zza.isDone();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    public final String toString() {
        return this.zza.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa, com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi
    public final void zzp(Runnable runnable, Executor executor) {
        this.zza.zzp(runnable, executor);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa, java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.zza.get(j, timeUnit);
    }
}
