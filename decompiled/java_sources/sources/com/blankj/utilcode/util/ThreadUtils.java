package com.blankj.utilcode.util;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.Thread;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public final class ThreadUtils {

    /* renamed from: a */
    public static final Handler f14109a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public static final Map<Integer, Map<Integer, ExecutorService>> f14110b = new HashMap();

    /* renamed from: c */
    public static final Map<Task, ExecutorService> f14111c = new ConcurrentHashMap();

    /* renamed from: d */
    public static final int f14112d = Runtime.getRuntime().availableProcessors();

    /* renamed from: e */
    public static final Timer f14113e = new Timer();

    /* renamed from: f */
    public static final byte f14114f = -1;

    /* renamed from: g */
    public static final byte f14115g = -2;

    /* renamed from: h */
    public static final byte f14116h = -4;

    /* renamed from: i */
    public static final byte f14117i = -8;

    /* renamed from: j */
    public static Executor f14118j;

    /* loaded from: classes3.dex */
    public static final class LinkedBlockingQueue4Util extends LinkedBlockingQueue<Runnable> {
        private int mCapacity;
        private volatile C1875d mPool;

        public LinkedBlockingQueue4Util() {
            this.mCapacity = Integer.MAX_VALUE;
        }

        @Override // java.util.concurrent.LinkedBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
        public boolean offer(@NonNull Runnable runnable) {
            if (this.mCapacity > size() || this.mPool == null || this.mPool.getPoolSize() >= this.mPool.getMaximumPoolSize()) {
                return super.offer((LinkedBlockingQueue4Util) runnable);
            }
            return false;
        }

        public LinkedBlockingQueue4Util(boolean z) {
            this.mCapacity = Integer.MAX_VALUE;
            if (z) {
                this.mCapacity = 0;
            }
        }

        public LinkedBlockingQueue4Util(int i) {
            this.mCapacity = i;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class SimpleTask<T> extends Task<T> {
        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        public void onCancel() {
            Log.e("ThreadUtils", "onCancel: " + Thread.currentThread());
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        public void onFail(Throwable th) {
            Log.e("ThreadUtils", "onFail: ", th);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Task<T> implements Runnable {

        /* renamed from: l */
        public static final int f14122l = 0;

        /* renamed from: m */
        public static final int f14123m = 1;

        /* renamed from: n */
        public static final int f14124n = 2;

        /* renamed from: o */
        public static final int f14125o = 3;

        /* renamed from: p */
        public static final int f14126p = 4;

        /* renamed from: q */
        public static final int f14127q = 5;

        /* renamed from: r */
        public static final int f14128r = 6;

        /* renamed from: e */
        public final AtomicInteger f14129e = new AtomicInteger(0);

        /* renamed from: f */
        public volatile boolean f14130f;

        /* renamed from: g */
        public volatile Thread f14131g;

        /* renamed from: h */
        public Timer f14132h;

        /* renamed from: i */
        public long f14133i;

        /* renamed from: j */
        public OnTimeoutListener f14134j;

        /* renamed from: k */
        public Executor f14135k;

        /* loaded from: classes3.dex */
        public interface OnTimeoutListener {
            void onTimeout();
        }

        /* renamed from: com.blankj.utilcode.util.ThreadUtils$Task$a */
        /* loaded from: classes3.dex */
        public class C1865a extends TimerTask {
            public C1865a() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (Task.this.isDone() || Task.this.f14134j == null) {
                    return;
                }
                Task.this.m8347f();
                Task.this.f14134j.onTimeout();
                Task.this.onDone();
            }
        }

        /* renamed from: com.blankj.utilcode.util.ThreadUtils$Task$b */
        /* loaded from: classes3.dex */
        public class RunnableC1866b implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ Object f14137e;

            public RunnableC1866b(Object obj) {
                this.f14137e = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                Task.this.onSuccess(this.f14137e);
            }
        }

        /* renamed from: com.blankj.utilcode.util.ThreadUtils$Task$c */
        /* loaded from: classes3.dex */
        public class RunnableC1867c implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ Object f14139e;

            public RunnableC1867c(Object obj) {
                this.f14139e = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                Task.this.onSuccess(this.f14139e);
                Task.this.onDone();
            }
        }

        /* renamed from: com.blankj.utilcode.util.ThreadUtils$Task$d */
        /* loaded from: classes3.dex */
        public class RunnableC1868d implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ Throwable f14141e;

            public RunnableC1868d(Throwable th) {
                this.f14141e = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                Task.this.onFail(this.f14141e);
                Task.this.onDone();
            }
        }

        /* renamed from: com.blankj.utilcode.util.ThreadUtils$Task$e */
        /* loaded from: classes3.dex */
        public class RunnableC1869e implements Runnable {
            public RunnableC1869e() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Task.this.onCancel();
                Task.this.onDone();
            }
        }

        public void cancel() {
            cancel(true);
        }

        /* renamed from: d */
        public final Executor m8345d() {
            Executor executor = this.f14135k;
            return executor == null ? ThreadUtils.m8333b() : executor;
        }

        public abstract T doInBackground() throws Throwable;

        /* renamed from: e */
        public final void m8346e(boolean z) {
            this.f14130f = z;
        }

        /* renamed from: f */
        public final void m8347f() {
            synchronized (this.f14129e) {
                if (this.f14129e.get() > 1) {
                    return;
                }
                this.f14129e.set(6);
                if (this.f14131g != null) {
                    this.f14131g.interrupt();
                }
            }
        }

        public boolean isCanceled() {
            return this.f14129e.get() >= 4;
        }

        public boolean isDone() {
            return this.f14129e.get() > 1;
        }

        public abstract void onCancel();

        @CallSuper
        public void onDone() {
            ThreadUtils.f14111c.remove(this);
            Timer timer = this.f14132h;
            if (timer != null) {
                timer.cancel();
                this.f14132h = null;
                this.f14134j = null;
            }
        }

        public abstract void onFail(Throwable th);

        public abstract void onSuccess(T t);

        @Override // java.lang.Runnable
        public void run() {
            if (this.f14130f) {
                if (this.f14131g == null) {
                    if (!this.f14129e.compareAndSet(0, 1)) {
                        return;
                    }
                    this.f14131g = Thread.currentThread();
                    if (this.f14134j != null) {
                        Log.w("ThreadUtils", "Scheduled task doesn't support timeout.");
                    }
                } else if (this.f14129e.get() != 1) {
                    return;
                }
            } else {
                if (!this.f14129e.compareAndSet(0, 1)) {
                    return;
                }
                this.f14131g = Thread.currentThread();
                if (this.f14134j != null) {
                    Timer timer = new Timer();
                    this.f14132h = timer;
                    timer.schedule(new C1865a(), this.f14133i);
                }
            }
            try {
                T doInBackground = doInBackground();
                if (this.f14130f) {
                    if (this.f14129e.get() != 1) {
                        return;
                    }
                    m8345d().execute(new RunnableC1866b(doInBackground));
                } else if (this.f14129e.compareAndSet(1, 3)) {
                    m8345d().execute(new RunnableC1867c(doInBackground));
                }
            } catch (InterruptedException unused) {
                this.f14129e.compareAndSet(4, 5);
            } catch (Throwable th) {
                if (this.f14129e.compareAndSet(1, 2)) {
                    m8345d().execute(new RunnableC1868d(th));
                }
            }
        }

        public Task<T> setDeliver(Executor executor) {
            this.f14135k = executor;
            return this;
        }

        public Task<T> setTimeout(long j, OnTimeoutListener onTimeoutListener) {
            this.f14133i = j;
            this.f14134j = onTimeoutListener;
            return this;
        }

        public void cancel(boolean z) {
            synchronized (this.f14129e) {
                if (this.f14129e.get() > 1) {
                    return;
                }
                this.f14129e.set(4);
                if (z && this.f14131g != null) {
                    this.f14131g.interrupt();
                }
                m8345d().execute(new RunnableC1869e());
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class UtilsThreadFactory extends AtomicLong implements ThreadFactory {
        private static final AtomicInteger POOL_NUMBER = new AtomicInteger(1);
        private static final long serialVersionUID = -9209200509960368598L;
        private final boolean isDaemon;
        private final String namePrefix;
        private final int priority;

        /* renamed from: com.blankj.utilcode.util.ThreadUtils$UtilsThreadFactory$a */
        /* loaded from: classes3.dex */
        public class C1870a extends Thread {
            public C1870a(Runnable runnable, String str) {
                super(runnable, str);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    super.run();
                } catch (Throwable th) {
                    Log.e("ThreadUtils", "Request threw uncaught throwable", th);
                }
            }
        }

        /* renamed from: com.blankj.utilcode.util.ThreadUtils$UtilsThreadFactory$b */
        /* loaded from: classes3.dex */
        public class C1871b implements Thread.UncaughtExceptionHandler {
            public C1871b() {
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                System.out.println(th);
            }
        }

        public UtilsThreadFactory(String str, int i) {
            this(str, i, false);
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            C1870a c1870a = new C1870a(runnable, this.namePrefix + getAndIncrement());
            c1870a.setDaemon(this.isDaemon);
            c1870a.setUncaughtExceptionHandler(new C1871b());
            c1870a.setPriority(this.priority);
            return c1870a;
        }

        public UtilsThreadFactory(String str, int i, boolean z) {
            this.namePrefix = str + "-pool-" + POOL_NUMBER.getAndIncrement() + "-thread-";
            this.priority = i;
            this.isDaemon = z;
        }
    }

    /* renamed from: com.blankj.utilcode.util.ThreadUtils$a */
    /* loaded from: classes3.dex */
    public static class C1872a extends TimerTask {

        /* renamed from: e */
        public final /* synthetic */ ExecutorService f14146e;

        /* renamed from: f */
        public final /* synthetic */ Task f14147f;

        public C1872a(ExecutorService executorService, Task task) {
            this.f14146e = executorService;
            this.f14147f = task;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.f14146e.execute(this.f14147f);
        }
    }

    /* renamed from: com.blankj.utilcode.util.ThreadUtils$b */
    /* loaded from: classes3.dex */
    public static class C1873b extends TimerTask {

        /* renamed from: e */
        public final /* synthetic */ ExecutorService f14148e;

        /* renamed from: f */
        public final /* synthetic */ Task f14149f;

        public C1873b(ExecutorService executorService, Task task) {
            this.f14148e = executorService;
            this.f14149f = task;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.f14148e.execute(this.f14149f);
        }
    }

    /* renamed from: com.blankj.utilcode.util.ThreadUtils$c */
    /* loaded from: classes3.dex */
    public static class ExecutorC1874c implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            ThreadUtils.runOnUiThread(runnable);
        }
    }

    /* renamed from: com.blankj.utilcode.util.ThreadUtils$d */
    /* loaded from: classes3.dex */
    public static final class C1875d extends ThreadPoolExecutor {

        /* renamed from: e */
        public final AtomicInteger f14150e;

        /* renamed from: f */
        public LinkedBlockingQueue4Util f14151f;

        public C1875d(int i, int i2, long j, TimeUnit timeUnit, LinkedBlockingQueue4Util linkedBlockingQueue4Util, ThreadFactory threadFactory) {
            super(i, i2, j, timeUnit, linkedBlockingQueue4Util, threadFactory);
            this.f14150e = new AtomicInteger();
            linkedBlockingQueue4Util.mPool = this;
            this.f14151f = linkedBlockingQueue4Util;
        }

        /* renamed from: b */
        public static ExecutorService m8349b(int i, int i2) {
            if (i == -8) {
                return new C1875d(ThreadUtils.f14112d + 1, (ThreadUtils.f14112d * 2) + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(true), new UtilsThreadFactory("cpu", i2));
            }
            if (i == -4) {
                return new C1875d((ThreadUtils.f14112d * 2) + 1, (ThreadUtils.f14112d * 2) + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("io", i2));
            }
            if (i == -2) {
                return new C1875d(0, 128, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(true), new UtilsThreadFactory("cached", i2));
            }
            if (i == -1) {
                return new C1875d(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory(Constants.ATTRVAL_SINGLE, i2));
            }
            return new C1875d(i, i, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("fixed(" + i + MotionUtils.f31762d, i2));
        }

        @Override // java.util.concurrent.ThreadPoolExecutor
        public void afterExecute(Runnable runnable, Throwable th) {
            this.f14150e.decrementAndGet();
            super.afterExecute(runnable, th);
        }

        /* renamed from: c */
        public final int m8350c() {
            return this.f14150e.get();
        }

        @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            if (isShutdown()) {
                return;
            }
            this.f14150e.incrementAndGet();
            try {
                super.execute(runnable);
            } catch (RejectedExecutionException unused) {
                Log.e("ThreadUtils", "This will not happen!");
                this.f14151f.offer(runnable);
            } catch (Throwable unused2) {
                this.f14150e.decrementAndGet();
            }
        }
    }

    /* renamed from: b */
    public static /* synthetic */ Executor m8333b() {
        return m8339h();
    }

    public static void cancel(Task task) {
        if (task == null) {
            return;
        }
        task.cancel();
    }

    /* renamed from: d */
    public static <T> void m8335d(ExecutorService executorService, Task<T> task) {
        m8336e(executorService, task, 0L, 0L, null);
    }

    /* renamed from: e */
    public static <T> void m8336e(ExecutorService executorService, Task<T> task, long j, long j2, TimeUnit timeUnit) {
        Map<Task, ExecutorService> map = f14111c;
        synchronized (map) {
            if (map.get(task) != null) {
                Log.e("ThreadUtils", "Task can only be executed once.");
                return;
            }
            map.put(task, executorService);
            if (j2 != 0) {
                task.m8346e(true);
                f14113e.scheduleAtFixedRate(new C1873b(executorService, task), timeUnit.toMillis(j), timeUnit.toMillis(j2));
            } else if (j == 0) {
                executorService.execute(task);
            } else {
                f14113e.schedule(new C1872a(executorService, task), timeUnit.toMillis(j));
            }
        }
    }

    public static <T> void executeByCached(Task<T> task) {
        m8335d(m8340i(-2), task);
    }

    public static <T> void executeByCachedAtFixRate(Task<T> task, long j, TimeUnit timeUnit) {
        m8337f(m8340i(-2), task, 0L, j, timeUnit);
    }

    public static <T> void executeByCachedWithDelay(Task<T> task, long j, TimeUnit timeUnit) {
        m8338g(m8340i(-2), task, j, timeUnit);
    }

    public static <T> void executeByCpu(Task<T> task) {
        m8335d(m8340i(-8), task);
    }

    public static <T> void executeByCpuAtFixRate(Task<T> task, long j, TimeUnit timeUnit) {
        m8337f(m8340i(-8), task, 0L, j, timeUnit);
    }

    public static <T> void executeByCpuWithDelay(Task<T> task, long j, TimeUnit timeUnit) {
        m8338g(m8340i(-8), task, j, timeUnit);
    }

    public static <T> void executeByCustom(ExecutorService executorService, Task<T> task) {
        m8335d(executorService, task);
    }

    public static <T> void executeByCustomAtFixRate(ExecutorService executorService, Task<T> task, long j, TimeUnit timeUnit) {
        m8337f(executorService, task, 0L, j, timeUnit);
    }

    public static <T> void executeByCustomWithDelay(ExecutorService executorService, Task<T> task, long j, TimeUnit timeUnit) {
        m8338g(executorService, task, j, timeUnit);
    }

    public static <T> void executeByFixed(@IntRange(from = 1) int i, Task<T> task) {
        m8335d(m8340i(i), task);
    }

    public static <T> void executeByFixedAtFixRate(@IntRange(from = 1) int i, Task<T> task, long j, TimeUnit timeUnit) {
        m8337f(m8340i(i), task, 0L, j, timeUnit);
    }

    public static <T> void executeByFixedWithDelay(@IntRange(from = 1) int i, Task<T> task, long j, TimeUnit timeUnit) {
        m8338g(m8340i(i), task, j, timeUnit);
    }

    public static <T> void executeByIo(Task<T> task) {
        m8335d(m8340i(-4), task);
    }

    public static <T> void executeByIoAtFixRate(Task<T> task, long j, TimeUnit timeUnit) {
        m8337f(m8340i(-4), task, 0L, j, timeUnit);
    }

    public static <T> void executeByIoWithDelay(Task<T> task, long j, TimeUnit timeUnit) {
        m8338g(m8340i(-4), task, j, timeUnit);
    }

    public static <T> void executeBySingle(Task<T> task) {
        m8335d(m8340i(-1), task);
    }

    public static <T> void executeBySingleAtFixRate(Task<T> task, long j, TimeUnit timeUnit) {
        m8337f(m8340i(-1), task, 0L, j, timeUnit);
    }

    public static <T> void executeBySingleWithDelay(Task<T> task, long j, TimeUnit timeUnit) {
        m8338g(m8340i(-1), task, j, timeUnit);
    }

    /* renamed from: f */
    public static <T> void m8337f(ExecutorService executorService, Task<T> task, long j, long j2, TimeUnit timeUnit) {
        m8336e(executorService, task, j, j2, timeUnit);
    }

    /* renamed from: g */
    public static <T> void m8338g(ExecutorService executorService, Task<T> task, long j, TimeUnit timeUnit) {
        m8336e(executorService, task, j, 0L, timeUnit);
    }

    public static ExecutorService getCachedPool() {
        return m8340i(-2);
    }

    public static ExecutorService getCpuPool() {
        return m8340i(-8);
    }

    public static ExecutorService getFixedPool(@IntRange(from = 1) int i) {
        return m8340i(i);
    }

    public static ExecutorService getIoPool() {
        return m8340i(-4);
    }

    public static Handler getMainHandler() {
        return f14109a;
    }

    public static ExecutorService getSinglePool() {
        return m8340i(-1);
    }

    /* renamed from: h */
    public static Executor m8339h() {
        if (f14118j == null) {
            f14118j = new ExecutorC1874c();
        }
        return f14118j;
    }

    /* renamed from: i */
    public static ExecutorService m8340i(int i) {
        return m8341j(i, 5);
    }

    public static boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: j */
    public static ExecutorService m8341j(int i, int i2) {
        ExecutorService executorService;
        Map<Integer, Map<Integer, ExecutorService>> map = f14110b;
        synchronized (map) {
            Map<Integer, ExecutorService> map2 = map.get(Integer.valueOf(i));
            if (map2 == null) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                executorService = C1875d.m8349b(i, i2);
                concurrentHashMap.put(Integer.valueOf(i2), executorService);
                map.put(Integer.valueOf(i), concurrentHashMap);
            } else {
                executorService = map2.get(Integer.valueOf(i2));
                if (executorService == null) {
                    executorService = C1875d.m8349b(i, i2);
                    map2.put(Integer.valueOf(i2), executorService);
                }
            }
        }
        return executorService;
    }

    public static void runOnUiThread(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            f14109a.post(runnable);
        }
    }

    public static void runOnUiThreadDelayed(Runnable runnable, long j) {
        f14109a.postDelayed(runnable, j);
    }

    public static void setDeliver(Executor executor) {
        f14118j = executor;
    }

    public static void cancel(Task... taskArr) {
        if (taskArr == null || taskArr.length == 0) {
            return;
        }
        for (Task task : taskArr) {
            if (task != null) {
                task.cancel();
            }
        }
    }

    public static <T> void executeByCached(Task<T> task, @IntRange(from = 1, m281to = 10) int i) {
        m8335d(m8341j(-2, i), task);
    }

    public static <T> void executeByCachedAtFixRate(Task<T> task, long j, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i) {
        m8337f(m8341j(-2, i), task, 0L, j, timeUnit);
    }

    public static <T> void executeByCachedWithDelay(Task<T> task, long j, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i) {
        m8338g(m8341j(-2, i), task, j, timeUnit);
    }

    public static <T> void executeByCpu(Task<T> task, @IntRange(from = 1, m281to = 10) int i) {
        m8335d(m8341j(-8, i), task);
    }

    public static <T> void executeByCpuAtFixRate(Task<T> task, long j, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i) {
        m8337f(m8341j(-8, i), task, 0L, j, timeUnit);
    }

    public static <T> void executeByCpuWithDelay(Task<T> task, long j, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i) {
        m8338g(m8341j(-8, i), task, j, timeUnit);
    }

    public static <T> void executeByCustomAtFixRate(ExecutorService executorService, Task<T> task, long j, long j2, TimeUnit timeUnit) {
        m8337f(executorService, task, j, j2, timeUnit);
    }

    public static <T> void executeByFixed(@IntRange(from = 1) int i, Task<T> task, @IntRange(from = 1, m281to = 10) int i2) {
        m8335d(m8341j(i, i2), task);
    }

    public static <T> void executeByFixedAtFixRate(@IntRange(from = 1) int i, Task<T> task, long j, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i2) {
        m8337f(m8341j(i, i2), task, 0L, j, timeUnit);
    }

    public static <T> void executeByFixedWithDelay(@IntRange(from = 1) int i, Task<T> task, long j, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i2) {
        m8338g(m8341j(i, i2), task, j, timeUnit);
    }

    public static <T> void executeByIo(Task<T> task, @IntRange(from = 1, m281to = 10) int i) {
        m8335d(m8341j(-4, i), task);
    }

    public static <T> void executeByIoAtFixRate(Task<T> task, long j, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i) {
        m8337f(m8341j(-4, i), task, 0L, j, timeUnit);
    }

    public static <T> void executeByIoWithDelay(Task<T> task, long j, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i) {
        m8338g(m8341j(-4, i), task, j, timeUnit);
    }

    public static <T> void executeBySingle(Task<T> task, @IntRange(from = 1, m281to = 10) int i) {
        m8335d(m8341j(-1, i), task);
    }

    public static <T> void executeBySingleAtFixRate(Task<T> task, long j, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i) {
        m8337f(m8341j(-1, i), task, 0L, j, timeUnit);
    }

    public static <T> void executeBySingleWithDelay(Task<T> task, long j, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i) {
        m8338g(m8341j(-1, i), task, j, timeUnit);
    }

    public static ExecutorService getCachedPool(@IntRange(from = 1, m281to = 10) int i) {
        return m8341j(-2, i);
    }

    public static ExecutorService getCpuPool(@IntRange(from = 1, m281to = 10) int i) {
        return m8341j(-8, i);
    }

    public static ExecutorService getFixedPool(@IntRange(from = 1) int i, @IntRange(from = 1, m281to = 10) int i2) {
        return m8341j(i, i2);
    }

    public static ExecutorService getIoPool(@IntRange(from = 1, m281to = 10) int i) {
        return m8341j(-4, i);
    }

    public static ExecutorService getSinglePool(@IntRange(from = 1, m281to = 10) int i) {
        return m8341j(-1, i);
    }

    public static <T> void executeByCachedAtFixRate(Task<T> task, long j, long j2, TimeUnit timeUnit) {
        m8337f(m8340i(-2), task, j, j2, timeUnit);
    }

    public static <T> void executeByCpuAtFixRate(Task<T> task, long j, long j2, TimeUnit timeUnit) {
        m8337f(m8340i(-8), task, j, j2, timeUnit);
    }

    public static <T> void executeByFixedAtFixRate(@IntRange(from = 1) int i, Task<T> task, long j, long j2, TimeUnit timeUnit) {
        m8337f(m8340i(i), task, j, j2, timeUnit);
    }

    public static <T> void executeByIoAtFixRate(Task<T> task, long j, long j2, TimeUnit timeUnit) {
        m8337f(m8340i(-4), task, j, j2, timeUnit);
    }

    public static <T> void executeBySingleAtFixRate(Task<T> task, long j, long j2, TimeUnit timeUnit) {
        m8337f(m8340i(-1), task, j, j2, timeUnit);
    }

    /* loaded from: classes3.dex */
    public static class SyncValue<T> {

        /* renamed from: a */
        public CountDownLatch f14119a = new CountDownLatch(1);

        /* renamed from: b */
        public AtomicBoolean f14120b = new AtomicBoolean();

        /* renamed from: c */
        public T f14121c;

        public T getValue() {
            if (!this.f14120b.get()) {
                try {
                    this.f14119a.await();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            return this.f14121c;
        }

        public void setValue(T t) {
            if (this.f14120b.compareAndSet(false, true)) {
                this.f14121c = t;
                this.f14119a.countDown();
            }
        }

        public T getValue(long j, TimeUnit timeUnit, T t) {
            if (!this.f14120b.get()) {
                try {
                    this.f14119a.await(j, timeUnit);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    return t;
                }
            }
            return this.f14121c;
        }
    }

    public static <T> void executeByCachedAtFixRate(Task<T> task, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i) {
        m8337f(m8341j(-2, i), task, j, j2, timeUnit);
    }

    public static <T> void executeByCpuAtFixRate(Task<T> task, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i) {
        m8337f(m8341j(-8, i), task, j, j2, timeUnit);
    }

    public static <T> void executeByFixedAtFixRate(@IntRange(from = 1) int i, Task<T> task, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i2) {
        m8337f(m8341j(i, i2), task, j, j2, timeUnit);
    }

    public static <T> void executeByIoAtFixRate(Task<T> task, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i) {
        m8337f(m8341j(-4, i), task, j, j2, timeUnit);
    }

    public static <T> void executeBySingleAtFixRate(Task<T> task, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, m281to = 10) int i) {
        m8337f(m8341j(-1, i), task, j, j2, timeUnit);
    }

    public static void cancel(List<Task> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (Task task : list) {
            if (task != null) {
                task.cancel();
            }
        }
    }

    public static void cancel(ExecutorService executorService) {
        if (executorService instanceof C1875d) {
            for (Map.Entry<Task, ExecutorService> entry : f14111c.entrySet()) {
                if (entry.getValue() == executorService) {
                    cancel(entry.getKey());
                }
            }
            return;
        }
        Log.e("ThreadUtils", "The executorService is not ThreadUtils's pool.");
    }
}
