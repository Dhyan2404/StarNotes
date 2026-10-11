package com.couchbase.lite.internal.exec;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.exec.ExecutionService;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.android.material.motion.MotionUtils;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class ConcurrentExecutor implements ExecutionService.CloseableExecutor {
    private static final LogDomain DOMAIN = LogDomain.DATABASE;

    @NonNull
    private final ThreadPoolExecutor executor;

    @GuardedBy("this")
    private int running;

    @Nullable
    @GuardedBy("this")
    private CountDownLatch stopLatch;

    public ConcurrentExecutor(@NonNull ThreadPoolExecutor threadPoolExecutor) {
        Preconditions.assertNotNull(threadPoolExecutor, "executor");
        this.executor = threadPoolExecutor;
    }

    @GuardedBy("this")
    private void executeTask(@NonNull InstrumentedTask instrumentedTask) {
        try {
            this.executor.execute(instrumentedTask);
            this.running++;
        } catch (RuntimeException e) {
            Log.m9909w(LogDomain.DATABASE, "Catastrophic executor failure (Concurrent Executor)!", e);
            if (!AbstractExecutionService.throttled()) {
                dumpState(instrumentedTask);
            }
            throw e;
        }
    }

    public void dumpState(@Nullable InstrumentedTask instrumentedTask) {
        int i;
        synchronized (this) {
            i = this.running;
        }
        LogDomain logDomain = DOMAIN;
        Log.m9908w(logDomain, "==== Concurrent Executor (" + i + MotionUtils.f31762d);
        if (instrumentedTask != null) {
            Log.m9909w(logDomain, "== Rejected task: " + instrumentedTask, instrumentedTask.origin);
        }
        ThreadPoolExecutor threadPoolExecutor = this.executor;
        if (threadPoolExecutor instanceof CBLExecutor) {
            ((CBLExecutor) threadPoolExecutor).dumpState();
        }
        AbstractExecutionService.dumpThreads();
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        Preconditions.assertNotNull(runnable, "task");
        synchronized (this) {
            if (this.stopLatch != null) {
                throw new ExecutionService.CloseableExecutor.ExecutorClosedException("Executor has been stopped");
            }
            executeTask(new InstrumentedTask(runnable, new Runnable() { // from class: com.couchbase.lite.internal.exec.e
                @Override // java.lang.Runnable
                public final void run() {
                    ConcurrentExecutor.this.finishTask();
                }
            }));
        }
    }

    public void finishTask() {
        synchronized (this) {
            int i = this.running - 1;
            this.running = i;
            if (i > 0) {
                return;
            }
            CountDownLatch countDownLatch = this.stopLatch;
            if (countDownLatch != null) {
                countDownLatch.countDown();
            }
        }
    }

    @Override // com.couchbase.lite.internal.exec.ExecutionService.CloseableExecutor
    public int getPending() {
        return this.executor.getQueue().size();
    }

    @Override // com.couchbase.lite.internal.exec.ExecutionService.CloseableExecutor
    public boolean stop(long j, @NonNull TimeUnit timeUnit) {
        Preconditions.assertNotNegative(j, "timeout");
        Preconditions.assertNotNull(timeUnit, "time unit");
        synchronized (this) {
            if (this.stopLatch == null) {
                this.stopLatch = new CountDownLatch(1);
            }
            if (this.running <= 0) {
                return true;
            }
            CountDownLatch countDownLatch = this.stopLatch;
            try {
                return countDownLatch.await(j, timeUnit);
            } catch (InterruptedException unused) {
                return false;
            }
        }
    }

    @NonNull
    public String toString() {
        return "CBL concurrent executor";
    }
}
