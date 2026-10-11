package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@CanIgnoreReturnValue
@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public abstract class bbo extends abo implements ScheduledExecutorService {

    /* renamed from: f */
    public final ScheduledExecutorService f65610f;

    public bbo(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f65610f = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        return this.f65610f.schedule(mo27758c(runnable), j, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return this.f65610f.scheduleAtFixedRate(mo27758c(runnable), j, j2, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return this.f65610f.scheduleWithFixedDelay(mo27758c(runnable), j, j2, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final <V> ScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
        return this.f65610f.schedule(mo27759d(callable), j, timeUnit);
    }
}
