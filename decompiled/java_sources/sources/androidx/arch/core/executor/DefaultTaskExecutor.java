package androidx.arch.core.executor;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class DefaultTaskExecutor extends TaskExecutor {

    /* renamed from: a */
    public final Object f2136a = new Object();

    /* renamed from: b */
    public final ExecutorService f2137b = Executors.newFixedThreadPool(4, new ThreadFactoryC0307a());

    /* renamed from: c */
    @Nullable
    public volatile Handler f2138c;

    /* renamed from: androidx.arch.core.executor.DefaultTaskExecutor$a */
    /* loaded from: classes3.dex */
    public class ThreadFactoryC0307a implements ThreadFactory {

        /* renamed from: g */
        public static final String f2139g = "arch_disk_io_";

        /* renamed from: e */
        public final AtomicInteger f2140e = new AtomicInteger(0);

        public ThreadFactoryC0307a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(f2139g + this.f2140e.getAndIncrement());
            return thread;
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.arch.core.executor.DefaultTaskExecutor$b */
    /* loaded from: classes3.dex */
    public static class C0308b {
        @NonNull
        /* renamed from: a */
        public static Handler m984a(@NonNull Looper looper) {
            return Handler.createAsync(looper);
        }
    }

    @NonNull
    /* renamed from: a */
    public static Handler m983a(@NonNull Looper looper) {
        return C0308b.m984a(looper);
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void executeOnDiskIO(@NonNull Runnable runnable) {
        this.f2137b.execute(runnable);
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void postToMainThread(@NonNull Runnable runnable) {
        if (this.f2138c == null) {
            synchronized (this.f2136a) {
                if (this.f2138c == null) {
                    this.f2138c = m983a(Looper.getMainLooper());
                }
            }
        }
        this.f2138c.post(runnable);
    }
}
