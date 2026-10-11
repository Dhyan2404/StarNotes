package com.sunia.HTREnginev2;

import android.os.Handler;
import android.os.Process;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public class xkl {

    /* renamed from: com.sunia.HTREnginev2.xkl$a */
    /* loaded from: classes3.dex */
    public static class ThreadFactoryC14658a implements ThreadFactory {

        /* renamed from: e */
        public String f89801e;

        /* renamed from: f */
        public int f89802f;

        /* renamed from: com.sunia.HTREnginev2.xkl$a$a */
        /* loaded from: classes3.dex */
        public static class a extends Thread {

            /* renamed from: e */
            public final int f89803e;

            public a(Runnable runnable, String str, int i) {
                super(runnable, str);
                this.f89803e = i;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(this.f89803e);
                super.run();
            }
        }

        public ThreadFactoryC14658a(@NonNull String str, int i) {
            this.f89801e = str;
            this.f89802f = i;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new a(runnable, this.f89801e, this.f89802f);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.xkl$b */
    /* loaded from: classes3.dex */
    public static class ExecutorC14659b implements Executor {

        /* renamed from: e */
        public final Handler f89804e;

        public ExecutorC14659b(@NonNull Handler handler) {
            this.f89804e = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            if (this.f89804e.post((Runnable) Preconditions.checkNotNull(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.f89804e + " is shutting down");
        }
    }

    /* renamed from: com.sunia.HTREnginev2.xkl$c */
    /* loaded from: classes3.dex */
    public static class RunnableC14660c<T> implements Runnable {

        /* renamed from: e */
        @NonNull
        public Callable<T> f89805e;

        /* renamed from: f */
        @NonNull
        public Consumer<T> f89806f;

        /* renamed from: g */
        @NonNull
        public Handler f89807g;

        /* renamed from: com.sunia.HTREnginev2.xkl$c$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ Consumer f89808e;

            /* renamed from: f */
            public final /* synthetic */ Object f89809f;

            public a(Consumer consumer, Object obj) {
                this.f89808e = consumer;
                this.f89809f = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                this.f89808e.accept(this.f89809f);
            }
        }

        public RunnableC14660c(@NonNull Handler handler, @NonNull Callable<T> callable, @NonNull Consumer<T> consumer) {
            this.f89805e = callable;
            this.f89806f = consumer;
            this.f89807g = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            T t;
            try {
                t = this.f89805e.call();
            } catch (Exception unused) {
                t = null;
            }
            this.f89807g.post(new a(this.f89806f, t));
        }
    }

    /* renamed from: a */
    public static ThreadPoolExecutor m58280a(@NonNull String str, int i, @IntRange(from = 0) int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i2, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new ThreadFactoryC14658a(str, i));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* renamed from: b */
    public static Executor m58281b(@NonNull Handler handler) {
        return new ExecutorC14659b(handler);
    }

    /* renamed from: c */
    public static <T> void m58282c(@NonNull Executor executor, @NonNull Callable<T> callable, @NonNull Consumer<T> consumer) {
        executor.execute(new RunnableC14660c(zmd.m58730a(), callable, consumer));
    }

    /* renamed from: d */
    public static <T> T m58283d(@NonNull ExecutorService executorService, @NonNull Callable<T> callable, @IntRange(from = 0) int i) throws InterruptedException {
        try {
            return executorService.submit(callable).get(i, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw e;
        } catch (ExecutionException e2) {
            throw new RuntimeException(e2);
        } catch (TimeoutException unused) {
            throw new InterruptedException("timeout");
        }
    }
}
