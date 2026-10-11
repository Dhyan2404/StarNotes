package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* loaded from: classes5.dex */
public final class zzasv implements Executor {
    private static final Logger zza = Logger.getLogger(zzasv.class.getName());
    private final Executor zzb;
    private final Deque zzc = new ArrayDeque();
    private int zzf = 1;
    private long zzd = 0;
    private final zzasu zze = new zzasu(this, null);

    public zzasv(Executor executor) {
        executor.getClass();
        this.zzb = executor;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        synchronized (this.zzc) {
            int i = this.zzf;
            if (i != 4 && i != 3) {
                long j = this.zzd;
                zzass zzassVar = new zzass(this, runnable);
                this.zzc.add(zzassVar);
                this.zzf = 2;
                try {
                    this.zzb.execute(this.zze);
                    if (this.zzf != 2) {
                        return;
                    }
                    synchronized (this.zzc) {
                        if (this.zzd == j && this.zzf == 2) {
                            this.zzf = 3;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.zzc) {
                        int i2 = this.zzf;
                        boolean z = false;
                        if ((i2 == 1 || i2 == 2) && this.zzc.removeLastOccurrence(zzassVar)) {
                            z = true;
                        }
                        if (!(e instanceof RejectedExecutionException) || z) {
                            throw e;
                        }
                        return;
                    }
                }
            }
            this.zzc.add(runnable);
        }
    }

    public final String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + String.valueOf(this.zzb) + "}";
    }
}
