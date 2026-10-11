package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class Executors {

    /* renamed from: a */
    public static final Executor f15481a = new ExecutorC2038a();

    /* renamed from: b */
    public static final Executor f15482b = new ExecutorC2039b();

    /* renamed from: com.bumptech.glide.util.Executors$a */
    /* loaded from: classes3.dex */
    public class ExecutorC2038a implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            Util.postOnUiThread(runnable);
        }
    }

    /* renamed from: com.bumptech.glide.util.Executors$b */
    /* loaded from: classes3.dex */
    public class ExecutorC2039b implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            runnable.run();
        }
    }

    public static Executor directExecutor() {
        return f15482b;
    }

    public static Executor mainThreadExecutor() {
        return f15481a;
    }

    @VisibleForTesting
    public static void shutdownAndAwaitTermination(ExecutorService executorService) {
        executorService.shutdownNow();
        try {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            if (executorService.awaitTermination(5L, timeUnit)) {
                return;
            }
            executorService.shutdownNow();
            if (executorService.awaitTermination(5L, timeUnit)) {
            } else {
                throw new RuntimeException("Failed to shutdown");
            }
        } catch (InterruptedException e) {
            executorService.shutdownNow();
            Thread.currentThread().interrupt();
            throw new RuntimeException(e);
        }
    }
}
