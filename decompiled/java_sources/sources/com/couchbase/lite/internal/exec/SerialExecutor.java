package com.couchbase.lite.internal.exec;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.exec.ExecutionService;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class SerialExecutor implements ExecutionService.CloseableExecutor {
    private static final LogDomain DOMAIN = LogDomain.DATABASE;

    @NonNull
    private final ThreadPoolExecutor executor;

    @NonNull
    @GuardedBy("this")
    private final Deque<InstrumentedTask> pendingTasks = new LinkedList();

    @Nullable
    @GuardedBy("this")
    private CountDownLatch stopLatch;

    public SerialExecutor(@NonNull ThreadPoolExecutor threadPoolExecutor) {
        Preconditions.assertNotNull(threadPoolExecutor, "executor");
        this.executor = threadPoolExecutor;
    }

    @GuardedBy("this")
    private void executeTask(@Nullable InstrumentedTask instrumentedTask) {
        InstrumentedTask peek = this.pendingTasks.peek();
        if (peek == null) {
            return;
        }
        try {
            this.executor.execute(peek);
        } catch (RuntimeException e) {
            Log.m9909w(LogDomain.DATABASE, "Catastrophic executor failure (Serial Executor)!", e);
            if (!AbstractExecutionService.throttled()) {
                dumpState(instrumentedTask);
            }
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleNext() {
        CountDownLatch countDownLatch;
        synchronized (this) {
            executeTask(this.pendingTasks.remove());
            countDownLatch = this.pendingTasks.size() > 0 ? null : this.stopLatch;
        }
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    public void dumpState(@Nullable InstrumentedTask instrumentedTask) {
        ArrayList arrayList;
        LogDomain logDomain = DOMAIN;
        Log.m9908w(logDomain, "==== Serial Executor");
        if (instrumentedTask != null) {
            Log.m9909w(logDomain, "== Previous task: " + instrumentedTask, instrumentedTask.origin);
        }
        synchronized (this) {
            arrayList = new ArrayList(this.pendingTasks);
        }
        if (arrayList.isEmpty()) {
            Log.m9908w(logDomain, "== Queue is empty");
        } else {
            Log.m9908w(logDomain, "== Queued tasks (" + arrayList.size() + MotionUtils.f31762d);
            Iterator it2 = arrayList.iterator();
            int i = 0;
            while (it2.hasNext()) {
                InstrumentedTask instrumentedTask2 = (InstrumentedTask) it2.next();
                Log.m9909w(DOMAIN, "@" + i + ": " + instrumentedTask2, instrumentedTask2.origin);
                i++;
            }
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
            this.pendingTasks.add(new InstrumentedTask(runnable, new Runnable() { // from class: com.couchbase.lite.internal.exec.f
                @Override // java.lang.Runnable
                public final void run() {
                    SerialExecutor.this.scheduleNext();
                }
            }));
            if (this.pendingTasks.size() == 1) {
                executeTask(null);
            }
        }
    }

    @Override // com.couchbase.lite.internal.exec.ExecutionService.CloseableExecutor
    public int getPending() {
        int size;
        synchronized (this) {
            size = this.pendingTasks.size();
        }
        return size;
    }

    @Override // com.couchbase.lite.internal.exec.ExecutionService.CloseableExecutor
    public boolean stop(long j, @NonNull TimeUnit timeUnit) {
        Preconditions.assertNotNegative(j, "timeout");
        Preconditions.assertNotNull(timeUnit, "time unit");
        synchronized (this) {
            if (this.stopLatch == null) {
                this.stopLatch = new CountDownLatch(1);
            }
            if (this.pendingTasks.size() <= 0) {
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
        return "CBL serial executor";
    }
}
