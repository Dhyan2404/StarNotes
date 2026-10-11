package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.common.collect.ImmutableList;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@CanIgnoreReturnValue
@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public abstract class abo implements ExecutorService {

    /* renamed from: e */
    public final ExecutorService f64531e;

    public abo(ExecutorService executorService) {
        this.f64531e = (ExecutorService) Preconditions.checkNotNull(executorService);
    }

    /* renamed from: b */
    public static /* synthetic */ void m52990b(Callable callable) {
        try {
            callable.call();
        } catch (Exception e) {
            Throwables.throwIfUnchecked(e);
            throw new RuntimeException(e);
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f64531e.awaitTermination(j, timeUnit);
    }

    /* renamed from: c */
    public Runnable mo27758c(Runnable runnable) {
        final Callable mo27759d = mo27759d(Executors.callable(runnable, null));
        return new Runnable() { // from class: com.sunia.HTREnginev2.zao
            @Override // java.lang.Runnable
            public final void run() {
                abo.m52990b(mo27759d);
            }
        };
    }

    /* renamed from: d */
    public abstract <T> Callable<T> mo27759d(Callable<T> callable);

    /* renamed from: e */
    public final <T> ImmutableList<Callable<T>> m52991e(Collection<? extends Callable<T>> collection) {
        ImmutableList.Builder builder = ImmutableList.builder();
        Iterator<? extends Callable<T>> it2 = collection.iterator();
        while (it2.hasNext()) {
            builder.add((ImmutableList.Builder) mo27759d(it2.next()));
        }
        return builder.build();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f64531e.execute(mo27758c(runnable));
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f64531e.invokeAll(m52991e(collection));
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f64531e.invokeAny(m52991e(collection));
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f64531e.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f64531e.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.f64531e.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        return this.f64531e.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Callable<T> callable) {
        return this.f64531e.submit(mo27759d((Callable) Preconditions.checkNotNull(callable)));
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f64531e.invokeAll(m52991e(collection), j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f64531e.invokeAny(m52991e(collection), j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future<?> submit(Runnable runnable) {
        return this.f64531e.submit(mo27758c(runnable));
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Runnable runnable, @uvk T t) {
        return this.f64531e.submit(mo27758c(runnable), t);
    }
}
