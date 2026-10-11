package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes12.dex */
public abstract class BackgroundInitializer<T> implements ConcurrentInitializer<T> {

    /* renamed from: a */
    public ExecutorService f107487a;

    /* renamed from: b */
    public ExecutorService f107488b;

    /* renamed from: c */
    public Future<T> f107489c;

    /* renamed from: org.apache.commons.lang3.concurrent.BackgroundInitializer$a */
    /* loaded from: classes12.dex */
    public class CallableC18945a implements Callable<T> {

        /* renamed from: e */
        public final ExecutorService f107490e;

        public CallableC18945a(ExecutorService executorService) {
            this.f107490e = executorService;
        }

        @Override // java.util.concurrent.Callable
        public T call() throws Exception {
            try {
                return (T) BackgroundInitializer.this.initialize();
            } finally {
                ExecutorService executorService = this.f107490e;
                if (executorService != null) {
                    executorService.shutdown();
                }
            }
        }
    }

    public BackgroundInitializer() {
        this(null);
    }

    /* renamed from: a */
    public final ExecutorService m67288a() {
        return Executors.newFixedThreadPool(getTaskCount());
    }

    /* renamed from: b */
    public final Callable<T> m67289b(ExecutorService executorService) {
        return new CallableC18945a(executorService);
    }

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() throws ConcurrentException {
        try {
            return getFuture().get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new ConcurrentException(e);
        } catch (ExecutionException e2) {
            ConcurrentUtils.handleCause(e2);
            return null;
        }
    }

    public final synchronized ExecutorService getActiveExecutor() {
        return this.f107488b;
    }

    public final synchronized ExecutorService getExternalExecutor() {
        return this.f107487a;
    }

    public synchronized Future<T> getFuture() {
        Future<T> future;
        future = this.f107489c;
        if (future == null) {
            throw new IllegalStateException("start() must be called first!");
        }
        return future;
    }

    public int getTaskCount() {
        return 1;
    }

    public abstract T initialize() throws Exception;

    public synchronized boolean isStarted() {
        return this.f107489c != null;
    }

    public final synchronized void setExternalExecutor(ExecutorService executorService) {
        if (isStarted()) {
            throw new IllegalStateException("Cannot set ExecutorService after start()!");
        }
        this.f107487a = executorService;
    }

    public synchronized boolean start() {
        ExecutorService executorService;
        if (isStarted()) {
            return false;
        }
        ExecutorService externalExecutor = getExternalExecutor();
        this.f107488b = externalExecutor;
        if (externalExecutor == null) {
            executorService = m67288a();
            this.f107488b = executorService;
        } else {
            executorService = null;
        }
        this.f107489c = this.f107488b.submit(m67289b(executorService));
        return true;
    }

    public BackgroundInitializer(ExecutorService executorService) {
        setExternalExecutor(executorService);
    }
}
