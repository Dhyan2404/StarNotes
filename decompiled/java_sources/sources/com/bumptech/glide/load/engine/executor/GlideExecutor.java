package com.bumptech.glide.load.engine.executor;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.sunia.HTREnginev2.ivl;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class GlideExecutor implements ExecutorService {

    /* renamed from: f */
    public static final String f14790f = "source";

    /* renamed from: g */
    public static final String f14791g = "disk-cache";

    /* renamed from: h */
    public static final int f14792h = 1;

    /* renamed from: i */
    public static final String f14793i = "GlideExecutor";

    /* renamed from: j */
    public static final String f14794j = "source-unlimited";

    /* renamed from: k */
    public static final String f14795k = "animation";

    /* renamed from: l */
    public static final long f14796l = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: m */
    public static final int f14797m = 4;

    /* renamed from: n */
    public static volatile int f14798n;

    /* renamed from: e */
    public final ExecutorService f14799e;

    /* loaded from: classes3.dex */
    public static final class Builder {
        public static final long NO_THREAD_TIMEOUT = 0;

        /* renamed from: a */
        public final boolean f14800a;

        /* renamed from: b */
        public int f14801b;

        /* renamed from: c */
        public int f14802c;

        /* renamed from: d */
        @NonNull
        public UncaughtThrowableStrategy f14803d = UncaughtThrowableStrategy.DEFAULT;

        /* renamed from: e */
        public String f14804e;

        /* renamed from: f */
        public long f14805f;

        public Builder(boolean z) {
            this.f14800a = z;
        }

        public GlideExecutor build() {
            if (TextUtils.isEmpty(this.f14804e)) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.f14804e);
            }
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(this.f14801b, this.f14802c, this.f14805f, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ThreadFactoryC1962a(this.f14804e, this.f14803d, this.f14800a));
            if (this.f14805f != 0) {
                threadPoolExecutor.allowCoreThreadTimeOut(true);
            }
            return new GlideExecutor(threadPoolExecutor);
        }

        public Builder setName(String str) {
            this.f14804e = str;
            return this;
        }

        public Builder setThreadCount(@IntRange(from = 1) int i) {
            this.f14801b = i;
            this.f14802c = i;
            return this;
        }

        public Builder setThreadTimeoutMillis(long j) {
            this.f14805f = j;
            return this;
        }

        public Builder setUncaughtThrowableStrategy(@NonNull UncaughtThrowableStrategy uncaughtThrowableStrategy) {
            this.f14803d = uncaughtThrowableStrategy;
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public interface UncaughtThrowableStrategy {
        public static final UncaughtThrowableStrategy DEFAULT;
        public static final UncaughtThrowableStrategy IGNORE = new C1959a();
        public static final UncaughtThrowableStrategy LOG;
        public static final UncaughtThrowableStrategy THROW;

        /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$UncaughtThrowableStrategy$a */
        /* loaded from: classes3.dex */
        public class C1959a implements UncaughtThrowableStrategy {
            @Override // com.bumptech.glide.load.engine.executor.GlideExecutor.UncaughtThrowableStrategy
            public void handle(Throwable th) {
            }
        }

        /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$UncaughtThrowableStrategy$b */
        /* loaded from: classes3.dex */
        public class C1960b implements UncaughtThrowableStrategy {
            @Override // com.bumptech.glide.load.engine.executor.GlideExecutor.UncaughtThrowableStrategy
            public void handle(Throwable th) {
                if (th == null || !Log.isLoggable(GlideExecutor.f14793i, 6)) {
                    return;
                }
                Log.e(GlideExecutor.f14793i, "Request threw uncaught throwable", th);
            }
        }

        /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$UncaughtThrowableStrategy$c */
        /* loaded from: classes3.dex */
        public class C1961c implements UncaughtThrowableStrategy {
            @Override // com.bumptech.glide.load.engine.executor.GlideExecutor.UncaughtThrowableStrategy
            public void handle(Throwable th) {
                if (th != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            }
        }

        static {
            C1960b c1960b = new C1960b();
            LOG = c1960b;
            THROW = new C1961c();
            DEFAULT = c1960b;
        }

        void handle(Throwable th);
    }

    /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$a */
    /* loaded from: classes3.dex */
    public static final class ThreadFactoryC1962a implements ThreadFactory {

        /* renamed from: i */
        public static final int f14806i = 9;

        /* renamed from: e */
        public final String f14807e;

        /* renamed from: f */
        public final UncaughtThrowableStrategy f14808f;

        /* renamed from: g */
        public final boolean f14809g;

        /* renamed from: h */
        public int f14810h;

        /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$a$a */
        /* loaded from: classes3.dex */
        public class a extends Thread {
            public a(Runnable runnable, String str) {
                super(runnable, str);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(9);
                if (ThreadFactoryC1962a.this.f14809g) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    super.run();
                } catch (Throwable th) {
                    ThreadFactoryC1962a.this.f14808f.handle(th);
                }
            }
        }

        public ThreadFactoryC1962a(String str, UncaughtThrowableStrategy uncaughtThrowableStrategy, boolean z) {
            this.f14807e = str;
            this.f14808f = uncaughtThrowableStrategy;
            this.f14809g = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(@NonNull Runnable runnable) {
            a aVar;
            aVar = new a(runnable, "glide-" + this.f14807e + "-thread-" + this.f14810h);
            this.f14810h = this.f14810h + 1;
            return aVar;
        }
    }

    @VisibleForTesting
    public GlideExecutor(ExecutorService executorService) {
        this.f14799e = executorService;
    }

    public static int calculateBestThreadCount() {
        if (f14798n == 0) {
            f14798n = Math.min(4, ivl.m54802a());
        }
        return f14798n;
    }

    public static Builder newAnimationBuilder() {
        return new Builder(true).setThreadCount(calculateBestThreadCount() >= 4 ? 2 : 1).setName(f14795k);
    }

    public static GlideExecutor newAnimationExecutor() {
        return newAnimationBuilder().build();
    }

    public static Builder newDiskCacheBuilder() {
        return new Builder(true).setThreadCount(1).setName(f14791g);
    }

    public static GlideExecutor newDiskCacheExecutor() {
        return newDiskCacheBuilder().build();
    }

    public static Builder newSourceBuilder() {
        return new Builder(false).setThreadCount(calculateBestThreadCount()).setName("source");
    }

    public static GlideExecutor newSourceExecutor() {
        return newSourceBuilder().build();
    }

    public static GlideExecutor newUnlimitedSourceExecutor() {
        return new GlideExecutor(new ThreadPoolExecutor(0, Integer.MAX_VALUE, f14796l, TimeUnit.MILLISECONDS, new SynchronousQueue(), new ThreadFactoryC1962a(f14794j, UncaughtThrowableStrategy.DEFAULT, false)));
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f14799e.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.f14799e.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f14799e.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f14799e.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f14799e.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f14799e.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f14799e.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public List<Runnable> shutdownNow() {
        return this.f14799e.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public Future<?> submit(@NonNull Runnable runnable) {
        return this.f14799e.submit(runnable);
    }

    public String toString() {
        return this.f14799e.toString();
    }

    @Deprecated
    public static GlideExecutor newAnimationExecutor(int i, UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        return newAnimationBuilder().setThreadCount(i).setUncaughtThrowableStrategy(uncaughtThrowableStrategy).build();
    }

    @Deprecated
    public static GlideExecutor newDiskCacheExecutor(UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        return newDiskCacheBuilder().setUncaughtThrowableStrategy(uncaughtThrowableStrategy).build();
    }

    @Deprecated
    public static GlideExecutor newSourceExecutor(UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        return newSourceBuilder().setUncaughtThrowableStrategy(uncaughtThrowableStrategy).build();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection, long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f14799e.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection, long j, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f14799e.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> Future<T> submit(@NonNull Runnable runnable, T t) {
        return this.f14799e.submit(runnable, t);
    }

    @Deprecated
    public static GlideExecutor newDiskCacheExecutor(int i, String str, UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        return newDiskCacheBuilder().setThreadCount(i).setName(str).setUncaughtThrowableStrategy(uncaughtThrowableStrategy).build();
    }

    @Deprecated
    public static GlideExecutor newSourceExecutor(int i, String str, UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        return newSourceBuilder().setThreadCount(i).setName(str).setUncaughtThrowableStrategy(uncaughtThrowableStrategy).build();
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(@NonNull Callable<T> callable) {
        return this.f14799e.submit(callable);
    }
}
