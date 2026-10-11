package com.couchbase.lite.internal.exec;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.exec.ExecutionService;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes4.dex */
public abstract class AbstractExecutionService implements ExecutionService {
    private static final int DUMP_INTERVAL_MS = 2000;
    private static final Object DUMP_LOCK = new Object();
    private static long lastDump;

    @NonNull
    private final ThreadPoolExecutor baseExecutor;

    @NonNull
    private final ConcurrentExecutor concurrentExecutor;

    public AbstractExecutionService(@NonNull ThreadPoolExecutor threadPoolExecutor) {
        this.baseExecutor = threadPoolExecutor;
        this.concurrentExecutor = new ConcurrentExecutor(threadPoolExecutor);
    }

    public static void dumpThreads() {
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        if (allStackTraces.isEmpty()) {
            return;
        }
        Thread currentThread = Thread.currentThread();
        Log.m9908w(LogDomain.DATABASE, "==== Threads: " + allStackTraces.size());
        for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
            Thread key = entry.getKey();
            LogDomain logDomain = LogDomain.DATABASE;
            StringBuilder sb = new StringBuilder();
            sb.append(key.equals(currentThread) ? "**" : "==");
            sb.append(" ");
            sb.append(key);
            sb.append(MotionUtils.f31761c);
            sb.append(key.getState());
            sb.append(MotionUtils.f31762d);
            Log.m9908w(logDomain, sb.toString());
            for (StackTraceElement stackTraceElement : entry.getValue()) {
                Log.m9908w(LogDomain.DATABASE, "      at " + stackTraceElement);
            }
        }
    }

    public static boolean throttled() {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (DUMP_LOCK) {
            if (currentTimeMillis - lastDump < 2000) {
                return true;
            }
            lastDump = currentTimeMillis;
            return false;
        }
    }

    @Override // com.couchbase.lite.internal.exec.ExecutionService
    public void cancelDelayedTask(@NonNull ExecutionService.Cancellable cancellable) {
        Preconditions.assertNotNull(cancellable, "cancellableTask");
        cancellable.cancel();
    }

    @VisibleForTesting
    public void dumpState() {
        this.concurrentExecutor.dumpState(null);
    }

    @Override // com.couchbase.lite.internal.exec.ExecutionService
    @NonNull
    public ExecutionService.CloseableExecutor getConcurrentExecutor() {
        return this.concurrentExecutor;
    }

    @Override // com.couchbase.lite.internal.exec.ExecutionService
    @NonNull
    public ExecutionService.CloseableExecutor getSerialExecutor() {
        return new SerialExecutor(this.baseExecutor);
    }
}
