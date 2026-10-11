package com.alibaba.sdk.android.oss.common;

import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class LogThreadPoolManager {

    /* renamed from: f */
    public static final int f12905f = 1;

    /* renamed from: g */
    public static final int f12906g = 1;

    /* renamed from: h */
    public static final int f12907h = 5000;

    /* renamed from: i */
    public static final int f12908i = 500;

    /* renamed from: j */
    public static final int f12909j = 1000;

    /* renamed from: k */
    public static final int f12910k = 200;

    /* renamed from: l */
    public static LogThreadPoolManager f12911l = new LogThreadPoolManager();

    /* renamed from: a */
    public final Queue<Runnable> f12912a = new LinkedList();

    /* renamed from: b */
    public final RejectedExecutionHandler f12913b;

    /* renamed from: c */
    public final ScheduledExecutorService f12914c;

    /* renamed from: d */
    public final ThreadPoolExecutor f12915d;

    /* renamed from: e */
    public final Runnable f12916e;
    protected final ScheduledFuture<?> mTaskHandler;

    /* renamed from: com.alibaba.sdk.android.oss.common.LogThreadPoolManager$a */
    /* loaded from: classes3.dex */
    public class RejectedExecutionHandlerC1753a implements RejectedExecutionHandler {
        public RejectedExecutionHandlerC1753a() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            if (LogThreadPoolManager.this.f12912a.size() >= 200) {
                LogThreadPoolManager.this.f12912a.poll();
            }
            LogThreadPoolManager.this.f12912a.offer(runnable);
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.common.LogThreadPoolManager$b */
    /* loaded from: classes3.dex */
    public class ThreadFactoryC1754b implements ThreadFactory {
        public ThreadFactoryC1754b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "oss-android-log-thread");
        }
    }

    /* renamed from: com.alibaba.sdk.android.oss.common.LogThreadPoolManager$c */
    /* loaded from: classes3.dex */
    public class RunnableC1755c implements Runnable {
        public RunnableC1755c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (LogThreadPoolManager.this.m7636d()) {
                LogThreadPoolManager.this.f12915d.execute((Runnable) LogThreadPoolManager.this.f12912a.poll());
            }
        }
    }

    public LogThreadPoolManager() {
        RejectedExecutionHandlerC1753a rejectedExecutionHandlerC1753a = new RejectedExecutionHandlerC1753a();
        this.f12913b = rejectedExecutionHandlerC1753a;
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1);
        this.f12914c = newScheduledThreadPool;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.f12915d = new ThreadPoolExecutor(1, 1, 5000L, timeUnit, new ArrayBlockingQueue(500), new ThreadFactoryC1754b(), rejectedExecutionHandlerC1753a);
        RunnableC1755c runnableC1755c = new RunnableC1755c();
        this.f12916e = runnableC1755c;
        this.mTaskHandler = newScheduledThreadPool.scheduleAtFixedRate(runnableC1755c, 0L, 1000L, timeUnit);
    }

    public static LogThreadPoolManager newInstance() {
        if (f12911l == null) {
            f12911l = new LogThreadPoolManager();
        }
        return f12911l;
    }

    public void addExecuteTask(Runnable runnable) {
        if (runnable != null) {
            this.f12915d.execute(runnable);
        }
    }

    /* renamed from: d */
    public final boolean m7636d() {
        return !this.f12912a.isEmpty();
    }
}
