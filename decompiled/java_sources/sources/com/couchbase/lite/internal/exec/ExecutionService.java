package com.couchbase.lite.internal.exec;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public interface ExecutionService {

    /* loaded from: classes4.dex */
    public interface Cancellable {
        void cancel();
    }

    /* loaded from: classes4.dex */
    public interface CloseableExecutor extends Executor {

        /* loaded from: classes4.dex */
        public static class ExecutorClosedException extends RejectedExecutionException {
            public ExecutorClosedException() {
            }

            public ExecutorClosedException(@Nullable String str) {
                super(str);
            }

            public ExecutorClosedException(@Nullable String str, @Nullable Throwable th) {
                super(str, th);
            }

            public ExecutorClosedException(@Nullable Throwable th) {
                super(th);
            }
        }

        int getPending();

        boolean stop(long j, @NonNull TimeUnit timeUnit);
    }

    void cancelDelayedTask(@NonNull Cancellable cancellable);

    @NonNull
    CloseableExecutor getConcurrentExecutor();

    @NonNull
    Executor getDefaultExecutor();

    @NonNull
    CloseableExecutor getSerialExecutor();

    @NonNull
    Cancellable postDelayedOnExecutor(long j, @NonNull Executor executor, @NonNull Runnable runnable);
}
