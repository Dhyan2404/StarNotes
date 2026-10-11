package com.couchbase.lite.internal.exec;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.exec.CBLExecutor;
import com.couchbase.lite.internal.logging.Log;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public class CBLExecutor extends ThreadPoolExecutor {
    public static final int CPU_COUNT;
    public static final int POOL_SIZE;

    /* renamed from: m2 */
    @GuardedBy("name")
    private float f16326m2;

    /* renamed from: n */
    @GuardedBy("name")
    private long f16327n;

    @NonNull
    private final String name;

    @GuardedBy("name")
    private int qSizeMax;

    @GuardedBy("name")
    private float qSizeMean;

    @GuardedBy("name")
    private float qSizeVariance;

    /* renamed from: com.couchbase.lite.internal.exec.CBLExecutor$1 */
    /* loaded from: classes4.dex */
    public class ThreadFactoryC21981 implements ThreadFactory {
        private final AtomicInteger threadId = new AtomicInteger(0);
        private final String threadName;
        final /* synthetic */ String val$name;

        public ThreadFactoryC21981(String str) {
            this.val$name = str;
            this.threadName = str + " #";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$newThread$0(Thread thread, Thread thread2, Throwable th) {
            Log.m9902e(LogDomain.DATABASE, "Uncaught exception on thread %s", th, thread.getName());
        }

        @Override // java.util.concurrent.ThreadFactory
        @NonNull
        public Thread newThread(@NonNull Runnable runnable) {
            final Thread thread = new Thread(runnable, this.threadName + this.threadId.incrementAndGet());
            thread.setDaemon(true);
            thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.couchbase.lite.internal.exec.a
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public final void uncaughtException(Thread thread2, Throwable th) {
                    CBLExecutor.ThreadFactoryC21981.lambda$newThread$0(thread, thread2, th);
                }
            });
            Log.m9907i(LogDomain.DATABASE, "New thread: %s", thread.getName());
            return thread;
        }
    }

    /* loaded from: classes4.dex */
    public static class Stats {
        public final long completedTasks;
        public final int corePoolSize;
        public final boolean isShutdown;
        public final boolean isTerminated;
        public final boolean isTerminating;
        public final int largestPoolSize;
        public final int maxPoolSize;
        public final int poolSize;
        public final int qCurSize;
        public final int qMaxSize;
        public final float qMeanSize;
        public final double qSizeSD;
        public final long totalTasks;

        public Stats(boolean z, boolean z2, boolean z3, long j, long j2, int i, int i2, int i3, int i4, int i5, int i6, float f, double d) {
            this.isShutdown = z;
            this.isTerminating = z2;
            this.isTerminated = z3;
            this.totalTasks = j;
            this.completedTasks = j2;
            this.poolSize = i;
            this.corePoolSize = i2;
            this.largestPoolSize = i3;
            this.maxPoolSize = i4;
            this.qCurSize = i5;
            this.qMaxSize = i6;
            this.qMeanSize = f;
            this.qSizeSD = d;
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = availableProcessors;
        POOL_SIZE = Math.max(4, availableProcessors - 1);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CBLExecutor(@androidx.annotation.NonNull java.lang.String r3) {
        /*
            r2 = this;
            int r0 = com.couchbase.lite.internal.exec.CBLExecutor.POOL_SIZE
            java.util.concurrent.LinkedBlockingQueue r1 = new java.util.concurrent.LinkedBlockingQueue
            r1.<init>()
            r2.<init>(r3, r0, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.couchbase.lite.internal.exec.CBLExecutor.<init>(java.lang.String):void");
    }

    private void computeQueueStats() {
        int size = getQueue().size();
        synchronized (this.name) {
            if (this.qSizeMax < size) {
                this.qSizeMax = size;
            }
            long j = this.f16327n + 1;
            this.f16327n = j;
            float f = size;
            float f2 = this.qSizeMean;
            float f3 = f - f2;
            float f4 = f2 + (f3 / ((float) j));
            this.qSizeMean = f4;
            float f5 = this.f16326m2 + (f3 * (f - f4));
            this.f16326m2 = f5;
            if (j > 2) {
                this.qSizeVariance = f5 / ((float) (j - 1));
            }
        }
    }

    public void dumpState() {
        Stats stats = getStats();
        LogDomain logDomain = LogDomain.DATABASE;
        Object[] objArr = new Object[2];
        int i = 0;
        objArr[0] = this.name;
        objArr[1] = stats.isShutdown ? "x" : stats.isTerminated ? "-" : stats.isTerminating ? C4921e.f26528e : "+";
        Log.m9911w(logDomain, "==== CBL Executor \"%s\" (%s)", objArr);
        Log.m9911w(logDomain, "== Tasks: %d, %d", Long.valueOf(stats.totalTasks), Long.valueOf(stats.completedTasks));
        Log.m9911w(logDomain, "== Pool: %d, %d, %d, %d", Integer.valueOf(stats.poolSize), Integer.valueOf(stats.corePoolSize), Integer.valueOf(stats.largestPoolSize), Integer.valueOf(stats.maxPoolSize));
        Log.m9911w(logDomain, "== Queue: %d, %d, %.2f, %.4f", Integer.valueOf(stats.qCurSize), Integer.valueOf(stats.qMaxSize), Float.valueOf(stats.qMeanSize), Double.valueOf(stats.qSizeSD));
        for (Runnable runnable : new ArrayList(getQueue())) {
            Log.m9910w(LogDomain.DATABASE, "@%d: %s", !(runnable instanceof InstrumentedTask) ? null : ((InstrumentedTask) runnable).origin, Integer.valueOf(i), runnable);
            i++;
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        try {
            super.execute(runnable);
        } finally {
            computeQueueStats();
        }
    }

    @NonNull
    public Stats getStats() {
        int i;
        float f;
        double d;
        synchronized (this.name) {
            i = this.qSizeMax;
            f = this.qSizeMean;
            d = this.qSizeVariance;
        }
        return new Stats(isShutdown(), isTerminating(), isTerminated(), getTaskCount(), getCompletedTaskCount(), getPoolSize(), getCorePoolSize(), getLargestPoolSize(), getMaximumPoolSize(), getQueue().size(), i, f, Math.sqrt(d));
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    @NonNull
    public String toString() {
        return "CBLExecutor{" + this.name + "}";
    }

    public CBLExecutor(@NonNull String str, int i, int i2, @NonNull BlockingQueue<Runnable> blockingQueue) {
        this(str, i, i2, 30L, blockingQueue);
    }

    public CBLExecutor(@NonNull String str, int i, int i2, long j, @NonNull BlockingQueue<Runnable> blockingQueue) {
        super(i, i2, j, TimeUnit.SECONDS, blockingQueue, new ThreadFactoryC21981(str));
        allowCoreThreadTimeOut(true);
        this.name = str;
    }
}
