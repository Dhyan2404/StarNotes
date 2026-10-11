package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.ipi;
import com.sunia.HTREnginev2.pnf;
import java.time.Duration;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Beta
@GwtIncompatible
@DoNotMock("Use FakeTimeLimiter")
@pnf
/* loaded from: classes6.dex */
public interface TimeLimiter {
    @CanIgnoreReturnValue
    <T> T callUninterruptiblyWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws TimeoutException, ExecutionException;

    @CanIgnoreReturnValue
    default <T> T callUninterruptiblyWithTimeout(Callable<T> callable, Duration duration) throws TimeoutException, ExecutionException {
        return (T) callUninterruptiblyWithTimeout(callable, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    @CanIgnoreReturnValue
    <T> T callWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws TimeoutException, InterruptedException, ExecutionException;

    @CanIgnoreReturnValue
    default <T> T callWithTimeout(Callable<T> callable, Duration duration) throws TimeoutException, InterruptedException, ExecutionException {
        return (T) callWithTimeout(callable, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    <T> T newProxy(T t, Class<T> cls, long j, TimeUnit timeUnit);

    default <T> T newProxy(T t, Class<T> cls, Duration duration) {
        return (T) newProxy(t, cls, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    void runUninterruptiblyWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) throws TimeoutException;

    default void runUninterruptiblyWithTimeout(Runnable runnable, Duration duration) throws TimeoutException {
        runUninterruptiblyWithTimeout(runnable, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    void runWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) throws TimeoutException, InterruptedException;

    default void runWithTimeout(Runnable runnable, Duration duration) throws TimeoutException, InterruptedException {
        runWithTimeout(runnable, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }
}
