package com.sunia.HTREnginev2;

import com.sunia.HTREnginev2.f3f;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes6.dex */
public class e3f implements ScheduledExecutorService {

    /* renamed from: e */
    public final ExecutorService f68537e;

    /* renamed from: f */
    public final ScheduledExecutorService f68538f;

    public e3f(ExecutorService executorService, ScheduledExecutorService scheduledExecutorService) {
        this.f68537e = executorService;
        this.f68538f = scheduledExecutorService;
    }

    /* renamed from: n */
    public static /* synthetic */ void m53922n(Runnable runnable, f3f.InterfaceC13704b interfaceC13704b) {
        try {
            runnable.run();
            interfaceC13704b.set(null);
        } catch (Exception e) {
            interfaceC13704b.mo54068a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m53923o(final Runnable runnable, final f3f.InterfaceC13704b interfaceC13704b) {
        this.f68537e.execute(new Runnable() { // from class: com.sunia.HTREnginev2.d3f
            @Override // java.lang.Runnable
            public final void run() {
                e3f.m53922n(runnable, interfaceC13704b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ ScheduledFuture m53924p(final Runnable runnable, long j, TimeUnit timeUnit, final f3f.InterfaceC13704b interfaceC13704b) {
        return this.f68538f.schedule(new Runnable() { // from class: com.sunia.HTREnginev2.c3f
            @Override // java.lang.Runnable
            public final void run() {
                e3f.this.m53923o(runnable, interfaceC13704b);
            }
        }, j, timeUnit);
    }

    /* renamed from: q */
    public static /* synthetic */ void m53925q(Callable callable, f3f.InterfaceC13704b interfaceC13704b) {
        try {
            interfaceC13704b.set(callable.call());
        } catch (Exception e) {
            interfaceC13704b.mo54068a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ Future m53926r(final Callable callable, final f3f.InterfaceC13704b interfaceC13704b) throws Exception {
        return this.f68537e.submit(new Runnable() { // from class: com.sunia.HTREnginev2.v2f
            @Override // java.lang.Runnable
            public final void run() {
                e3f.m53925q(callable, interfaceC13704b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public /* synthetic */ ScheduledFuture m53927s(final Callable callable, long j, TimeUnit timeUnit, final f3f.InterfaceC13704b interfaceC13704b) {
        return this.f68538f.schedule(new Callable() { // from class: com.sunia.HTREnginev2.u2f
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Future m53926r;
                m53926r = e3f.this.m53926r(callable, interfaceC13704b);
                return m53926r;
            }
        }, j, timeUnit);
    }

    /* renamed from: t */
    public static /* synthetic */ void m53928t(Runnable runnable, f3f.InterfaceC13704b interfaceC13704b) {
        try {
            runnable.run();
        } catch (Exception e) {
            interfaceC13704b.mo54068a(e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public /* synthetic */ void m53929u(final Runnable runnable, final f3f.InterfaceC13704b interfaceC13704b) {
        this.f68537e.execute(new Runnable() { // from class: com.sunia.HTREnginev2.w2f
            @Override // java.lang.Runnable
            public final void run() {
                e3f.m53928t(runnable, interfaceC13704b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ ScheduledFuture m53930v(final Runnable runnable, long j, long j2, TimeUnit timeUnit, final f3f.InterfaceC13704b interfaceC13704b) {
        return this.f68538f.scheduleAtFixedRate(new Runnable() { // from class: com.sunia.HTREnginev2.x2f
            @Override // java.lang.Runnable
            public final void run() {
                e3f.this.m53929u(runnable, interfaceC13704b);
            }
        }, j, j2, timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public /* synthetic */ void m53931w(final Runnable runnable, final f3f.InterfaceC13704b interfaceC13704b) {
        this.f68537e.execute(new Runnable() { // from class: com.sunia.HTREnginev2.t2f
            @Override // java.lang.Runnable
            public final void run() {
                e3f.m53933y(runnable, interfaceC13704b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public /* synthetic */ ScheduledFuture m53932x(final Runnable runnable, long j, long j2, TimeUnit timeUnit, final f3f.InterfaceC13704b interfaceC13704b) {
        return this.f68538f.scheduleWithFixedDelay(new Runnable() { // from class: com.sunia.HTREnginev2.a3f
            @Override // java.lang.Runnable
            public final void run() {
                e3f.this.m53931w(runnable, interfaceC13704b);
            }
        }, j, j2, timeUnit);
    }

    /* renamed from: y */
    public static /* synthetic */ void m53933y(Runnable runnable, f3f.InterfaceC13704b interfaceC13704b) {
        try {
            runnable.run();
        } catch (Exception e) {
            interfaceC13704b.mo54068a(e);
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f68537e.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f68537e.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f68537e.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        return (T) this.f68537e.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f68537e.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f68537e.isTerminated();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> schedule(final Runnable runnable, final long j, final TimeUnit timeUnit) {
        return new f3f(new f3f.InterfaceC13705c() { // from class: com.sunia.HTREnginev2.y2f
            @Override // com.sunia.HTREnginev2.f3f.InterfaceC13705c
            /* renamed from: a */
            public final ScheduledFuture mo53161a(f3f.InterfaceC13704b interfaceC13704b) {
                ScheduledFuture m53924p;
                m53924p = e3f.this.m53924p(runnable, j, timeUnit, interfaceC13704b);
                return m53924p;
            }
        });
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleAtFixedRate(final Runnable runnable, final long j, final long j2, final TimeUnit timeUnit) {
        return new f3f(new f3f.InterfaceC13705c() { // from class: com.sunia.HTREnginev2.b3f
            @Override // com.sunia.HTREnginev2.f3f.InterfaceC13705c
            /* renamed from: a */
            public final ScheduledFuture mo53161a(f3f.InterfaceC13704b interfaceC13704b) {
                ScheduledFuture m53930v;
                m53930v = e3f.this.m53930v(runnable, j, j2, timeUnit, interfaceC13704b);
                return m53930v;
            }
        });
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleWithFixedDelay(final Runnable runnable, final long j, final long j2, final TimeUnit timeUnit) {
        return new f3f(new f3f.InterfaceC13705c() { // from class: com.sunia.HTREnginev2.z2f
            @Override // com.sunia.HTREnginev2.f3f.InterfaceC13705c
            /* renamed from: a */
            public final ScheduledFuture mo53161a(f3f.InterfaceC13704b interfaceC13704b) {
                ScheduledFuture m53932x;
                m53932x = e3f.this.m53932x(runnable, j, j2, timeUnit, interfaceC13704b);
                return m53932x;
            }
        });
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return this.f68537e.submit(callable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f68537e.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (T) this.f68537e.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public <V> ScheduledFuture<V> schedule(final Callable<V> callable, final long j, final TimeUnit timeUnit) {
        return new f3f(new f3f.InterfaceC13705c() { // from class: com.sunia.HTREnginev2.s2f
            @Override // com.sunia.HTREnginev2.f3f.InterfaceC13705c
            /* renamed from: a */
            public final ScheduledFuture mo53161a(f3f.InterfaceC13704b interfaceC13704b) {
                ScheduledFuture m53927s;
                m53927s = e3f.this.m53927s(callable, j, timeUnit, interfaceC13704b);
                return m53927s;
            }
        });
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t) {
        return this.f68537e.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        return this.f68537e.submit(runnable);
    }
}
