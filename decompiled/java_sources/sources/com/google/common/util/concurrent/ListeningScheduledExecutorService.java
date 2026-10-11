package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.sunia.HTREnginev2.ipi;
import com.sunia.HTREnginev2.pnf;
import java.time.Duration;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public interface ListeningScheduledExecutorService extends ScheduledExecutorService, ListeningExecutorService {
    @Override // java.util.concurrent.ScheduledExecutorService
    ListenableScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    <V> ListenableScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    ListenableScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit);

    @Override // java.util.concurrent.ScheduledExecutorService
    ListenableScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit);

    default ListenableScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, Duration duration, Duration duration2) {
        return scheduleAtFixedRate(runnable, ipi.m54767a(duration), ipi.m54767a(duration2), TimeUnit.NANOSECONDS);
    }

    default ListenableScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, Duration duration, Duration duration2) {
        return scheduleWithFixedDelay(runnable, ipi.m54767a(duration), ipi.m54767a(duration2), TimeUnit.NANOSECONDS);
    }

    default ListenableScheduledFuture<?> schedule(Runnable runnable, Duration duration) {
        return schedule(runnable, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    default <V> ListenableScheduledFuture<V> schedule(Callable<V> callable, Duration duration) {
        return schedule((Callable) callable, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }
}
